# -*- coding: utf-8 -*-
"""
Created on Tue Jul 16 08:34:11 2019
@author: 20190124
"""

import numpy as np               # importing NumPy (low-level data manager)
import pandas as pd              # importing Pandas (high-level data manager)
import win32com.client           # importing Wincom client to call OpenDSS
import math                      # importing math package to use math funtions
import os                        # Importing OS functions
from pylab import *   

class DSS():
    def __init__(self, path_DSS_model):
        # Path of the DSS Model
        
        self.path_DSS_model = path_DSS_model
        # Create the conextion between Python and OpenDSS
        self.dssObj = win32com.client.Dispatch("OpenDSSEngine.DSS")
        
        # Create an DSS circuit
        if self.dssObj.Start(0) == False:
            print ('Problem to Execute OpenDSS')
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
         
    def activate_bus(self, name_bus):
        self.dssCircuit.SetActiveBus(name_bus)
        
    def get_distance_bus(self):  
        return self.dssBus.Distance
    
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
        self.dssCircuit.Loads.Name = loadName.split('.')[1]
        self.dssCircuit.Loads.kw = loadValue
        
    def set_kw_PV(self, PVName, PV_kW_Value):
        # Activate the load  by its LoadName and then set its load value
        self.dssCircuit.Generators.Name = PVName.split('.')[1]
        self.dssCircuit.Generators.kW = PV_kW_Value
        
    def set_kvar_PV(self, PVName, PV_kvar_Value):
        # Activate the load  by its LoadName and then set its load value
        self.dssCircuit.Generators.Name = PVName.split('.')[1]
        self.dssCircuit.Generators.kvar = PV_kvar_Value
              
