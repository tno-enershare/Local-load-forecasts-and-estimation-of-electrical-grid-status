import json

from ESDL.EcoreResource import EcoreResource
from ESDL import DefineSmartUsers as dsu
import pandas as pd
import numpy as np

# Inputs
from ESDL.esdl import EConnection, esdl, ElectricityDemand, EVChargingStation, PVPanel, CHP

TotalUsers = 87  # Total Number of Users
Penetration = 20  # Percentage of Users with Smart capabilities

# Funtion to define randomly the number of SmartUsers for the SEM Case of Study
[SmartUsers, NormalUsers] = dsu.DefineSmartUsers(TotalUsers, Penetration)

template_res = EcoreResource(
    r'C:\Users\subramaniana\Projects\SEM\opendss-module\DSSFiles_Dutch\dutch_feeder_template.esdl')
template_es = template_res.get_resource_contents()
template_asset_list = template_es.instance[0].area.asset

with open(r'C:\Users\subramaniana\Projects\SEM\opendss-module\DSSFiles_Dutch\user_bus_dict.json') as json_file:
    user_dict = json.load(json_file)

loads = []
gens = []

for user in SmartUsers:
    smart_res = EcoreResource(r'C:\Users\subramaniana\Projects\SEM\opendss-module\DSSFiles_Dutch\SmartUser.esdl')
    smart_es = smart_res.get_resource_contents()
    smart_asset_list = smart_es.instance[0].area.asset

    user_name = 'user' + str(user)
    print(user_name + ' is a smart user!')
    phase_name = user_name + user_dict[user_name]['Phase']
    bus_port = user_dict[user_name]['Bus']
    while len(smart_asset_list) > 0:
        a = smart_asset_list[0]
        if isinstance(a, EConnection):
            a.id = user_name
            a.name = user_name
            bus_port_esdl = None
            in_port_esdl = None
            for p in esdl.OutPort.allInstances(resources=[template_res.get_resource()]):
                if bus_port == p.id:
                    bus_port_esdl = p
            for p in a.port:
                if isinstance(p, esdl.InPort):
                    in_port_esdl = p

            in_port_esdl.connectedTo.append(bus_port_esdl)
            a.name = bus_port_esdl.energyasset.name
        else:
            a.id = user_name + a.id
            a.name = user_name + a.name
            if isinstance(a, ElectricityDemand):
                loads.append(a.id)
            elif isinstance(a, EVChargingStation):
                loads.append(a.id)
            elif isinstance(a, PVPanel):
                gens.append(a.id)
            elif isinstance(a, CHP):
                gens.append(a.id)

        for p in a.port:
            p.id = p.id + phase_name
            p.name = p.name + phase_name
            if p.carrier is not None:
                for c in template_es.energySystemInformation.carriers.carrier:
                    if c.id == p.carrier.id:
                        p.carrier = c
        template_asset_list.append(a)

for user in NormalUsers:
    normal_res = EcoreResource(r'C:\Users\subramaniana\Projects\SEM\opendss-module\DSSFiles_Dutch\NormalUser.esdl')
    normal_es = normal_res.get_resource_contents()
    normal_asset_list = normal_es.instance[0].area.asset

    user_name = 'user' + str(user)
    print(user_name + ' is a normal user!')
    phase_name = user_name + user_dict[user_name]['Phase']
    bus_port = user_dict[user_name]['Bus']
    while len(normal_asset_list) > 0:
        a = normal_asset_list[0]
        if isinstance(a, EConnection):
            a.id = user_name
            a.name = user_name
            bus_port_esdl = None
            in_port_esdl = None
            for p in esdl.OutPort.allInstances(resources=[template_res.get_resource()]):
                if bus_port == p.id:
                    bus_port_esdl = p
            for p in a.port:
                if isinstance(p, esdl.InPort):
                    p.id = p.id + phase_name
                    p.name = p.name + phase_name
                    in_port_esdl = p
            in_port_esdl.connectedTo.append(bus_port_esdl)
            a.name = bus_port_esdl.energyasset.name
        else:
            a.id = user_name + a.id
            a.name = user_name + a.name
            if isinstance(a, ElectricityDemand):
                loads.append(a.id)
            elif isinstance(a, EVChargingStation):
                loads.append(a.id)
            elif isinstance(a, PVPanel):
                gens.append(a.id)
            elif isinstance(a, CHP):
                gens.append(a.id)

        for p in a.port:
            p.id = p.id + phase_name
            p.name = p.name + phase_name
            if p.carrier is not None:
                for c in template_es.energySystemInformation.carriers.carrier:
                    if c.id == p.carrier.id:
                        p.carrier = c
        template_asset_list.append(a)

    template_res.to_file('scenario.esdl')

    loads_df = pd.DataFrame(np.random.randint(0, 100, size=(96, len(loads))), index=range(96), columns=loads)
    gens_df = pd.DataFrame(0.0, index=range(96), columns=gens)

    loads_df.to_csv(path_or_buf='test_loads.csv', sep=';', index=False)
    gens_df.to_csv(path_or_buf='test_gens.csv', sep=';', index=False)