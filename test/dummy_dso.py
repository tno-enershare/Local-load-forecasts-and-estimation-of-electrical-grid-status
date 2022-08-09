import asyncio
import multiprocessing
import threading
import time
from concurrent.futures.thread import ThreadPoolExecutor

import pandas as pd
import numpy as np
from apscheduler.schedulers.background import BackgroundScheduler

from NATSClient.nats_subscriber import NATSSubscriberClient


class OutputProcessor:
    def __init__(self):
        self.dfs = {}
        self.run = True
        self.executor = ThreadPoolExecutor(multiprocessing.cpu_count())
        self.lock = threading.Lock()

    def process_command(self, command):
        print('Received output: {}'.format(command))
        if self.run:
            self.executor.submit(self.process_message, command)

    def process_message(self, command):
        for j in command:
            id = j['tags']['id']
            if id.__contains__('USER4'):
                if id not in self.dfs:
                    self.dfs[id] = pd.DataFrame(
                        columns=['kW_load', 'kW_gen', 'voltage', 'gamma', 'beta', 'beta_p', 'delta_p', 'kW_pred', 'volt_pred'],
                        index=pd.to_datetime([]))
                with self.lock:
                    gen = 0
                    load = 0
                    if 'gen_kW' in j['fields']:
                        gen = j['fields']['gen_kW']
                    if 'load_kW' in j['fields']:
                        load = j['fields']['load_kW']
                    self.dfs[id].loc[pd.Timestamp(j['time'])] = pd.Series(
                        {'kW_load': load, 'kW_gen': gen, 'voltage': j['fields']['Voltage']})
                # if pd.Timestamp(j['time']) >= pd.Timestamp(2017, 12, 31, 23, 45, 0):
                #     self.finish()

    def calc_beta(self, df):
        self.run = False
        v_thresh = 1.04
        for i in np.arange(len(df) - 1):
            d = df[i:i + 2]
            top = d.tail(1)
            beta = d.tail(2)['voltage'].diff()
            top['beta'] = beta
            top['volt_pred'] = 2 * beta + d.tail(2)['voltage'][0]
            beta_p = d.tail(2)['kW'].diff()
            top['beta_p'] = beta_p
            top['kW_pred'] = 2 * beta_p + d.tail(2)['kW'][0]
            gamma = abs(beta / beta_p)
            top['gamma'] = gamma
            top['delta_p'] = (v_thresh - top['volt_pred']) / gamma

    def calc_gamma(self, df):
        pass

    def finish(self):
        print('Going to make csv now...')
        # self.calc_beta(self.dfs['USER1EDEMAND'])
        # print(self.dfs['USER1EDEMAND'])
        # with self.lock:
        #     if self.dfs:
        #         if 'USER4EDEMAND' in self.dfs:
        #             self.dfs['USER4EDEMAND'].to_csv(
        #                 r'C:\Users\subramaniana\Projects\SEM\opendss-module\Smart Meter Data\beta_calc_for_load_multipv.csv', index=True)
        #         if 'USER4PVPANEL' in self.dfs:
        #             self.dfs['USER4PVPANEL'].to_csv(
        #                 r'C:\Users\subramaniana\Projects\SEM\opendss-module\Smart Meter Data\beta_calc_for_pv_multipv.csv', index=True)


if __name__ == '__main__':
    host = 'localhost'
    port = 4222
    subject = 'opendss.output'

    # Create Command Processor module
    cmd_processor = OutputProcessor()

    # threading.Thread(target=cmd_processor.finish).start()
    sched = BackgroundScheduler(daemon=True)
    sched.add_job(cmd_processor.finish, 'interval', seconds=120)
    sched.start()

    # Create the NATS Subscriber
    loop = asyncio.new_event_loop()
    ns = NATSSubscriberClient(loop, host, port, subject, 'JSON', cmd_processor)
    loop.run_forever()
