from BD4NRG_Grid_Simulator.Grid_Simulator import GridSimulator

if __name__ == '__main__':

    grid_simulator = GridSimulator()

    grid_simulator.init_simulation()

    grid_simulator.init_influxdb()

    grid_simulator.start_simulation()

    grid_simulator.end_simulation()

    print('Done!')

