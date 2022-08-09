# -*- coding: utf-8 -*-
"""
Created on Thu Aug 29 08:59:26 2019

@author: 20190124
"""

import numpy as np               # importing NumPy (low-level data manager)
import pandas as pd              # importing Pandas (high-level data manager)
import csv                       # importing CSV reader/writer
import matplotlib.pyplot as plt  # importing a MATLAB-like ploting package
import win32com.client           # importing Wincom client to call OpenDSS
from pylab import *  

# ------------------------------------------------------
#  Read the CSV files from the ieee_european case
# ------------------------------------------------------

# List of PV users
PV_Users_List = pd.read_csv(r'PV_Users_List.csv', sep = ';')
n_total_pv = PV_Users_List.shape[0]

# No PV Case    
df_kw_kvar_se_Case_1 = pd.read_csv(r'OutputFiles\total_kw_kvar_se.csv', sep = ';', dtype=np.float64)
df_kw_kvar_loss_Case_1 = pd.read_csv(r'OutputFiles\total_kw_kvar_loss.csv', sep = ';', dtype=np.float64)
df_Voltage_PV_Users_Case_1 = pd.read_csv(r'OutputFiles\voltage_pvusers.csv', sep = ';', dtype=np.float64)

# ------------------------------------------------------
#  Plot the data
# ------------------------------------------------------

# Active Power from the SE
plt.clf()  # Clear figure
plt.plot(df_kw_kvar_se_Case_1.index,df_kw_kvar_se_Case_1.iloc[:,0], 'b')
plt.title('Active Power from the SE', fontsize=10, color='k')
plt.xlabel('Time')
plt.ylabel('[kW]')
plt.grid(linestyle='--')            # Put the grid behind the figure
plt.show()

# Active Power from the SE
plt.clf()  # Clear figure
plt.plot(df_kw_kvar_se_Case_1.index,df_kw_kvar_se_Case_1.iloc[:,1], 'b')
plt.title('Reactive Power from the SE', fontsize=10, color='k')
plt.xlabel('Time')
plt.ylabel('[kW]')
plt.grid(linestyle='--')            # Put the grid behind the figure
plt.show()

    
# Total active/reactive power losses
plt.clf()  # Clear figure
plt.plot(df_kw_kvar_loss_Case_1.index,df_kw_kvar_loss_Case_1.iloc[:,0], 'b')
plt.title('Active Power Losses', fontsize=10, color='k')
plt.xlabel('Time')
plt.ylabel('[kW]')
plt.grid(linestyle='--')            # Put the grid behind the figure
plt.show()

# Voltage of the PV Users
plt.clf()  # Clear figure
for m in range(0,15):
    PV_User = str(PV_Users_List.iloc[m,0])
    plt.plot(df_Voltage_PV_Users_Case_1.index,df_Voltage_PV_Users_Case_1.iloc[:,m], 'b')
    plt.title(PV_User, fontsize=10, color='k')
    plt.xlabel('Time') 
    plt.ylabel('Voltage [p.u.]')
    plt.grid(linestyle='--')            # Put the grid behind the figure
    plt.show()
