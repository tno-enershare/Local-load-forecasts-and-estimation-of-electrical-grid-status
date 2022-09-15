import math  # importing math package to use math funtions
import os  # Importing OS functions
import re
from copy import deepcopy

import win32com.client  # importing Wincom client to call OpenDSS
from influxdb import InfluxDBClient  # Calling the InflixDB Client

from DSO.BD4NRG_DSO_Agent import DSOAgent
import esdl

from ESDL.EcoreResource import EcoreResource
from NATSClient.nats_publisher import NATSPublisherClient

eps = 1e-3


def make_last(datapoints):
    dps = deepcopy(datapoints)
    for dp in dps:
        if 'tags' in dp:
            if 'ctr' in dp['tags']:
                dp['tags']['ctr'] = 'actual'

    return dps


class DSS:
    def __init__(self, path_main_dss=None, path_esdl=None):
        # Create the connection between Python and OpenDSS
        self.dssObj = win32com.client.Dispatch("OpenDSSEngine.DSS")

        self.dsoAgent = DSOAgent()

        # Create an DSS circuit
        if not self.dssObj.Start(0):
            print('Problem to Execute OpenDSS')
        else:
            # Create the variables for the main interfaces 
            self.dssText = self.dssObj.Text
            self.dssCircuit = self.dssObj.ActiveCircuit
            self.dssSolution = self.dssCircuit.Solution
            self.dssCktElement = self.dssCircuit.ActiveCktElement
            self.dssBus = self.dssCircuit.ActiveBus
            self.dssLines = self.dssCircuit.Lines
            self.dssLoads = self.dssCircuit.Loads
            self.dssGenerators = self.dssCircuit.Generators
            self.dssMonitors = self.dssCircuit.Monitors

        if path_main_dss is not None:
            self.init_dss_input(path_main_dss)
        elif path_esdl is not None:
            self.init_esdl_input(path_esdl)
            self.path_DSS_model = None

    def init_esdl_input(self, path_esdl):
        res = EcoreResource(path_esdl)
        es = res.get_resource_contents()

        # Clear all the circuits
        self.dssObj.ClearAll()

        # Create the circuit object
        self.command_DSS('New object=circuit.{name} basekv=11 pu=1.05 isc3=3000 isc1=5'.format(name=es.name))

        # Create the LineCode objects
        self.command_DSS(
            'New  LineCode.GPLKh_4_50_Cusvm_4_6 		nphases=1	r1=0.3870	x1=0.0720	r0=1.3000	x0=0.1900	c1=0.6100	c0=0.3700	Units=km')
        self.command_DSS(
            'New  LineCode.GPLKh_4_25_Curm_4_2p5 	nphases=1	r1=0.7260	x1=0.0760	r0=2.3800	x0=0.2100	c1=0.4700	c0=0.2800	Units=km')
        self.command_DSS(
            'New  LineCode.GPLKh_4_6_Curm_4_2p5 		nphases=1	r1=3.0610	x1=0.1000	r0=7.8200	x0=0.1800	c1=0.2000	c0=0.1200	Units=km')
        self.command_DSS(
            'New  LineCode.GPLKh_4_10_Curm_4_2p5 	nphases=1	r1=1.8370	x1=0.0880	r0=5.2200	x0=0.1900	c1=0.2770	c0=0.1700	Units=km')

        self.charge_rates = {}

        for a in es.instance[0].area.asset:
            self.process_esdl_asset(a)

        # Simulation Mode
        self.dssText.Command = "Set mode=snapshot"
        self.dssText.Command = "Set controlmode=static"

        # Create the DSS files
        self.command_DSS('Save Circuit dir="{}\\{}"'.format(os.getcwd(), es.name))

    def process_esdl_asset(self, a):
        if isinstance(a, esdl.Building):
            for b_a in a.asset:
                self.process_esdl_asset(b_a)

        # Create the Transformer objects
        if isinstance(a, esdl.Transformer):
            self.command_DSS(
                # Primary transformer side : wdg=1 bus=sourcebus conn=delta kv=11 (Primary-side voltage)   kva={kva} (Rating, capacity value in ESDL)
                # Secondary side: wdg=2 bus=1 conn=wye kv=0.416  kva={kva}
                'New Transformer.{name} Phases=3 Windings=2 Xhl=4 %r=0.4 wdg=1 bus=sourcebus conn=delta kv=11   kva={kva}   wdg=2 bus=1 conn=wye kv=0.416  kva={kva}'.format(
                    name=a.name, kva=a.capacity / 1000))

        # Create the Line objects
        if isinstance(a, esdl.ElectricityCable):
            for port in a.port:
                if isinstance(port, esdl.InPort):
                    busFrom = port.connectedTo[0].energyasset
                else:
                    busTo = port.connectedTo[0].energyasset
            length = a.length
            linecode = a.assetType
            # print(a.name + ' is connected from ' + busFrom.name + ' to ' + busTo.name + ' : length=' + str(
            #    length) + '; linecode=' + linecode)
            # LineCode: From assetType (e.g. gplkh_4_50_cusvm_4_6)
            command = 'New Line.' + a.name + ' Phases=1 Bus1=' + busFrom.name.split('Bus')[1] + '.1 Bus2=' + \
                      busTo.name.split('Bus')[1] + '.1 LineCode=' + linecode + ' Length=' + str(length) + ' Units=m'
            self.command_DSS(command)

        # Create the Base Load objects
        if isinstance(a, esdl.ElectricityDemand):
            for port in a.port:
                if isinstance(port, esdl.InPort):
                    busUser = port.connectedTo[0].energyasset
                    portName = port.name
            bus = busUser.name.split('Bus')[1]
            r = re.match('.*Phase(\d+)In', portName)
            if r is not None:
                phase = r.groups()[0]
            else:
                phase = '1'
            # print(a.name + ' is connected to phase ' + phase)
            # command = 'New  Load.{name}	Bus1={bus}.{phase} Phases=1 Conn=wye Model=1 kV=0.230 kW=100 PF=1.0 Vmaxpu=1.5 Vminpu=0.60'.format(
            #     name=a.name, phase=phase, bus=bus)
            command = 'New  Load.' + a.name + ' Bus1=' + bus + '.' + phase + ' Phases=1 Conn=wye Model=1 kV=0.230 kW=100 PF=1.0 Vmaxpu=1.5 Vminpu=0.60'
            self.command_DSS(command)

            # # Create the Base Load objects
            # if isinstance(a, esdl.HeatPump):
            #     for port in a.port:
            #         if isinstance(port, esdl.InPort):
            #             busUser = port.connectedTo[0].energyasset
            #             portName = port.name
            #     bus = busUser.name.split('Bus')[1]
            #     r = re.match('.*Phase(\d+)In', portName)
            #     if r is not None:
            #         phase = r.groups()[0]
            #     else:
            #         phase = '1'
            #     # print(a.name + ' is connected to phase ' + phase)
            # kV = 0.230: Connected to 230 V system; kW=100: Max rated power of the HeatPump (a.Power/1000 [kW] - read from ESDL); PF=1.0 (phase angle = kW/(sqrt(kW^2+kvar^2))): Assume it's a completely resistive load
            # Vmaxpu=1.5 Vminpu=0.6: Voltage limits at the node
            #     command = 'New  Load.{name}	Bus1={bus}.{phase} Phases=1 Conn=wye Model=1 kV=0.230 kW=100 PF=1.0 Vmaxpu=1.5 Vminpu=0.60'.format(
            #         name=a.name, phase=phase, bus=bus)
            #     self.command_DSS(command)

        # Create the EV objects
        if isinstance(a, esdl.EVChargingStation):
            for port in a.port:
                if isinstance(port, esdl.InPort):
                    busUser = port.connectedTo[0].energyasset
                    portName = port.name
            bus = busUser.name.split('Bus')[1]
            r = re.match('.*Phase(\d+)In', portName)
            if r is not None:
                phase = r.groups()[0]
            else:
                phase = '1'
            # print(a.name + ' is connected to phase ' + phase)
            command = 'New  Load.{name}	Bus1={bus}.{phase} Phases=1 Conn=wye Model=1 kV=0.230 kW=100 PF=1.0 Vmaxpu=1.5 Vminpu=0.60'.format(
                name=a.name, phase=phase, bus=bus)
            self.command_DSS(command)

        # Create the PVUser objects
        if isinstance(a, esdl.PVPark):
            for port in a.port:
                if isinstance(port, esdl.OutPort):
                    busUser = port.connectedTo[0].energyasset
                    portName = port.name
            bus = busUser.name.split('Bus')[1]
            r = re.match('.*Phase(\d+)In', portName)
            if r is not None:
                phase = r.groups()[0]
            else:
                phase = '1'
            # print(a.name + ' is connected to phase ' + phase)
            command = 'New  Generator.{name} Bus1={bus}.{phase} Phases=1 Conn=wye Model=1 kV=0.230 kW=100 Vmaxpu=1.5 Vminpu=0.60'.format(
                name=a.name, phase=phase, bus=bus)
            self.command_DSS(command)

        # Create the CHP objects
        if isinstance(a, esdl.CHP):
            for port in a.port:
                if isinstance(port, esdl.OutPort) and isinstance(port.carrier, esdl.ElectricityCommodity):
                    busUser = port.connectedTo[0].energyasset
                    portName = port.name
            bus = busUser.name.split('Bus')[1]
            r = re.match('.*Phase(\d+)In', portName)
            if r is not None:
                phase = r.groups()[0]
            else:
                phase = '1'
            # print(a.name + ' is connected to phase ' + phase)
            command = 'New Generator.{name} Bus1={bus}.{phase} Phases=1 Conn=wye Model=1 kV=0.230 kW=100 Vmaxpu=1.15 Vminpu=0.90'.format(
                name=a.name, phase=phase, bus=bus)
            self.command_DSS(command)

        # Create the Battery objects
        if isinstance(a, esdl.Battery):
            for port in a.port:
                if isinstance(port, esdl.InPort):
                    busUser = port.connectedTo[0].energyasset
                    portName = port.name
            bus = busUser.name.split('Bus')[1]
            r = re.match('.*Phase(\d+)In', portName)
            if r is not None:
                phase = r.groups()[0]
            else:
                phase = '1'
            # print(a.name + ' is connected to phase ' + phase)
            kWRated = a.maxChargeRate / 1000.0  # convert Watts to kW; For now, assume chargeRate = dischargeRate
            kWhRated = a.capacity / 3.6e6  # convert J to kWh
            command = 'New Storage.{name} Bus1={bus}.{phase} Phases=1 dispmode=EXTERNAL Phases=1 kV=0.230 kWrated={kWRated} kWhrated={kWhRated}'.format(
                name=a.name, phase=phase, bus=bus, kWRated=kWRated, kWhRated=kWhRated)
            self.charge_rates[a.name.lower()] = kWRated
            self.command_DSS(command)

    def init_dss_input(self, path_main_dss='"' + os.getcwd() + '\\DSSFiles_Dutch\\main.dss"'):
        # Path of the DSS Model

        self.path_DSS_model = path_main_dss

    # Function that returns the version used of OpenDSS
    def version_DSS(self):
        return self.dssObj.Version

    # Function that compile the DSS file
    def compile_DSS(self):
        # Clear the memory of OpenDSS
        # self.dssObj.ClearAll()

        # Compile the DSS file
        if self.path_DSS_model is not None:
            self.dssText.Command = "compile " + self.path_DSS_model
        else:
            self.dssText.Command = "compile"

    # Function that compiles the DSS file
    def command_DSS(self, command):
        # Compile the DSS file
        self.dssText.Command = command

    def solve_DSS_snapshot(self):
        # Settings
        self.dssText.Command = "set mode=snapshot"
        self.dssText.Command = "set controlmode=static"

        # Solve the power flow model
        self.dssSolution.Solve()

    def circuit_converged(self):
        return self.dssSolution.Converged

    def get_name_circuit(self):
        # Get the name of the ciurcuit model
        return self.dssCircuit.Name

    def get_number_loads(self):
        # Get the number of active loads
        return self.dssCircuit.Loads.Count

    def get_number_buses(self):
        # Get the number of buses
        return self.dssCircuit.NumBuses

    def get_number_lines(self):
        # Get the number of lines
        return self.dssCircuit.Lines.Count

    def activate_bus(self, name_bus):
        self.dssCircuit.SetActiveBus(name_bus)

    def get_distance_bus(self):
        return self.dssBus.Distance

    def get_dist_transf(self):
        return self.dssCircuit.Transformers.AllNames[0]

    def get_all_gens(self):
        return self.dssGenerators.AllNames

    def get_power_circuit(self):
        # Get the power of the substation
        p_total = - self.dssCircuit.TotalPower[0]
        q_total = - self.dssCircuit.TotalPower[1]
        return p_total, q_total

    def active_element(self, element_name):
        # Activate the element by its name. Follow the next rule: Type.Name Example, Line.Line_Name.
        self.dssCircuit.SetActiveElement(element_name)

        # Return the name of the active element
        return self.dssCktElement.Name

    def get_total_losses(self):
        p_loss = self.dssCircuit.Losses[0]
        q_loss = self.dssCircuit.Losses[1]
        return p_loss, q_loss

    def get_voltage_element(self):
        return self.dssCktElement.VoltagesMagAng

    def get_current_element(self):
        return self.dssCktElement.CurrentsMagAng

    def get_powers_element(self):
        return self.dssCktElement.Powers

    def get_kw_load(self):
        return self.dssLoads.kW

    def get_kV_base(self):
        return self.dssLoads.kV

    def set_storage_charge(self, storageName, chargekW):
        if chargekW < eps:
            self.command_DSS('Storage.{storageName}.state=idling'.format(storageName=storageName))
        else:
            self.command_DSS('Storage.{storageName}.state=charging %charge={charge}'.format(storageName=storageName,
                                                                                            charge=100 * (chargekW /
                                                                                                          self.charge_rates[
                                                                                                              storageName])))

    def set_storage_discharge(self, storageName, dischargekW):
        if dischargekW < eps:
            self.command_DSS('Storage.{storageName}.state=idling'.format(storageName=storageName))
        else:
            self.command_DSS(
                'Storage.{storageName}.state=discharging %discharge={discharge}'.format(storageName=storageName,
                                                                                        discharge=100 * (dischargekW /
                                                                                                         self.charge_rates[
                                                                                                             storageName])))

    def set_kw_load(self, loadName, loadValue):
        # Activate the load  by its LoadName and then set its load value
        # self.dssCircuit.Loads.Name = loadName.split('.')[1]
        self.dssCircuit.Loads.Name = loadName
        self.dssCircuit.Loads.kW = loadValue

    def set_kvar_load(self, loadName, kvar_Value):
        # Activate the load  by its LoadName and then set its load value
        # self.dssCircuit.Loads.Name = loadName.split('.')[1]
        self.dssCircuit.Loads.Name = loadName
        self.dssCircuit.Loads.kvar = kvar_Value

    def set_kw_Gen(self, GenName, kW_Value):
        # Activate the load  by its LoadName and then set its load value
        # self.dssCircuit.Generators.Name = GenName.split('.')[1]
        self.dssCircuit.Generators.Name = GenName
        self.dssCircuit.Generators.kW = kW_Value

    def set_kvar_Gen(self, GenName, kvar_Value):
        # Activate the load  by its LoadName and then set its load value
        # self.dssCircuit.Generators.Name = GenName.split('.')[1]
        self.dssCircuit.Generators.Name = GenName
        self.dssCircuit.Generators.kvar = kvar_Value

    def init_simulation(self):
        # ------------------------------------------------------
        # OpenDSS/Python Interface
        # ------------------------------------------------------
        # print('--------------------------------------')
        # print('OpenDSS - Python interface COM: Smart Energy Management System (SEM) Project \n')
        # print('by Pedro P. Vergara, TU Eindhoven \n')
        # print('Arun Subramanian, TNO \n')
        # print('--------------------------------------')

        # Start the execution
        print('Execution Started...\n')

        # Create an circuit of a DSS class
        print('Calling OpenDSS...wait...')
        print('OpenDSS Version: ' + self.version_DSS() + '\n')

        # Compile the Circuit
        self.compile_DSS()

        print('Executing the Circuit Named as: ' + self.get_name_circuit() + '\n')

        # Units to kW
        self.VoltageBase = 416.0 / math.sqrt(3)

        # General information about the circuit
        # Number of buses
        self.n_total = self.get_number_loads()  # Number total of loads
        self.n_total_bus = self.get_number_buses()  # Number total of buses
        self.n_total_lines = self.get_number_lines()  # Number total de lines
        self.timestamp_counter = {}
        self.counter = ['desired', 'actual']
        self.dataset = []

    # Defining the Influx DataBase
    def init_influxdb(self, host, port, dbName, measurementName):
        print('Initialising InfluxDB Client')
        self.host = 'localhost'
        self.port = port
        self.dbName = dbName
        self.simulationId = measurementName
        self.measurementName = "opendss"
        self.influx_client = InfluxDBClient(host=self.host, port=self.port)
        self.influx_client.create_database(self.dbName)  # Create the DB dbName
        self.influx_client.switch_database(self.dbName)  # Tell to the client that we are going to work with this DB

        # Create a empty datapoint array
        self.datapoints = []
        self.batch_size = 0

    # Define NATS publisher client for OpenDSS module
    def init_nats(self, host, port):
        print('Initialising NATS Client')
        self.nats_host = host
        self.nats_port = port
        self.nats_subject = "opendss.output"
        self.np = NATSPublisherClient(host, port)

    def send_to_dso(self, dp_pv):
        self.dsoAgent.process_command(dp_pv)

    # Power flow simulation step
    def step_simulation(self, time_stamp):
        if time_stamp in self.timestamp_counter:
            counter = self.timestamp_counter[time_stamp]
        else:
            for points in self.dataset:
                self.influx_client.write_points(points)
            self.dataset = []
            counter = 0

        counter = counter + 1

        print('Solving power flow. Time-step: ' + str(time_stamp))
        print('Calculating the state of the grid. Time-step: ' + str(time_stamp))
        # Solve the power flow
        self.solve_DSS_snapshot()

        # # Check if the power flow converged
        # if self.circuit_converged() == 1:
        #     print('Circuit Converged. Time-step: ' + str(time_stamp))
        # else:
        #     # Return error!!!
        #     print('Circuit NOT Converged. Time-step: ' + str(time_stamp))

        dp_pv = []
        # Read the voltage of all the Users
        for element in list(self.dssCircuit.AllElementNames):
            if 'Load' in element or 'Generator' in element or 'Storage' in element:
                asset_class = ""

                if 'Load' in element:
                    asset_class = "Load"
                elif 'Generator' in element:
                    asset_class = 'Generator'
                elif 'Storage' in element:
                    asset_class = 'Storage'

                self.active_element(element)

                # Read the voltage of the activated element
                voltage_temp = self.get_voltage_element()
                kw_temp = self.get_powers_element()
                dp_pv_u = {'time': time_stamp, 'measurement': self.measurementName,
                           'tags': {'id': element.split('.')[1], 'ctr': self.counter[counter != 1],
                                    'simulationRun': self.simulationId, 'assetClass': asset_class},
                           'fields': {'Voltage': voltage_temp[0] / self.VoltageBase, 'kW': abs(kw_temp[0])}}
                dp_pv.append(dp_pv_u)

        # Get total losses of the feeder
        p_loss, q_loss = self.get_total_losses()
        dp_pq_losses = {'time': time_stamp, 'measurement': self.measurementName,
                        'tags': {'id': 'Feeder', 'ctr': self.counter[counter != 1], 'simulationRun': self.simulationId,
                                 'assetClass': 'Feeder'},
                        'fields': {'Loss_kW': p_loss / 1000, 'Loss_kvar': q_loss / 1000}}

        # Read the input/output power of the distribution transformer
        # Activate the transformer to read the powers
        TName = 'transformer1'

        # Read the active/reactive power from the SE
        p_total, q_total = self.get_power_circuit()
        dp_pq = {'time': time_stamp,
                 'measurement': self.measurementName,
                 'tags': {'id': TName, 'ctr': self.counter[counter != 1], 'simulationRun': self.simulationId,
                          'assetClass': 'Transformer'}}

        # Read the input/output power of the distribution transformer
        TransfName = 'Transformer.' + TName
        self.active_element(TransfName)
        power_trf_temp = self.get_powers_element()

        # input_kW = power_trf_temp[0] + power_trf_temp[2] + power_trf_temp[4]
        # input_kvar = power_trf_temp[1] + power_trf_temp[3] + power_trf_temp[5]
        # output_kW = power_trf_temp[8] + power_trf_temp[10] + power_trf_temp[12]
        # output_kvar = power_trf_temp[9] + power_trf_temp[11] + power_trf_temp[13]

        input_kW = power_trf_temp[0]
        input_kvar = power_trf_temp[1]
        output_kW = power_trf_temp[2]
        output_kvar = power_trf_temp[3]

        dp_pq['fields'] = {
            'kW_SE': p_total,
            'kvar_SE': q_total,
            'Input_kW': input_kW,
            'Input_kvar': input_kvar,
            'Output_kW': output_kW,
            'Output_kvar': output_kvar
        }

        dp_plines = []
        # Read the power flowing through all the lines
        for element in list(self.dssCircuit.AllElementNames):
            if 'Line' in element:
                self.active_element(element)

                # Read the power flowing in the line
                power_temp = self.get_powers_element()
                i = self.get_current_element()
                dp_plines_u = {'time': time_stamp,
                               'measurement': self.measurementName,
                               'tags': {'id': element.split('.')[1], 'ctr': self.counter[counter != 1],
                                        'simulationRun': self.simulationId, 'assetClass': 'Line'},
                               'fields': {
                                   'Output_kW': power_temp[2],
                                   'Output_kvar': power_temp[3],
                                   'Current_real': i[0],
                                   'Current_imag': i[2],
                                   # 'Output_kW': power_temp[6] + power_temp[8] + power_temp[10],
                                   # 'Output_kvar': power_temp[7] + power_temp[9] + power_temp[11]
                               }
                               }
                dp_plines.append(dp_plines_u)

        # Return the simulation data
        self.datapoints.append(dp_pq_losses)
        self.datapoints.append(dp_pq)
        [self.datapoints.append(d) for d in dp_plines]
        [self.datapoints.append(d) for d in dp_pv]

        print('Sending to DSO Agent...')
        # self.send_to_dso(dp_pv)
        self.send_to_dso(self.datapoints)

        # Finish the execution
        print('...Execution Finished.')
        print('Writing to Influxdb')
        if len(self.dataset) < 2:
            self.dataset.append(self.datapoints)
            self.dataset.append(make_last(self.datapoints))
        else:
            self.dataset[1] = self.datapoints
        self.datapoints = []

        print('Asking DSO Agent to perform calculation')

        self.dsoAgent.calculate(time_stamp)
        self.timestamp_counter[time_stamp] = counter

    def end_simulation(self):
        for points in self.dataset:
            self.influx_client.write_points(points)
        self.dsoAgent.end_simulation()

    # ------------------------------------------------------
    # Storage the Data in Influx DB
    # ------------------------------------------------------
    def publish_results(self):
        self.influx_client.write_points(self.datapoints)
