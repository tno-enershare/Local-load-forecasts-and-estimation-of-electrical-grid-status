import pandas as pd
import numpy as np
from datetime import datetime as dt
from datetime import timedelta as td
import os
from urllib.parse import quote, unquote
from OpenDSS.ESDL_opendss_bd4nrg_module import DSS


class GridSimulator:
    # tmp_path = os.path.abspath("Grid_Simulator_ESDL_Temp/")
    tmp_path = "../Grid_Simulator_ESDL_Temp/"

    def __init__(self):
        self.fl_consumer_loads = self.read_fl_load_forecasts()

    def simulate(self):
        print('Initializing grid simulation parameters...')
        self.init_simulation()
        print('Initializing InfluxDB...')
        self.init_influxdb()

    def init_simulation(self):
        # main_resource = {'filename': 'ExampleEnergySystem_URL_Encoded.esdl'}
        # with(open('../ESDL_Files_GridSimulator/ExampleEnergySystem_URL_Encoded.esdl', 'r')) as f:
        #     main_resource['contents'] = quote(f.read())
        # main_resource_filename = 'ExampleEnergySystem_URL_Encoded.esdl'
        main_resource_filename = 'Dutch_Neighbourhood_10Households.esdl'
        with(open('../ESDL_Files_GridSimulator/Dutch_Neighbourhood_10Households.esdl', 'r')) as f:
            main_resource_contents = quote(f.read())
        # print(main_resource['contents'])

        # Write main res into file
        # main_resource_file_name = os.path.join(self.tmp_path, main_resource['filename'])
        main_resource_file_name = self.tmp_path + main_resource_filename

        print(f'Writing to {main_resource_file_name}')
        if os.path.exists(main_resource_file_name):
            os.remove(main_resource_file_name)
        with open(main_resource_file_name, 'w+') as f:
            f.write(unquote(main_resource_contents).replace("+", " "))
        # if os.path.exists(main_resource_file_name):
        #     os.remove(main_resource_file_name)
        # with open(main_resource_file_name, 'w+') as f:
        #     f.write(unquote(main_resource['contents']).replace("+", " "))

        # Create dss object with main ESDL resource
        # dss = DSS(os.path.join(self.tmp_path, main_resource['filename']))
        main_resource_file_name_absolute_path = os.path.abspath(main_resource_file_name)
        self.dss = DSS(path_esdl=main_resource_file_name_absolute_path)
        # Initialise Simulation with times
        self.dss.init_simulation()

    def init_influxdb(self):
        host = 'localhost'
        port = 8086
        database_name = 'opendss_db'
        measurement_name = 'dutch_sim_run_10_02_2020_1'

        if self.dss is None:
            print('Cannot process init_influxdb now as DSS is not initialised!')
        else:
            self.dss.init_influxdb(host, port, database_name, measurement_name)

    def start_simulation(self):
        sim_start = dt.strptime('Jan 1 2017  12:00AM', '%b %d %Y %I:%M%p').timestamp()
        # sim_end = sim_start + td(days=1).total_seconds()
        #TODO: Selma-> Change back to 365
        #sim_end = sim_start + td(days=365).total_seconds()
        sim_end = sim_start + td(days=1).total_seconds()
        time_step = td(minutes=15).total_seconds()
        time_stamp = sim_start

        counter = 0
        while time_stamp < sim_end:
            print('Timestep: ' + str(dt.fromtimestamp(time_stamp)))

            # Update the kW of Consumers
            self.set_kw_load(counter)
            # self.set_kvar_load(counter)

            counter = counter + 1

            # Power Flow Step Simulation
            self.step_simulation(time_stamp)
            time_stamp = time_stamp + time_step

    def step_simulation(self, time_step):
        if self.dss is None:
            print('Cannot process step_simulation now as DSS is not initialised!')
        else:
            self.dss.step_simulation(dt.utcfromtimestamp(time_step))

    def end_simulation(self):
        if self.dss is None:
            print('Cannot process step_simulation now as DSS is not initialised!')
        else:
            self.dss.end_simulation()
            # self.client.stop()

    def set_kw_load(self, counter):
        consumer_loads = []

        for c in self.fl_consumer_loads.columns:
            consumer_loads.append({
                'load_name': c,
                'load_in_kW': self.fl_consumer_loads[c][counter]
            })

        if self.dss is None:
            print('Cannot process set_kw_load now as DSS is not initialised!')
        else:
            for load in consumer_loads:
                if 'battery' in load['load_name']:
                    # self.dss.set_storage_charge(load['load_name'], round(load['load_in_kW'], 1))
                    self.dss.set_storage_charge(load['load_name'], load['load_in_kW'])
                else:
                    # self.dss.set_kw_load(load['load_name'], round(load['load_in_kW'], 1))
                    self.dss.set_kw_load(load['load_name'], load['load_in_kW'])

    def set_kvar_load(self, counter):
        # TODO: Implement if FL outputs reactive power as well
        return

    def read_fl_load_forecasts(self):
        # Reads the power at consumer nodes predicted by Federated Learning
        # fl_consumer_loads = pd.read_csv('../Federated_Learning_Forecasts/FL_Consumer_Loads.csv',
        #                                 sep=',', dtype=np.float64)
        fl_consumer_loads = pd.read_csv('../Federated_Learning_Forecasts/FL_Consumer_Loads_10Households_24h.csv',
                                        sep=',', dtype=np.float64)
        return fl_consumer_loads
