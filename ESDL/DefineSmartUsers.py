# -*- coding: utf-8 -*-
"""
Created on Thu Jan 30 11:42:31 2020

@author: 20190124
"""
import random as rnd

def DefineSmartUsers(TotalUsers, Penetration):
    # Total Number of Smart Users
    TotalSmartUsers = round(TotalUsers*(Penetration/100))
    
    # List of Smart Users
    SmartUsers = rnd.sample(range(1,TotalUsers), TotalSmartUsers)
    
    # List of Normal Users
    NormalUsers = []
    for user in range(1,TotalUsers+1):
        if user not in SmartUsers:
            NormalUsers.append(user)
    
    SmartUsers.sort()
    NormalUsers.sort()
    return SmartUsers, NormalUsers
