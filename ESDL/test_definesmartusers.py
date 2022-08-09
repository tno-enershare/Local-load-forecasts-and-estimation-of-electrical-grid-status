# -*- coding: utf-8 -*-
"""
Created on Thu Jan 30 11:23:33 2020
@author: 20190124
"""
from ESDL import DefineSmartUsers as dsu

# Funtion to define randomly the number of SmartUsers for the SEM Case of Study

#Inputs
TotalUsers = 87    # Total Number of Users
Penetration = 20    # Percentage of Users with Smart capabilities

[SmartUsers,NormalUsers] = dsu.DefineSmartUsers(TotalUsers,Penetration)

print(SmartUsers)
print(NormalUsers)
