import os

from BD4NRG_Grid_Simulator.Grid_Simulator import GridSimulator
import time

if __name__ == '__main__':
    esdl_file = "../Grid_Simulator_ESDL_Temp/"
    load_forecasts = '../Federated_Learning_Forecasts/Pilots_2024/Slovenia/Slovenia_Consumers_15min_2021_2022_Anonymized_Formatted.csv'
    pv_forecasts = '../Federated_Learning_Forecasts/Pilots_2024/Slovenia/Slovenia_PVUsers_15min_2021_2022_Anonymized_Formatted.csv'
    grid_simulator = GridSimulator(esdl_file, load_forecasts, pv_forecasts)

    grid_simulator.init_simulation()

    grid_simulator.init_influxdb()

    tic = time.perf_counter()

    grid_simulator.start_simulation()

    toc = time.perf_counter()
    print(f"Finished calculating grid state in {toc - tic:0.4f} seconds")

    grid_simulator.end_simulation()

    print('Done!')