if __name__=="__main__":
    # ------------------------------------------------------
    # OpenDSS/Python Interface
    # ------------------------------------------------------
    print('--------------------------------------')
    print('OpenDSS - Python interface COM: Ready to Execute')
    print('by Pedro P. Vergara, TU Eindhoven')
    print('--------------------------------------')
    
    # Start the execution
    print('Execution Started...\n')
    
    # Create an circuit of a DSS class
    dir = '"' + os.getcwd() + '\DutchFeeder.dss'
    distr_feeder = DSS(dir)
    print('Calling OpenDSS...wait...')
    print('OpenDSS Version: ' + distr_feeder.version_DSS() + '\n')
    
    # Compile the Circuit
    distr_feeder.compile_DSS()
    
    print('Executing the Circuit Named as: ' + distr_feeder.get_name_circuit() + '\n')
    
    # ------------------------------------------------------
    # Read the input information
    # ------------------------------------------------------
    # Some intial information
     
    # Upload the Load COnsumption of the Users 
    Load_Users = pd.read_csv(r'Load_Users.csv', sep = ';', dtype=np.float64)
    n_total = Load_Users.shape[1]         # Total number of consumers
    n_time_steps = Load_Users.shape[0]    # Total number of time steps simulations
     
    # Units to kW 
    VolageBase = 416.0/math.sqrt(3)
    Load_Users = Load_Users.multiply(0.004)
    
        # Upload the list of the users with PV systems
    PV_Users_List = pd.read_csv(r'PV_Users_List.csv', sep = ';')
    n_total_pv = PV_Users_List.shape[0]
    PV_Users_List.PV_Users_List = PV_Users_List.PV_Users_List.astype(str)

    # Upload the PV Generation of the Users
    PV_Users = pd.read_csv(r'PV_Users.csv', sep = ';', dtype=np.float64)
  
    # General information about the circuit
    # Number of buses
    n_total_bus = distr_feeder.dssCircuit.NumBuses    # Number total of buses
    n_total_lines = n_total_bus - 1                  # Number total de lines 

    # ------------------------------------------------------
    # Declare teh dataframes to store the data
    # ------------------------------------------------------
    
    # Votlage of the PV users
    df_Voltage_PVUsers = pd.DataFrame(columns=PV_Users_List.iloc[:,0], index = [i for i in range(0,n_time_steps)])

    # Active/reactive power from the substation
    df_pq_se = pd.DataFrame(columns=['kW_SE', 'kvar_SE'], index = [i for i in range(0,n_time_steps)])
    
    # In/Output Power of the Distribution Transformer
    df_Power_Transf = pd.DataFrame(columns=['Input_kW', 'Input_kvar', 'Output_kW', 'Output_kvar'], index = [i for i in range(0,n_time_steps)])
    
    # Total active power losses
    df_pq_loss = pd.DataFrame(columns=['Loss (kW)', 'Loss (kvar)'], index = [i for i in range(0,n_time_steps)])
       
    # ------------------------------------------------------
    # Internal Loop
    # ------------------------------------------------------

    # For all the time steps
    for m in range(0,n_time_steps): #
    
        # For all the users, set their load consumption as in Load_Users
        # Activate the customer and then update the its consumption
        for i in range(0,n_total):
            loadName = 'Load.' + str(Load_Users.columns[i])       
            distr_feeder.set_kw_load(loadName, Load_Users.iloc[m,i])
            
        # For all the PV users, set their PV generation as in PV_Users
        # Activate the customer and then update its consumption
        # kW PV Generation
        for i in range(0,n_total):
            PVName = 'Generator.' + str(PV_Users.columns[i])       
            distr_feeder.set_kw_PV(PVName, PV_Users.iloc[m,i])
    
        # Solve the power flow        
        distr_feeder.solve_DSS_snapshot()
        
        # Check if the power flow converged
        if distr_feeder.circuit_converged() == 1:
            print('Circuit Converged. Time-step: ' + str(m))
        else:
            print('Circuit NOT Converged. Time-step: ' + str(m))
            #break
    # ------------------------------------------------------
    # Case 1 and Case 2
    # ------------------------------------------------------
        # Read the active/reactive power from the SE
        p_total, q_total = distr_feeder.get_power_circuit()
        df_pq_se.iloc[m,0] = p_total    # Save the active power 
        df_pq_se.iloc[m,1] = q_total    # Save the rective power 
            
        # Get total losses of the circuit
        p_loss, q_loss = distr_feeder.get_total_losses()
        df_pq_loss.iloc[m,0] = p_loss/1000    # Save the active power losses (in kW)
        df_pq_loss.iloc[m,1] = q_loss/1000    # Save the rective power  losses (in kvar)
        
        # Read the voltage of all the PV consumers
        for i in range(0,n_total_pv):
            UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
            distr_feeder.active_element(UserName)
        
            # Read the voltage of the activated element
            voltage_temp = distr_feeder.get_voltage_element()
            df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase)
                
        # Read the input/output power of the distribution transformer
        # Activate the transformer to read the powers
        TransfName = 'Transformer.' + 'Transformer1'
        distr_feeder.active_element(TransfName)
            
        # Read the input/output power of the distribution transformer
        power_trf_temp = distr_feeder.get_powers_element()
        df_Power_Transf.iloc[m,0] = power_trf_temp[0] + power_trf_temp[2] + power_trf_temp[4] 
        df_Power_Transf.iloc[m,1] = power_trf_temp[1] + power_trf_temp[3] + power_trf_temp[5]
        df_Power_Transf.iloc[m,2] = power_trf_temp[8] + power_trf_temp[10] + power_trf_temp[12]
        df_Power_Transf.iloc[m,3] = power_trf_temp[9] + power_trf_temp[11] + power_trf_temp[13]
          
    # Finish the execution
    print('\n')
    print('...Execution Finished.')
    print('\n')
    
    # ------------------------------------------------------
    # Save Output Results
    # ------------------------------------------------------
    
    # Total kW and kvar from the SE
    df_pq_se = df_pq_se.astype(float)
    df_pq_se.to_csv(r'OutputFiles\total_kw_kvar_se.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
    # Total kW and kvar Losses
    df_pq_loss = df_pq_loss.astype(float)
    df_pq_loss.to_csv(r'OutputFiles\total_kw_kvar_loss.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
    # Votlage from the PV Users
    df_Voltage_PVUsers = df_Voltage_PVUsers.astype(float)
    df_Voltage_PVUsers.to_csv(r'OutputFiles\voltage_pvusers.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
       