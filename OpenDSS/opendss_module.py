# -*- coding: utf-8 -*-
"""
Created on Tue Jul 16 08:34:11 2019
@author: 20190124
"""

import math  # importing math package to use math funtions
import os  # Importing OS functions
import threading

import win32com.client  # importing Wincom client to call OpenDSS
from influxdb import InfluxDBClient  # Calling the InflixDB Client


class DSS:
    def __init__(self, path_main_dss='"' + os.getcwd() + '\\DSSFiles_European\\main.dss"'):
        # Path of the DSS Model

        self.path_DSS_model = path_main_dss
        # Create the conextion between Python and OpenDSS
        self.dssObj = win32com.client.Dispatch("OpenDSSEngine.DSS")

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
            self.dssMonitors =  self.dssCircuit.Monitors

    # Function that returns the version used of OpenDSS
    def version_DSS(self):
        return self.dssObj.Version

    # Function that compile the DSS file
    def compile_DSS(self):
        # Clear the memory of OpenDSS
        self.dssObj.ClearAll()

        # Compile the DSS file
        self.dssText.Command = "compile " + self.path_DSS_model

    # Function that compile the DSS file
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

    def init_simulation(self, start_time, end_time, time_step):
        # ------------------------------------------------------
        # OpenDSS/Python Interface
        # ------------------------------------------------------
        print('--------------------------------------')
        print('OpenDSS - Python interface COM: Smart Energy Management System (SME) Project \n')
        print('by Pedro P. Vergara, TU Eindhoven \n')
        print('Arun Subramanian, TNO \n')
        print('--------------------------------------')

        # Start the execution
        print('Execution Started...\n')

        # Create an circuit of a DSS class
        print('Calling OpenDSS...wait...')
        print('OpenDSS Version: ' + self.version_DSS() + '\n')

        # Compile the Circuit
        self.compile_DSS()

        print('Executing the Circuit Named as: ' + self.get_name_circuit() + '\n')

        # Units to kW 
        self.VoltageBase = 416.0/math.sqrt(3)

        # General information about the circuit
        # Number of buses
        self.n_total = self.get_number_loads()         # Number total of loads
        self.n_total_bus = self.get_number_buses()     # Number total of buses
        self.n_total_lines = self.get_number_lines()   # Number total de lines 

    # Defining the Influx DataBase
    def init_influxdb(self, host, port, dbName, measurementName):
        self.host = host
        self.port = port
        self.dbName = dbName
        self.measurementName = measurementName
        self.client = InfluxDBClient(host=self.host, port=self.port)
        self.client.create_database(self.dbName)   # Create the DB dbName
        self.client.switch_database(self.dbName)   # Tell to the client that we are going to work with this DB

        # Create a empty datapoint array
        self.datapoints = []
        self.batch_size = 0

    # Power flow simulation step
    def step_simulation(self, time_stamp):

        # Solve the power flow        
        self.solve_DSS_snapshot()

        # Check if the power flow converged
        if self.circuit_converged() == 1:
            print('Circuit Converged. Time-step: ' + str(time_stamp))
        else:
            # Return error!!!
            print('Circuit NOT Converged. Time-step: ' + str(time_stamp))

        dp_pv = []
        # Read the voltage of all the Users
        for i in range(0, self.n_total):
            Name = 'USER' + str(i + 1)
            UserName = 'Load.' + Name
            self.active_element(UserName)

            # Read the voltage of the activated element
            voltage_temp = self.get_voltage_element()
            dp_pv_u = {}
            dp_pv_u['time'] = time_stamp
            dp_pv_u['measurement'] = self.measurementName
            dp_pv_u['tags'] = {'id': Name}
            dp_pv_u['fields'] = {'Voltage':voltage_temp[0]/(self.VoltageBase)}
            dp_pv.append(dp_pv_u)

        # Get total losses of the feeder
        p_loss, q_loss = self.get_total_losses()
        dp_pq_losses = {}
        dp_pq_losses['time'] = time_stamp
        dp_pq_losses['measurement'] = self.measurementName
        dp_pq_losses['tags'] = {'id': 'Feeder'}
        dp_pq_losses['fields'] = {'Loss_kW': p_loss/1000, 'Loss_kvar': q_loss/1000}

        # Read the input/output power of the distribution transformer
        # Activate the transformer to read the powers
        TName = 'Transformer1'

        # Read the active/reactive power from the SE
        p_total, q_total = self.get_power_circuit()
        dp_pq = {'time': time_stamp,
                 'measurement': self.measurementName,
                 'tags': {'id': TName}}

        # Read the input/output power of the distribution transformer
        TransfName = 'Transformer.' + TName
        self.active_element(TransfName)
        power_trf_temp = self.get_powers_element()
        dp_pq['fields'] = {
            'kW_SE': p_total,
            'kvar_SE': q_total,
            'Input_kW': power_trf_temp[0] + power_trf_temp[2] + power_trf_temp[4],
            'Input_kvar': power_trf_temp[1] + power_trf_temp[3] + power_trf_temp[5],
            'Output_kW': power_trf_temp[8] + power_trf_temp[10] + power_trf_temp[12],
            'Output_kvar': power_trf_temp[9] + power_trf_temp[11] + power_trf_temp[13]
        }

        dp_plines =[]
        # Read the power flowing through all the lines
        for i in range(0,self.n_total_lines):
            # Activate the line
            LName = 'LINE' + str(i+1)
            LineName = 'Line.' + LName
            self.active_element(LineName)

            # Read the power flowing in the line 
            power_temp = self.get_powers_element()
            dp_plines_u = {'time': time_stamp,
                           'measurement': self.measurementName,
                           'tags': {'id': LName},
                           'fields': {
                               'Output_kW': power_temp[6] + power_temp[8] + power_temp[10],
                               'Output_kvar': power_temp[7] + power_temp[9] + power_temp[11]
                           }
                           }
            dp_plines.append(dp_plines_u)

        # Return the simulation data
        self.datapoints.append(dp_pq_losses)
        self.datapoints.append(dp_pq)
        [self.datapoints.append(d) for d in dp_plines]
        [self.datapoints.append(d) for d in dp_pv]

        if len(self.datapoints) >= self.batch_size:
            print('Writing to influxdb...')
            temp = self.datapoints
            self.datapoints = []
            self.client.write_points(temp)

        # Finish the execution
        print('\n')
        print('...Execution Finished.')

    # ------------------------------------------------------
    # Storage the Data in Influx DB
    # ------------------------------------------------------
    def publish_results(self):
        self.client.write_points(self.datapoints)
