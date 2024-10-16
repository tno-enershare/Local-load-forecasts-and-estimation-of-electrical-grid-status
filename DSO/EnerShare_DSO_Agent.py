import os
import threading
import pandas as pd

from EnerShare_Grid_Simulator.Pilot import Pilot

class DSOAgent:
    def __init__(self, pilot_name):
        self.dfs = {}
        self.lock = threading.Lock()

        # Dataframe to write the results to CSV
        self.transformer_loads = pd.DataFrame()
        self.timestamp = []
        self.transformer_total_load = []
        self.transformer_load_over_capacity = []
        self.transformer_overloaded = []
        self.overload_threshold = []
        self.pilot_name = pilot_name

    def process_command(self, command):
        self.process_message(command)

    def process_message_OLD(self, command):
        for j in command:
            user_id = j['tags']['id'].lower()
            # SEM uncomment following
            if 'demand' in user_id:
                continue
            #########################
            kw = j['fields']['kW']
            if user_id not in self.dfs:
                self.dfs[user_id] = pd.DataFrame(
                    columns=['kW', 'voltage'],
                    index=pd.to_datetime([]))

            self.dfs[user_id].loc[pd.Timestamp(j['time'])] = pd.Series(
                {'kW': kw, 'voltage': j['fields']['Voltage']})
        print('DSO: Done processing DFs')

    def process_message(self, command):
        for j in command:
            asset_class = j['tags']['assetClass'].lower()
            user_id = j['tags']['id'].lower()

            # if 'transformer' not in asset_class or 'line' not in asset_class:
            if 'transformer' not in asset_class:
                continue
            #########################
            kw_output = j['fields']['kW_SE']
            if user_id not in self.dfs:
                self.dfs[user_id] = pd.DataFrame(
                    columns=['kW_output'],
                    index=pd.to_datetime([]))

            self.dfs[user_id].loc[pd.Timestamp(j['time'])] = pd.Series(
                {'kW_output': kw_output})
        print('DSO: Done processing DFs')

    def calculate(self, timestamp):
        t = pd.Timestamp(timestamp)

        message = {}

        transformer_overloaded = False

        OVERLOAD_THRESHOLD = 0.0
        RATED_CAPACITY_TRANSFORMER = 0.0

        if self.pilot_name == Pilot.Italy:
            OVERLOAD_THRESHOLD = 1.0
            RATED_CAPACITY_TRANSFORMER = 160.0
        elif self.pilot_name == Pilot.Slovenia:
            OVERLOAD_THRESHOLD = 1.0
            RATED_CAPACITY_TRANSFORMER = 250.0
        else:
            print('Incorrect pilot name.')


        for user_id, df in self.dfs.items():
            message[user_id] = False
            transformer_total_load = abs(df['kW_output'][t])
            transformer_load_over_capacity = abs(df['kW_output'][t]) / RATED_CAPACITY_TRANSFORMER

            # TODO: Write  abs(df['kW_output'][t]) to CSV, that is the aggregate load of the network
            # if (abs(df['kW_output'][t]) / RATED_CAPACITY_TRANSFORMER) > OVERLOAD_THRESHOLD:
            if transformer_load_over_capacity > OVERLOAD_THRESHOLD:
                message[user_id] = True
                transformer_overloaded = True

            self.timestamp.append(str(t))
            self.transformer_total_load.append(str(transformer_total_load))
            self.transformer_load_over_capacity.append(str(transformer_load_over_capacity))
            self.transformer_overloaded.append(str(transformer_overloaded))
            self.overload_threshold.append(str(OVERLOAD_THRESHOLD))

        # self.np.publish(AGGREGATOR_CONTROL_SUBJECT, json.dumps(message).encode('utf-8'))
        if transformer_overloaded:
            print('Transformer is overloaded')
        else:
            print('Transformer is not overloaded')
        self.dfs = {}

    def end_simulation(self):
        print('DSO: End of Simulation. Writing CSVs')

        self.transformer_loads["timestamp"] = self.timestamp
        self.transformer_loads["transformer_total_load"] = self.transformer_total_load
        self.transformer_loads["transformer_load_over_capacity"] = self.transformer_load_over_capacity
        self.transformer_loads["transformer_overloaded"] = self.transformer_overloaded
        self.transformer_loads["overload_threshold"] = self.overload_threshold

        filename = ''

        if self.pilot_name == Pilot.Italy:
            filename = 'transformer_overloads_italy.csv'
        elif self.pilot_name == Pilot.Slovenia:
            filename = 'transformer_overloads_slovenia.csv'
        else:
            print('Incorrect pilot name.')

        self.transformer_loads.to_csv(filename,
                                      index=False,
                                      sep=';')
        print('DSO: Done!')
        return self.transformer_loads
