import asyncio
import threading

import pandas as pd
import numpy as np
from urllib.parse import quote
from datetime import datetime as dt
from datetime import timedelta as td

from NATSClient.nats_message import NATSMessage
from NATSClient.nats_publisher import NATSPublisherClient
from NATSClient.nats_subscriber import NATSSubscriberClient

sim_start = dt.strptime('Jan 1 2017  12:00AM', '%b %d %Y %I:%M%p').timestamp()
# sim_end = sim_start + td(days=1).total_seconds()
sim_end = sim_start + td(days=365).total_seconds()
time_step = td(minutes=15).total_seconds()
# Load_Users = pd.read_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\ESDL\test_loads.csv', sep= ';', dtype=np.float64)
# Load_Users = pd.read_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\ESDL\Load_Users.csv', sep= ';', dtype=np.float64)

# TODO: Selma -> Change to the file outputted by the local FL models
Load_Users = pd.read_csv(r'C:\Users\causevics\PycharmProjects\bd4nrg-opendss-module\Smart Meter Data\Load_Users_2.csv',
                         sep=',', dtype=np.float64)
# Loads_Users_kvar = pd.read_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\Smart Meter Data\Load_Users_2_kvar.csv',
#                          sep=',', dtype=np.float64)

# PV_Users = pd.read_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\Smart Meter Data\PV_Users_3.csv', sep= ';', dtype=np.float64)
# PV_Users = pd.read_csv(r'C:\Users\subramaniana\Projects\SEM\opendss-module\ESDL\test_gens.csv', sep= ';', dtype=np.float64)
# pv_profile = PV_Users.iloc(1)[1] * 0.004


async def init_simulation(np, subject):
    # {
    #     "cmd": "init_simulation",
    #     "params": {
    #         "main_resource": {
    #             "filename": "energy_system.esdl",
    #             "contents": "<URL encoded contents>"
    #         }
    #     }
    # }

    msg = NATSMessage('init_simulation')

    # main.dss replace by "esdlfilename"
    main_res = {'filename': 'ExampleEnergySystem_URL_Encoded.esdl'}
    # main_res = {'filename': 'main.dss'}
    # main.dss replace by esdlfilename
    # open(esdl file path + filename.esdl)
    with(open('../ESDL_Files_GridSimulator/ExampleEnergySystem_URL_Encoded.esdl', 'r')) as f:
    #with(open('../DSSFiles_Dutch/DutchFeeder.dss', 'r')) as f:
        main_res['contents'] = quote(f.read())
    msg.add_params('main_resource', main_res)

    # sup_res_gen = {}
    # with(open('../DSSFiles_Dutch/DutchFeederGenerators.dss', 'r')) as f:
    #     sup_res_gen['filename'] = 'DutchFeederGenerators.dss'
    #     sup_res_gen['relative_path'] = '.'
    #     sup_res_gen['contents'] = quote(f.read())
    #
    # sup_res_line_codes = {}
    # with(open('../DSSFiles_Dutch/DutchFeederLineCodes.dss', 'r')) as f:
    #     sup_res_line_codes['filename'] = 'DutchFeederLineCodes.dss'
    #     sup_res_line_codes['relative_path'] = '.'
    #     sup_res_line_codes['contents'] = quote(f.read())
    #
    # sup_res_lines = {}
    # with(open('../DSSFiles_Dutch/DutchFeederLines.dss', 'r')) as f:
    #     sup_res_lines['filename'] = 'DutchFeederLines.dss'
    #     sup_res_lines['relative_path'] = '.'
    #     sup_res_lines['contents'] = quote(f.read())
    #
    # sup_res_loads = {}
    # with(open('../DSSFiles_Dutch/DutchFeederLoads.dss', 'r')) as f:
    #     sup_res_loads['filename'] = 'DutchFeederLoads.dss'
    #     sup_res_loads['relative_path'] = '.'
    #     sup_res_loads['contents'] = quote(f.read())

    # msg.add_params('supporting_resources', [sup_res_gen, sup_res_line_codes, sup_res_lines, sup_res_loads])
    # msg.add_params('simulation_time', {'start_time': sim_start, 'end_time': sim_end, 'time_step': time_step})

    await np.publish(subject, msg)
    print('Done publishing message!')


async def init_influxdb(np, subject):
    msg = NATSMessage('init_influxdb')
    msg.add_params('host', 'localhost')
    msg.add_params('port', 8086)
    msg.add_params('database_name', 'opendss_db')
    msg.add_params('measurement_name', 'dutch_sim_run_10_02_2020_1')

    await np.publish(subject, msg)
    print('Done publishing message!')


async def init_nats(np, host, port, subject):
    msg = NATSMessage('init_nats')
    msg.add_params('host', host)
    msg.add_params('port', port)

    await np.publish(subject, msg)
    print('Done publishing message!')


async def set_kw_load(np, subject, ctr):
    msg = NATSMessage('set_kw_load')
    loads = []
    for c in Load_Users.columns:
        loads.append({
            'load_name': c,
            'load_in_kW': Load_Users[c][ctr]
        })
    msg.add_params('loads', loads)
    await np.publish(subject, msg)
    print('Done publishing set_load_kw message!')


# Change Loads_Users to Loads_Users_kvar
async def set_kvar_load(np, subject, ctr):
    msg = NATSMessage('set_kvar_load')
    loads = []
    for c in Load_Users.columns:
        loads.append({
            'load_name': c,
            'load_in_kvar': Load_Users[c][ctr]
        })
    msg.add_params('loads', loads)
    await np.publish(subject, msg)
    print('Done publishing set_kvar_load message!')


# async def set_kw_gen(np, subject, ctr):
#     msg = NATSMessage('set_kw_gen')
#     gens = []
#     for c in PV_Users.columns:
#         gens.append({
#             'gen_name': c,
#             'gen_in_kW': PV_Users[c][ctr] * 0.04
#         })
#     msg.add_params('gens', gens)
#     await np.publish(subject, msg)
#     print('Done publishing set_gen_kw message!')


async def step_simulation(np, subject, time_stamp):
    msg = NATSMessage('step_simulation')
    msg.add_params('time_step', time_stamp)
    await np.publish(subject, msg)
    print('Done publishing step_simulation message!')


if __name__ == '__main__':
    host = "localhost"
    port = 4222
    subject = "opendss.control"

    loop = asyncio.new_event_loop()
    #np = NATSPublisherClient(loop, host, port)
    np = NATSPublisherClient(host, port)

    print('Initialising Simulation!')
    loop.run_until_complete(init_simulation(np, subject))
    print('Initialising InfluxDB!')
    loop.run_until_complete(init_influxdb(np, subject))
    # print('Initialising NATS!')
    # loop.run_until_complete(init_nats(np, host, port, subject))

    time_stamp = sim_start

    ctr = 0
    while time_stamp < sim_end:
        print('Timestep: ' + str(dt.fromtimestamp(time_stamp)))

        # Update the kW of Users
        loop.run_until_complete(set_kw_load(np, subject, ctr))
        loop.run_until_complete(set_kvar_load(np, subject, ctr))
        # # Update the kW of PV Users
        # loop.run_until_complete(set_kw_gen(np, subject, ctr))

        ctr = ctr + 1

        # Power Flow Step Simulation
        loop.run_until_complete(step_simulation(np, subject, time_stamp))
        time_stamp = time_stamp + time_step

    print('Done!')
    loop.run_forever()
