import json
import os
from datetime import datetime as dt
from urllib.parse import unquote

import jsonschema

from NATSClient.nats_subscriber import NATSSubscriberClient
from OpenDSS.ESDL_opendss_module import DSS


# def print(msg):
#     pass


class CommandProcessor:
    tmp_path = os.path.abspath("tmp/")

    def __init__(self):
        self.client = None

    def set_subscriber_client(self, client: NATSSubscriberClient):
        self.client = client

    def process_parallel(self, command):
        try:
            if command.cmd == 'init_simulation':
                # {
                #     "cmd": "init_simulation",
                #     "params": {
                #         "main_resource": {
                #             "filename": "energy_system.esdl",
                #             "contents": "<URL encoded contents>"
                #         }
                #     }
                # }

                params = command.params

                # Write main res into file
                main_resource = params['main_resource']
                main_resource_file_name = os.path.join(self.tmp_path, main_resource['filename'])
                print(f'Writing to {main_resource_file_name}')
                if os.path.exists(main_resource_file_name):
                    os.remove(main_resource_file_name)
                with open(main_resource_file_name, 'w+') as f:
                    f.write(unquote(main_resource['contents']).replace("+", " "))

                # Create dss object with main ESDL resource
                # dss = DSS(os.path.join(self.tmp_path, main_resource['filename']))
                self.dss = DSS(path_esdl=main_resource_file_name)

                # Initialise Simulation with times
                self.dss.init_simulation()

            elif command.cmd == 'init_influxdb':
                # {
                #     "cmd": "init_influxdb",
                #     "params": {
                #         "host": "hostname",
                #         "port": 8086,
                #         "database_name": "dbName",
                #         "measurement_name": "measurementName"
                #     }
                # }
                params = command.params

                if self.dss is None:
                    print('Cannot process init_influxdb now as DSS is not initialised!')
                else:
                    self.dss.init_influxdb(params['host'], params['port'], params['database_name'],
                                           params['measurement_name'])
            # Not necessary
            elif command.cmd == 'init_nats':
                # {
                #     "cmd": "init_nats",
                #     "params": {
                #         "host": "localhost",
                #         "port": 4222
                #     }
                # }
                params = command.params

                if self.dss is None:
                    print('Cannot process init_nats now as DSS is not initialised!')
                else:
                    self.dss.init_nats(params['host'], params['port'])

            elif command.cmd == 'set_kw_load':
                # {
                #     "cmd": "set_kw_load",
                #     "params": {
                #         "loads": [
                #             {
                #                 "load_name": "name_of_load",
                #                 "load_in_kW": 123.45
                #             }
                #         ]
                #     }
                # }
                params = command.params

                if self.dss is None:
                    print('Cannot process set_kw_load now as DSS is not initialised!')
                else:
                    for load in params['loads']:
                        if 'battery' in load['load_name']:
                            # self.dss.set_storage_charge(load['load_name'], round(load['load_in_kW'], 1))
                            self.dss.set_storage_charge(load['load_name'], load['load_in_kW'])
                        else:
                            # self.dss.set_kw_load(load['load_name'], round(load['load_in_kW'], 1))
                            self.dss.set_kw_load(load['load_name'], load['load_in_kW'])

            elif command.cmd == 'set_kvar_load':
                # {
                #     "cmd": "set_kvar_load",
                #     "params": {
                #         "loads": [
                #             {
                #                 "load_name": "name_of_load",
                #                 "load_in_kvar": 123.45
                #             }
                #         ]
                #     }
                # }
                params = command.params

                if self.dss is None:
                    print('Cannot process set_kvar_load now as DSS is not initialised!')
                else:
                    for load in params['loads']:
                        # self.dss.set_kw_load(load['load_name'], round(load['load_in_kW'], 1))
                        self.dss.set_kvar_load(load['load_name'], load['load_in_kvar'])

            elif command.cmd == 'set_kw_gen':
                # {
                #     "cmd": "set_kw_gen",
                #     "params": {
                #         "gens": [
                #             {
                #                 "gen_name": "name_of_gen",
                #                 "gen_in_kW": 123.45
                #             }
                #         ]
                #     }
                # }
                params = command.params

                if self.dss is None:
                    print('Cannot process set_kw_gen now as DSS is not initialised!')
                else:
                    for gen in params['gens']:
                        if 'battery' in gen['gen_name']:
                            self.dss.set_storage_discharge(gen['gen_name'], gen['gen_in_kW'])
                        else:
                            self.dss.set_kw_Gen(gen['gen_name'], gen['gen_in_kW'])

            elif command.cmd == 'step_simulation':
                # {
                #     "cmd": "step_simulation",
                #     "params": {
                #         "time_step": 123456.78
                #     }
                # }
                params = command.params

                if self.dss is None:
                    print('Cannot process step_simulation now as DSS is not initialised!')
                else:
                    self.dss.step_simulation(dt.utcfromtimestamp(params['time_step']))

            elif command.cmd == 'end_simulation':
                # {
                #     "cmd": "end_simulation"
                # }

                if self.dss is None:
                    print('Cannot process step_simulation now as DSS is not initialised!')
                else:
                    self.dss.end_simulation()
                    # self.client.stop()

            else:
                print('Unknown Command {cmd}'.format(cmd=command.serialize_message()))
        except jsonschema.exceptions.ValidationError as e:
            print("well-formed but invalid command: {error} \n Received Command: {cmd}".format(error=e.message,
                                                                                               cmd=command.serialize()))
        except json.decoder.JSONDecodeError as e:
            print("poorly-formed command, not JSON: {error} \n Received Command: {cmd}".format(error=e.msg,
                                                                                               cmd=command.serialize()))

    def process_command(self, command):
        self.process_parallel(command)
        # t = threading.Thread(self.process_parallel(command))
        # t.start()
