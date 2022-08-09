# -*- coding: utf-8 -*-
"""
Created on Thu Oct  3 15:33:40 2019

@author: 20190124
"""

from OpenDSS.opendss_module import DSS
from datetime import datetime, timedelta
import pandas as pd
import os

# Define the Start, End and time-Step times
simStart = datetime.today()
simEnd = simStart + timedelta(days=1)
simStep = timedelta(minutes=15)

# Define the DSS Class
main_dss_path = '..\\DSSFiles_Dutch\\DutchFeeder.dss'
print(os.path.abspath(main_dss_path))
dss = DSS(path_main_dss=os.path.abspath(main_dss_path))

# Initilize the OpenDSS Simulation
dss.init_simulation(simStart, simEnd, simStep)

# Initialize the Influx DB
dss.init_influxdb(host='localhost', port=8086, dbName='openDSS1', measurementName='openDSS')

# Initial time step
time_stamp = simStart

# For all the time steps
while time_stamp < simEnd:
    # Update the kW of Users
    
    # Power Flow Step Simulation
    dss.step_simulation(pd.to_datetime(time_stamp))
    time_stamp = time_stamp + simStep
    
# Save the data in the DB
dss.publish_results()