# -*- coding: utf-8 -*-
"""
SMart Energy Management Proejct: DSO Logic
DSO actions:
    In case the voltage of the user is higher than a threshold, then 'Overvoltage' action will be send.
    In case the voltage of the user is lower than a threshold, then 'Undervoltage' action will be send.
    Otherwise, 'Normal' action will be send.
"""
import pandas as pd
import random


def dso_logic(message):
    print('Received Message')
    dso_actions = {}
    vth_min = 0.95
    vth_max = 1.10
    for idx in message.index:
        if message['Voltage'][idx] < vth_min:
            dso_actions.update({message['USER'][idx]:'Undervoltage'})
        elif message['Voltage'][idx] > vth_max:
            dso_actions.update({message['USER'][idx]:'Overvoltage'})
        else:
            dso_actions.update({message['USER'][idx]:'Normal'})

    return dso_actions
        

if __name__ == '__main__':
    
    # Aggregator Message
    message_input = pd.DataFrame(columns=['USER','Voltage'], index = [i for i in range(0,14)])
    for idx in message_input.index:
        message_input['USER'][idx]='USER' + str(idx+1) +'DEMAND'
        message_input['Voltage'][idx]=random.uniform(0.8,1.15)

    dso_actions = dso_logic(message_input)
    print(dso_actions)