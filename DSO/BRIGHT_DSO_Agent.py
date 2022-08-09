####################
# OBSOLETE For now
####################
import json
import threading
import pandas as pd

from NATSClient.nats_publisher import NATSPublisherClient

OVERLOAD_THRESHOLD = 1.0
RATED_CAPACITY_TRANSFORMER = 15.0
AGGREGATOR_CONTROL_SUBJECT = 'aggregator.control'
NATS_HOST = 'localhost'
NATS_PORT = 4222


class DSOAgent:
    def __init__(self):
        self.dfs = {}
        self.np = NATSPublisherClient(NATS_HOST, NATS_PORT)
        self.lock = threading.Lock()

    def process_command(self, command):
        self.process_message(command)

    def process_message(self, command):
        for j in command:
            asset_class = j['tags']['assetClass'].lower()
            user_id = j['tags']['id'].lower()

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
        for user_id, df in self.dfs.items():
            message[user_id] = False
            if (abs(df['kW_output'][t]) / RATED_CAPACITY_TRANSFORMER) > OVERLOAD_THRESHOLD:
                message[user_id] = True

        self.np.publish(AGGREGATOR_CONTROL_SUBJECT, json.dumps(message).encode('utf-8'))
        print('Publishing to aggregator...')
        self.dfs = {}

    def end_simulation(self):
        print('DSO: End of Simulation. Writing CSVs')

        for user_id, df in self.dfs.items():
            df.to_csv(r'C:\Users\causevics\git\bright-essim\opendss-module\tmp\{}.csv'.format(user_id), index=True)

        print('DSO: Done!')
