# -*- coding: utf-8 -*-
"""
Created on Tue Jul 16 08:34:11 2019
@author: 20190124
"""

import numpy as np               # importing NumPy (low-level data manager)
import pandas as pd              # importing Pandas (high-level data manager)
import matplotlib.pyplot as plt  # importing a MATLAB-like ploting package
import math                      # importing math package to use math funtions
import win32com.client           # importing Wincom client to call OpenDSS
import os                        # Importing OS functions
import pickle                    # Importing for saving Phyton varaibles as data

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
    print('OpenDSS - Python interface COM: Assessing PV impact on the LV Distr. Network.')
    print('by Pedro P. Vergara, Mauricio S. Duque, TU Eindhoven')
    print('--------------------------------------')
    
    # Start the execution
    print('Execution Started...\n')
    
    # Create an circuit of a DSS class
    dir = os.getcwd() + '\ieee_european.dss'
    ieee_europe = DSS(dir)
    print('Calling OpenDSS...wait...')
    print('OpenDSS Version: ' + ieee_europe.version_DSS() + '\n')
    
    # Compile the Circuit
    ieee_europe.compile_DSS()
    
    print('Executing the Circuit Named as: ' + ieee_europe.get_name_circuit() + '\n')
    
    # ------------------------------------------------------
    # Read the input information
    # ------------------------------------------------------
    # Some intial information
    Vmax = 1.10         # Maximum Voltage
    VthP = 1.06         # Voltage threshold for the active droop control
    VthQ = 1.04         # Voltage threshold for the reactive droop control
    beta = 10            # Multiplying factor for the reactive droop control
    
    # Load File
    with open('load_users.pkl', 'rb') as file_name:
        data_consumption = pickle.load(file_name)
        data_one_year = data_consumption[0,:,:]        
        Load_Users = pd.DataFrame(data=data_one_year, columns=['USER' + str(i+1) for i in range(0,55)])
    
    # Define the Case to be studied: Case 1: No PV, Case 2: with PV, Case 3: P Droop, Case 4: PQ Droop 
    Case = 1
    print('Executing Case: ' + str(Case) + '\n')

    # Upload the Load COnsumption of the Users 
    #Load_Users = pd.read_csv('Load_Users.csv', sep = ';', dtype=np.float64)
    n_total = Load_Users.shape[1]         # Total number of consumers
    n_time_steps = Load_Users.shape[0]    # Total number of time steps simulations
     
    # Units to kW 
    VolageBase = 416.0/math.sqrt(3)
    Load_Users = Load_Users.multiply(0.004)
    
    # Upload the list of the users with PV systems
    PV_Users_List = pd.read_csv(r'PV_Users_List.csv', sep = ';')
    n_total_pv = PV_Users_List.shape[0]
    PV_Users_List.PV_Users_List = PV_Users_List.PV_Users_List.astype(str)
    PV_Users_List.kWp = PV_Users_List.kWp.astype(np.float64)
    PV_Users_List.PF = PV_Users_List.PF.astype(np.float64)
          
    # Upload the PV Generation of the Users
    if Case == 1:
        #PV_Users = pd.read_csv(r'PV_Users_Case_1.csv', sep = ';', dtype=np.float64)       
        PV_Users = pd.DataFrame(0.0, columns=['PV'+PV_Users_List.iloc[i,0] for i in range(0,n_total_pv)], index = [i for i in range(0,n_time_steps)])
        
        
    if Case == 2 or Case == 3 or Case == 4:
        PV_Users = pd.read_csv(r'PV_Users_Case_2.csv', sep = ';', dtype=np.float64)
        
    PV_Users = PV_Users.multiply(0.004) 
    
    # General information about the circuit
    # Number of buses
    n_total_bus = ieee_europe.dssCircuit.NumBuses    # Number total of buses
    n_total_lines = 2 # n_total_bus - 1              # Number total de lines 

    # ------------------------------------------------------
    # Declare teh dataframes to store the data
    # ------------------------------------------------------
    
    # Votlage of the PV users
    df_Voltage_PVUsers = pd.DataFrame(0.0, columns=PV_Users_List.iloc[:,0], index = [i for i in range(0,n_time_steps)])

    # PV inverters reactive power output
    PV_Users_Reactive = pd.DataFrame(0.0, columns=PV_Users.columns, index = [i for i in range(0,n_time_steps)])

    # Active/reactive power from the substation
    df_pq_se = pd.DataFrame(0.0, columns=['kW_SE', 'kvar_SE'], index = [i for i in range(0,n_time_steps)])
    
    # Power flowing in the lines
    df_kW_Power_Lines = pd.DataFrame(0.0, columns=['LINE' + str(i+1) for i in range(0,n_total_lines)], index = [i for i in range(0,n_time_steps)])
    df_kvar_Power_Lines = pd.DataFrame(0.0, columns=['LINE' + str(i+1) for i in range(0,n_total_lines)], index = [i for i in range(0,n_time_steps)])

    # In/Output Power of the Distribution Transformer
    df_Power_Transf = pd.DataFrame(0.0, columns=['Input_kW', 'Input_kvar', 'Output_kW', 'Output_kvar'], index = [i for i in range(0,n_time_steps)])
    
    # Distance of all the buses
    df_distance_bus = pd.DataFrame(0.0, columns=['Bus', 'Distance (m)'], index = [i for i in range(0,n_total_bus-1)])
    
    # Total active power losses
    df_pq_loss = pd.DataFrame(0.0, columns=['Loss (kW)', 'Loss (kvar)'], index = [i for i in range(0,n_time_steps)])
    
    # Convergence Status
    df_PF_Convergence = pd.DataFrame(0, columns=['0'], index = [i for i in range(0,n_time_steps)])
       
    # ------------------------------------------------------
    # Internal Loop
    # ------------------------------------------------------
    # Read the distance of the buses from the main energymeter
    for i in range(0,n_total_bus-1):
        ieee_europe.activate_bus(str(i+1))
        df_distance_bus.iloc[i,0] = i+1
        df_distance_bus.iloc[i,1] = 1000*ieee_europe.get_distance_bus()
 
    # For all the time steps
    for m in range(0,n_time_steps): 
    
        # For all the users, set their load consumption as in Load_Users
        # Activate the customer and then update the its consumption
        for i in range(0,n_total):
            loadName = 'Load.' + str(Load_Users.columns[i])       
            ieee_europe.set_kw_load(loadName, Load_Users.iloc[m,i])
            
        # For all the PV users, set their PV generation as in PV_Users
        # Activate the customer and then update its consumption
        # kW PV Generation
        for i in range(0,n_total_pv):
            PVName = 'Generator.' + 'PV' + str(PV_Users_List.iloc[i,0])       
            ieee_europe.set_kw_PV(PVName, PV_Users.iloc[m,i])
    
        # Solve the power flow        
        ieee_europe.solve_DSS_snapshot()
        
        # Check if the power flow converged
        if ieee_europe.circuit_converged() == 1:
            print('Circuit Converged. Time-step: ' + str(m))
            df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
        else:
            print('Circuit NOT Converged. Time-step: ' + str(m))
            df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()

    # ------------------------------------------------------
    # Case 1 and Case 2
    # ------------------------------------------------------
        if (Case == 1) or (Case == 2):
            # Read the active/reactive power from the SE
            p_total, q_total = ieee_europe.get_power_circuit()
            df_pq_se.iloc[m,0] = p_total    # Save the active power 
            df_pq_se.iloc[m,1] = q_total    # Save the rective power 
            
            # Get total losses of the circuit
            p_loss, q_loss = ieee_europe.get_total_losses()
            df_pq_loss.iloc[m,0] = p_loss/1000    # Save the active power losses (in kW)
            df_pq_loss.iloc[m,1] = q_loss/1000    # Save the rective power  losses (in kvar)
        
            # Read the voltage of all the PV consumers
            for i in range(0,n_total_pv):
                UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
                ieee_europe.active_element(UserName)
        
                # Read the voltage of the activated element
                voltage_temp = ieee_europe.get_voltage_element()
                df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase)
                
            # Read the input/output power of the distribution transformer
            # Activate the transformer to read the powers
            TransfName = 'Transformer.' + 'TR1'
            ieee_europe.active_element(TransfName)
            
            # Read the input/output power of the distribution transformer
            power_trf_temp = ieee_europe.get_powers_element()
            df_Power_Transf.iloc[m,0] = power_trf_temp[0] + power_trf_temp[2] + power_trf_temp[4] 
            df_Power_Transf.iloc[m,1] = power_trf_temp[1] + power_trf_temp[3] + power_trf_temp[5]
            df_Power_Transf.iloc[m,2] = power_trf_temp[8] + power_trf_temp[10] + power_trf_temp[12]
            df_Power_Transf.iloc[m,3] = power_trf_temp[9] + power_trf_temp[11] + power_trf_temp[13]

            # Read the power flowing through all the lines
            for i in range(0,n_total_lines):
                # Activate the line 
                LineName = 'Line.' + 'LINE' + str(i+1)
                ieee_europe.active_element(LineName)
                
                # Read the power flowing in the line 
                power_temp = ieee_europe.get_powers_element()
                df_kW_Power_Lines.iloc[m,i] = power_temp[6] + power_temp[8] + power_temp[10]
                df_kvar_Power_Lines.iloc[m,i] = power_temp[7] + power_temp[9] + power_temp[11]
              
    # ------------------------------------------------------
    # Case 3
    # ------------------------------------------------------
        if Case == 3:
            # Read the voltage of all the PV users
            for i in range(0,n_total_pv):
                UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
                ieee_europe.active_element(UserName)
        
                # Read the voltage of the activated element
                voltage_temp = ieee_europe.get_voltage_element()
                df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase) 
                
                # ------------------------------------------------------------
                # Droop Control for Active Power               
                # ------------------------------------------------------------
                if df_Voltage_PVUsers.iloc[m,i] > VthP and df_Voltage_PVUsers.iloc[m,i] < Vmax:
                    PV_Out = PV_Users['PV'+PV_Users_List.iloc[i,0]][m] - ((PV_Users_List.iloc[i,1])/(Vmax - VthP))*(df_Voltage_PVUsers.iloc[m,i] - VthP)
                    PV_Users['PV'+PV_Users_List.iloc[i,0]][m] = max(0, PV_Out)
                
                elif df_Voltage_PVUsers.iloc[m,i] > Vmax:
                    PV_Users['PV'+PV_Users_List.iloc[i,0]][m] = 0.0
           
            # For all the users, set their load consumption as in Load_Users
            # Activate the customer and then update the its consumption
            for i in range(0,n_total):
                loadName = 'Load.' + str(Load_Users.columns[i])       
                ieee_europe.set_kw_load(loadName, Load_Users.iloc[m,i])
                
            # For all the PV users, set their PV generation as in PV_Users
            # Activate the customer and then update its consumption
            # kW PV Generation
            for i in range(0,n_total_pv):
                PVName = 'Generator.' + 'PV' + str(PV_Users_List.iloc[i,0])       
                ieee_europe.set_kw_PV(PVName, PV_Users.iloc[m,i])
        
            # Solve the power flow        
            ieee_europe.solve_DSS_snapshot()
            
            # Check if the power flow converged
            if ieee_europe.circuit_converged() == 1:
                df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
            else:
                df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
            
            # Read the active/reactive power from the SE
            p_total, q_total = ieee_europe.get_power_circuit()
            df_pq_se.iloc[m,0] = p_total    # Save the active power 
            df_pq_se.iloc[m,1] = q_total    # Save the rective power 
            
            # Get total losses of the circuit
            p_loss, q_loss = ieee_europe.get_total_losses()
            df_pq_loss.iloc[m,0] = p_loss/1000    # Save the active power losses (in kW)
            df_pq_loss.iloc[m,1] = q_loss/1000    # Save the rective power  losses (in kvar)
        
            # Read the voltage of all the PV consumers
            for i in range(0,n_total_pv):
                UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
                ieee_europe.active_element(UserName)
        
                # Read the voltage of the activated element
                voltage_temp = ieee_europe.get_voltage_element()
                df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase)
                
            # Read the input/output power of the distribution transformer
            # Activate the transformer to read the powers
            TransfName = 'Transformer.' + 'TR1'
            ieee_europe.active_element(TransfName)
            
            # Read the input/output power of the distribution transformer
            power_trf_temp = ieee_europe.get_powers_element()
            df_Power_Transf.iloc[m,0] = power_trf_temp[0] + power_trf_temp[2] + power_trf_temp[4] 
            df_Power_Transf.iloc[m,1] = power_trf_temp[1] + power_trf_temp[3] + power_trf_temp[5]
            df_Power_Transf.iloc[m,2] = power_trf_temp[8] + power_trf_temp[10] + power_trf_temp[12]
            df_Power_Transf.iloc[m,3] = power_trf_temp[9] + power_trf_temp[11] + power_trf_temp[13]
            
            # Read the power flowing through all the lines
            for i in range(0,n_total_lines):
                # Activate the line 
                LineName = 'Line.' + 'LINE' + str(i+1)
                ieee_europe.active_element(LineName)
                
                # Read the power flowing in the line 
                power_temp = ieee_europe.get_powers_element()
                df_kW_Power_Lines.iloc[m,i] = power_temp[6] + power_temp[8] + power_temp[10]
                df_kvar_Power_Lines.iloc[m,i] = power_temp[7] + power_temp[9] + power_temp[11]
                
    # ------------------------------------------------------
    # Case 4
    # ------------------------------------------------------
        if Case == 4:
            # Read the voltage of all the PV users (for Reactive Droop Control)
            for i in range(0,n_total_pv):
                UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
                ieee_europe.active_element(UserName)
        
                # Read the voltage of the activated element
                voltage_temp = ieee_europe.get_voltage_element()
                df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase)
                
                # ------------------------------------------------------------
                # Droop Control for Reactive Power
                # ------------------------------------------------------------
                if df_Voltage_PVUsers.iloc[m,i] > VthQ and df_Voltage_PVUsers.iloc[m,i] < Vmax:
                    # Reactive Droop Control
                    Q_max_1 = PV_Users_List.iloc[i,1]*math.tan(math.acos(PV_Users_List.iloc[i,2]))                         # Max value defined by the max power factor
                    Q_max_2 = beta*PV_Users['PV'+PV_Users_List.iloc[i,0]][m]*math.tan(math.acos(PV_Users_List.iloc[i,2]))  # Max value defined by the max power curent available
                    Q_curr = Q_max_2*(df_Voltage_PVUsers.iloc[m,i] - VthQ)/(Vmax - VthQ)                                   # Output reactive power defined by the droop control
                    QPV_Out =  min(Q_max_1, Q_max_2, Q_curr)
                    PV_Users_Reactive['PV'+str(PV_Users_List.iloc[i,0])][m] = -QPV_Out 
                    
                elif df_Voltage_PVUsers.iloc[m,i] > Vmax:
                    # Reactive Droop Control
                    Q_max_1 = PV_Users_List.iloc[i,1]*math.tan(math.acos(PV_Users_List.iloc[i,2]))                          # Max value defined by the max power factor
                    Q_max_2 = beta*PV_Users['PV'+PV_Users_List.iloc[i,0]][m]*math.tan(math.acos(PV_Users_List.iloc[i,2]))   # Max value defined by the max power curent available
                    QPV_Out =  min(Q_max_1, Q_max_2)
                    PV_Users_Reactive['PV'+str(PV_Users_List.iloc[i,0])][m] = -QPV_Out 
                
            # For all the users, set their load consumption as in Load_Users
            # Activate the customer and then update the its consumption
            for i in range(0,n_total):
                loadName = 'Load.' + str(Load_Users.columns[i])       
                ieee_europe.set_kw_load(loadName, Load_Users.iloc[m,i])
                
            # For all the PV users, set their PV generation as in PV_Users
            # Activate the customer and then update its consumption
            # kW PV Generation
            for i in range(0,n_total_pv):
            # kvar PV Absoption
                PVName = 'Generator.' + 'PV' + str(PV_Users_List.iloc[i,0])       
                ieee_europe.set_kvar_PV(PVName, PV_Users_Reactive.iloc[m,i])
                
            # Solve the power flow        
            ieee_europe.solve_DSS_snapshot()
            
            # Check if the power flow converged
            if ieee_europe.circuit_converged() == 1:
                df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
            else:
                df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
                
            # Read the voltage of all the PV users (for Active Droop Control)
            for i in range(0,n_total_pv):
                UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
                ieee_europe.active_element(UserName)
        
                # Read the voltage of the activated element
                voltage_temp = ieee_europe.get_voltage_element()
                df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase)
                
                # ------------------------------------------------------------
                # Droop Control for Reactive Power
                # ------------------------------------------------------------
                if df_Voltage_PVUsers.iloc[m,i] > VthP and df_Voltage_PVUsers.iloc[m,i] < Vmax:
                    # Active Droop Control
                    PV_Out = PV_Users['PV'+PV_Users_List.iloc[i,0]][m] - ((PV_Users_List.iloc[i,1])/(Vmax - VthP))*(df_Voltage_PVUsers.iloc[m,i] - VthP)
                    PV_Users['PV'+PV_Users_List.iloc[i,0]][m] = max(0, PV_Out)
                    
                elif df_Voltage_PVUsers.iloc[m,i] > Vmax:
                    # Active Droop Control
                    PV_Users['PV'+PV_Users_List.iloc[i,0]][m] = 0.0
                
            # For all the users, set their load consumption as in Load_Users
            # Activate the customer and then update the its consumption
            for i in range(0,n_total):
                loadName = 'Load.' + str(Load_Users.columns[i])       
                ieee_europe.set_kw_load(loadName, Load_Users.iloc[m,i])
                
            # For all the PV users, set their PV generation as in PV_Users
            # Activate the customer and then update its consumption
            # kW PV Generation
            for i in range(0,n_total_pv):
            # kW PV Generation
                PVName = 'Generator.' + 'PV' + str(PV_Users_List.iloc[i,0])       
                ieee_europe.set_kw_PV(PVName, PV_Users.iloc[m,i])
                
            # kvar PV Absoption
                PVName = 'Generator.' + 'PV' + str(PV_Users_List.iloc[i,0])       
                ieee_europe.set_kvar_PV(PVName, PV_Users_Reactive.iloc[m,i])
                
            # Solve the power flow        
            ieee_europe.solve_DSS_snapshot()
            
            # Check if the power flow converged
            if ieee_europe.circuit_converged() == 1:
                df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
            else:
                df_PF_Convergence.iloc[m,0] = ieee_europe.circuit_converged()
                
            # Read the active/reactive power from the SE
            p_total, q_total = ieee_europe.get_power_circuit()
            df_pq_se.iloc[m,0] = p_total    # Save the active power 
            df_pq_se.iloc[m,1] = q_total    # Save the rective power 
            
            # Get total losses of the circuit
            p_loss, q_loss = ieee_europe.get_total_losses()
            df_pq_loss.iloc[m,0] = p_loss/1000    # Save the active power losses (in kW)
            df_pq_loss.iloc[m,1] = q_loss/1000    # Save the rective power  losses (in kvar)
        
            # Read the voltage of all the PV consumers
            for i in range(0,n_total_pv):
                UserName = 'Load.' + str(PV_Users_List.iloc[i,0])
                ieee_europe.active_element(UserName)
        
                # Read the voltage of the activated element
                voltage_temp = ieee_europe.get_voltage_element()
                df_Voltage_PVUsers.iloc[m,i] = voltage_temp[0]/(VolageBase)
                
            # Read the input/output power of the distribution transformer
            # Activate the transformer to read the powers
            TransfName = 'Transformer.' + 'TR1'
            ieee_europe.active_element(TransfName)
            
            # Read the input/output power of the distribution transformer
            power_trf_temp = ieee_europe.get_powers_element()
            df_Power_Transf.iloc[m,0] = power_trf_temp[0] + power_trf_temp[2] + power_trf_temp[4] 
            df_Power_Transf.iloc[m,1] = power_trf_temp[1] + power_trf_temp[3] + power_trf_temp[5]
            df_Power_Transf.iloc[m,2] = power_trf_temp[8] + power_trf_temp[10] + power_trf_temp[12]
            df_Power_Transf.iloc[m,3] = power_trf_temp[9] + power_trf_temp[11] + power_trf_temp[13]
            
            # Read the power flowing through all the lines
            for i in range(0,n_total_lines):
                # Activate the line 
                LineName = 'Line.' + 'LINE' + str(i+1)
                ieee_europe.active_element(LineName)
                
                # Read the power flowing in the line 
                power_temp = ieee_europe.get_powers_element()
                df_kW_Power_Lines.iloc[m,i] = power_temp[6] + power_temp[8] + power_temp[10]
                df_kvar_Power_Lines.iloc[m,i] = power_temp[7] + power_temp[9] + power_temp[11]
    
    # Finish the execution
    print('\n')
    print('...Execution Finished.')
     
    #------------------------------------------------------

    # ------------------------------------------------------
    # Notes
    # ------------------------------------------------------
    print('----------------------------------------------------------------------------------------')
    print('NOTE: In OpenDSS, the power conventions is as follows: Input power is always positive.') 
    print('Therefore, output power is always display as negative.')
    print('----------------------------------------------------------------------------------------\n')
    
    # ------------------------------------------------------
    # Save Output Results in Python Variables
    # ------------------------------------------------------
    if Case == 1:
    # Save
        with open('PV_Users_Case_1', 'wb') as PV_Users_Case_1:
            pickle.dump(PV_Users, PV_Users_Case_1, pickle.HIGHEST_PROTOCOL)
    if Case == 2:
        print(0)
    if Case ==3:
        print(0)
    if Case == 4:
        print(0)
    
    # ------------------------------------------------------
    # Save Output Results
    # ------------------------------------------------------
    if Case == 1:
        # Total kW and kvar from the SE
        df_pq_se = df_pq_se.astype(float)
        df_pq_se.to_csv(r'OutputFiles\total_kw_kvar_se_Case_1.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Total kW and kvar Losses
        df_pq_loss = df_pq_loss.astype(float)
        df_pq_loss.to_csv(r'OutputFiles\total_kw_kvar_loss_Case_1.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Votlage from the PV Users
        df_Voltage_PVUsers = df_Voltage_PVUsers.astype(float)
        df_Voltage_PVUsers.to_csv(r'OutputFiles\voltage_pvusers_Case_1.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Convergence Status
        df_PF_Convergence.to_csv(r'OutputFiles\Convergence_status_Case_1.csv', sep=';', float_format='%i',  index=None, header=True)
        
        # Input/output power of the distribution transformer
        df_Power_Transf.to_csv(r'OutputFiles\power_transf_Case_1.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Power flowing in the lines
        df_kvar_Power_Lines.to_csv(r'OutputFiles\kvar_power_lines_Case_1.csv', sep=';', float_format='%.4f',  index=None, header=True)
        df_kW_Power_Lines.to_csv(r'OutputFiles\kW_power_lines_Case_1.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
    if Case == 2:
        # Total kW and kvar from the SE
        df_pq_se = df_pq_se.astype(float)
        df_pq_se.to_csv(r'OutputFiles\total_kw_kvar_se_Case_2.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Total kW and kvar Losses
        df_pq_loss = df_pq_loss.astype(float)
        df_pq_loss.to_csv(r'OutputFiles\total_kw_kvar_loss_Case_2.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Votlage from the PV Users
        df_Voltage_PVUsers = df_Voltage_PVUsers.astype(float)
        df_Voltage_PVUsers.to_csv(r'OutputFiles\voltage_pvusers_Case_2.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Convergence Status
        df_PF_Convergence.to_csv(r'OutputFiles\Convergence_status_Case_2.csv', sep=';', float_format='%i',  index=None, header=True)
        
        # Input/output power of the distribution transformer
        df_Power_Transf.to_csv(r'OutputFiles\power_transf_Case_2.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Power flowing in the lines
        df_kvar_Power_Lines.to_csv(r'OutputFiles\kvar_power_lines_Case_2.csv', sep=';', float_format='%.4f',  index=None, header=True)
        df_kW_Power_Lines.to_csv(r'OutputFiles\kW_power_lines_Case_2.csv', sep=';', float_format='%.4f',  index=None, header=True)
     
    if Case == 3:
         # Total kW and kvar from the SE
        df_pq_se = df_pq_se.astype(float)
        df_pq_se.to_csv(r'OutputFiles\total_kw_kvar_se_Case_3.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Total kW and kvar Losses
        df_pq_loss = df_pq_loss.astype(float)
        df_pq_loss.to_csv(r'OutputFiles\total_kw_kvar_loss_Case_3.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Votlage from the PV Users
        df_Voltage_PVUsers = df_Voltage_PVUsers.astype(float)
        df_Voltage_PVUsers.to_csv(r'OutputFiles\voltage_pvusers_Case_3.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # PV Active Power Output
        PV_Users.to_csv(r'OutputFiles\PV_Users_Case_3_Output.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Convergence Status
        df_PF_Convergence.to_csv(r'OutputFiles\Convergence_status_Case_3.csv', sep=';', float_format='%i',  index=None, header=True)
        
        # Input/output power of the distribution transformer
        df_Power_Transf.to_csv(r'OutputFiles\power_transf_Case_3.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Power flowing in the lines
        df_kvar_Power_Lines.to_csv(r'OutputFiles\kvar_power_lines_Case_3.csv', sep=';', float_format='%.4f',  index=None, header=True)
        df_kW_Power_Lines.to_csv(r'OutputFiles\kW_power_lines_Case_3.csv', sep=';', float_format='%.4f',  index=None, header=True)
    
    if Case == 4:
         # Total kW and kvar from the SE
        df_pq_se = df_pq_se.astype(float)
        df_pq_se.to_csv(r'OutputFiles\total_kw_kvar_se_Case_4.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Total kW and kvar Losses
        df_pq_loss = df_pq_loss.astype(float)
        df_pq_loss.to_csv(r'OutputFiles\total_kw_kvar_loss_Case_4.csv', sep=';', float_format='%.3f',  index=None, header=True)
    
        # Votlage from the PV Users
        df_Voltage_PVUsers = df_Voltage_PVUsers.astype(float)
        df_Voltage_PVUsers.to_csv(r'OutputFiles\voltage_pvusers_Case_4.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # PV Active Power Output
        PV_Users.to_csv(r'OutputFiles\PV_Users_Case_4_Output.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Convergence Status
        df_PF_Convergence.to_csv(r'OutputFiles\Convergence_status_Case_4.csv', sep=';', float_format='%i',  index=None, header=True)
    
        # PV Reactive Power Output
        #PV_Users_Reactive.to_csv(r'OutputFiles\PV_Users_Case_4_Reactive_Output.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Input/output power of the distribution transformer
        df_Power_Transf.to_csv(r'OutputFiles\power_transf_Case_4.csv', sep=';', float_format='%.4f',  index=None, header=True)
        
        # Power flowing in the lines
        df_kvar_Power_Lines.to_csv(r'OutputFiles\kvar_power_lines_Case_4.csv', sep=';', float_format='%.4f',  index=None, header=True)
        df_kW_Power_Lines.to_csv(r'OutputFiles\kW_power_lines_Case_4.csv', sep=';', float_format='%.4f',  index=None, header=True)   
    
