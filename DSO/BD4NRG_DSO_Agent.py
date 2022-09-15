import json
import threading
import pandas as pd

from NATSClient.nats_publisher import NATSPublisherClient

VOLTAGE_THRESHOLD_MIN = 0.9
VOLTAGE_THRESHOLD_MAX = 1.1
# AGGREGATOR_CONTROL_SUBJECT = 'aggregator.control'
# NATS_HOST = 'localhost'
# NATS_PORT = 4222
# OVERLOAD_THRESHOLD = 1.0
OVERLOAD_THRESHOLD = 1.5
# RATED_CAPACITY_TRANSFORMER = 15.0
# TODO:Selma-> For testing purposes only
RATED_CAPACITY_TRANSFORMER = 1.0


class DSOAgent:
    def __init__(self):
        self.dfs = {}
        # self.np = NATSPublisherClient(NATS_HOST, NATS_PORT)
        self.lock = threading.Lock()

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

    def calculate_OLD(self, timestamp):
        # ov = False
        # uv = False
        # t = pd.Timestamp(timestamp)

        message = {}
        for user_id, df in self.dfs.items():
            message[user_id] = "Normal"
        #     if df['voltage'][t] < VOLTAGE_THRESHOLD_MIN:
        #         uv = True
        #         message[user_id] = 'Undervoltage'
        #     elif df['voltage'][t] > VOLTAGE_THRESHOLD_MAX:
        #         ov = True
        #         message[user_id] = 'Overvoltage'
        #
        # print('Overvoltage exists: {}'.format(ov))
        # print('Undervoltage exists: {}'.format(uv))
        # self.np.publish(AGGREGATOR_CONTROL_SUBJECT, json.dumps(message).encode('utf-8'))
        # print('Publishing to aggregator...')
        self.dfs = {}

    def calculate(self, timestamp):
        t = pd.Timestamp(timestamp)

        message = {}

        transformer_overloaded = False

        for user_id, df in self.dfs.items():
            message[user_id] = False
            transformer_load = abs(df['kW_output'][t]) / RATED_CAPACITY_TRANSFORMER
            # if (abs(df['kW_output'][t]) / RATED_CAPACITY_TRANSFORMER) > OVERLOAD_THRESHOLD:
            if transformer_load > OVERLOAD_THRESHOLD:
                message[user_id] = True
                transformer_overloaded = True

        # self.np.publish(AGGREGATOR_CONTROL_SUBJECT, json.dumps(message).encode('utf-8'))
        if transformer_overloaded:
            print('Transformer is overloaded')
        else:
            print('Transformer is not overloaded')
        self.dfs = {}

    def end_simulation(self):
        print('DSO: End of Simulation. Writing CSVs')

        # if self.load_dfs:
        #     for id, df in self.load_dfs.items():
        #         df.to_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\tmp\csv\load\{}.csv'.format(id), index=True)
        # if self.gen_dfs:
        #     for id, df in self.gen_dfs.items():
        #         df.to_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\tmp\csv\gen\{}.csv'.format(id), index=True)

        print('DSO: Done!')
