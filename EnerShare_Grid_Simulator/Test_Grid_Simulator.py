import os

from BD4NRG_Grid_Simulator.Grid_Simulator import GridSimulator
import time

from BD4NRG_Grid_Simulator.Pilot import Pilot

if __name__ == '__main__':

    pilot_name = Pilot.Italy

    esdl_file = "../Grid_Simulator_ESDL_Temp/"

    load_forecasts = ""
    pv_forecasts = ""

    if pilot_name == Pilot.Slovenia:
        load_forecasts = '../Federated_Learning_Forecasts/Pilots_2024/Slovenia/Slovenia_Consumers_15min_2021_2022_Anonymized_Formatted.csv'
        pv_forecasts = '../Federated_Learning_Forecasts/Pilots_2024/Slovenia/Slovenia_PVUsers_15min_2021_2022_Anonymized_Formatted.csv'
    elif pilot_name == Pilot.Italy:
        load_forecasts = '../Federated_Learning_Forecasts/Pilots_2024/Italy/Italy_Pilot_15min_2022_2023_Anonymized_Formatted.csv'
    else:
        print('Incorrect pilot name.')

    grid_simulator = GridSimulator(esdl_file, load_forecasts, pv_forecasts, pilot_name)

    grid_simulator.init_simulation()

    grid_simulator.init_influxdb()

    tic = time.perf_counter()

    grid_simulator.start_simulation()

    toc = time.perf_counter()
    print(f"Finished calculating grid state in {toc - tic:0.4f} seconds")

    grid_simulator.end_simulation()

    print('Done!')
