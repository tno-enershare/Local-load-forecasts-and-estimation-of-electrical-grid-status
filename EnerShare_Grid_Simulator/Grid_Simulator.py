import os

import pandas as pd
import numpy as np
from datetime import datetime as dt
from datetime import timedelta as td
from urllib.parse import quote, unquote

from EnerShare_Grid_Simulator.Pilot import Pilot
from OpenDSS.ESDL_opendss_EnerShare_module import DSS


class GridSimulator:

    def __init__(self, esdl_file, load_forecasts, pv_forecasts, pilot_name):
        self.tmp_path = esdl_file
        self.fl_consumer_loads = self.read_fl_load_forecasts(load_forecasts)

        self.pv_generation = None

        if pv_forecasts != "":
            self.pv_generation = self.read_pv_gens(pv_forecasts)
        self.pilot_name = pilot_name

    def simulate(self):
        print('Initializing grid simulation parameters...')
        self.init_simulation()
        print('Initializing InfluxDB...')
        self.init_influxdb()

    def init_simulation(self):

        main_resource_filename = ""
        main_resource_filepath = ""

        if self.pilot_name == Pilot.Italy:
            main_resource_filename = 'Italian_Pilot_2024_v1.esdl'
            main_resource_filepath = '../ESDL_Files_GridSimulator/Pilots_2024/Italian_Pilot_2024_v1.esdl'
        elif self.pilot_name == Pilot.Slovenia:
            main_resource_filename = 'Slovenian_Pilot_2024_v1.esdl'
            main_resource_filepath = '../ESDL_Files_GridSimulator/Pilots_2024/Slovenian_Pilot_2024_v1.esdl'
        else:
            print('Incorrect pilot name.')

        with(open(main_resource_filepath, 'r')) as f:
            main_resource_contents = quote(f.read())

        main_resource_file_name = self.tmp_path + main_resource_filename

        print(f'Writing to {main_resource_file_name}')

        if os.path.exists(main_resource_file_name):
            os.remove(main_resource_file_name)
        with open(main_resource_file_name, 'w+') as f:
            f.write(unquote(main_resource_contents).replace("+", " "))

        main_resource_file_name_absolute_path = os.path.abspath(main_resource_file_name)
        self.dss = DSS(path_esdl=main_resource_file_name_absolute_path, pilot_name=self.pilot_name)
        # Initialise Simulation with times
        self.dss.init_simulation()

    def init_influxdb(self):
        host = 'localhost'
        port = 8086
        database_name = 'opendss_db'
        measurement_name = ""

        if self.pilot_name == Pilot.Italy:
            measurement_name = 'italian_sim_run_30062022'
        elif self.pilot_name == Pilot.Slovenia:
            measurement_name = 'slovenian_sim_run_01012021'
        else:
            print('Incorrect pilot name.')

        if self.dss is None:
            print('Cannot process init_influxdb now as DSS is not initialised!')
        else:
            self.dss.init_influxdb(host, port, database_name, measurement_name)

    def start_simulation(self):
        sim_start = ""

        if self.pilot_name == Pilot.Italy:
            sim_start = dt.strptime('Jun 30 2022  12:15AM', '%b %d %Y %I:%M%p').timestamp()
        elif self.pilot_name == Pilot.Slovenia:
            sim_start = dt.strptime('Jan 1 2021  12:15AM', '%b %d %Y %I:%M%p').timestamp()
        else:
            print('Incorrect pilot name.')

        sim_end = sim_start + td(days=1).total_seconds()
        time_step = td(minutes=15).total_seconds()
        time_stamp = sim_start

        counter = 0
        while time_stamp < sim_end:
            # Update the kW of Consumers
            self.set_kw_load(counter)

            if self.pv_generation is not None:
                self.set_kw_gen(counter)

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

    def set_kw_gen(self, counter):
        pv_gens = []

        for g in self.pv_generation.columns:
            pv_gens.append({
                'gen_name': g,
                'gen_in_kW': self.pv_generation[g][counter]
            })

        if self.dss is None:
            print('Cannot process set_kw_Gen now as DSS is not initialised!')
        else:
            for pv_gen in pv_gens:
                if 'battery' in pv_gen['gen_name']:
                    # self.dss.set_storage_charge(load['load_name'], round(load['load_in_kW'], 1))
                    self.dss.set_storage_discharge(pv_gen['gen_name'], pv_gen['gen_in_kW'])
                else:
                    # self.dss.set_kw_load(load['load_name'], round(load['load_in_kW'], 1))
                    self.dss.set_kw_Gen(pv_gen['gen_name'], pv_gen['gen_in_kW'])

    def set_kvar_load(self, counter):
        # TODO: Implement if FL outputs reactive power as well
        return

    def read_fl_load_forecasts(self, load_forecasts):
        # Reads the power at consumer nodes predicted by Federated Learning
        fl_consumer_loads = pd.read_csv(load_forecasts,
                                        sep=',', dtype=np.float64)

        return fl_consumer_loads

    def read_pv_gens(self, pv_forecasts):
        pv_generation = pd.read_csv(pv_forecasts,
                                    sep=',', dtype=np.float64)

        return pv_generation
