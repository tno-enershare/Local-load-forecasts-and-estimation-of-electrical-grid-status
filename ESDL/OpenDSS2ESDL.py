from pyecore.resources import ResourceSet, URI
from ESDL.xmlresource import XMLResource
from OpenDSS.opendss_module import DSS
from os import path
from ESDL.esdl import esdl
import re

UNITS = ['mi', 'km', 'kft', 'm', 'ft', 'in', 'cm']
buses = []
esdl_buses = {}
esdl_lines = {}
lat = 52.23766689325287
long = 5.273780864663422

class OpenDSS2ESDL:
    def __init__(self):
        file = '../DSSFiles_Dutch/DutchFeeder.dss'
        dss = DSS(path.abspath(file))
        dss.compile_DSS()
        esdl_buses = {}

        es = esdl.EnergySystem(id=dss.get_name_circuit(), name=dss.get_name_circuit())
        es.instance.append(
            esdl.Instance(id=dss.get_name_circuit() + 'Instance', name=dss.get_name_circuit() + 'Instance'))
        area = esdl.Area(id='TestArea', name='Area')
        es.instance[0].area = area
        carrier = esdl.ElectricityCommodity(id='Electricity', name='Electricity')
        es.energySystemInformation = esdl.EnergySystemInformation(id="ESI")
        es.energySystemInformation.carriers = esdl.Carriers(id='Carriers')
        es.energySystemInformation.carriers.carrier.append(carrier)

        for line in dss.dssLines.AllNames:
            dss.active_element('Line.' + line)
            length_in_metres = to_metres(dss.dssLines.Length, dss.dssLines.Units)
            cable = esdl.ElectricityCable(id=line, name=line, assetType=dss.dssLines.LineCode,
                                          length=length_in_metres)
            bus1_char = dss.dssLines.Bus1.split('.')
            bus2_char = dss.dssLines.Bus2.split('.')
            from_bus_name = 'Bus' + bus1_char[0]
            to_bus_name = 'Bus' + bus2_char[0]

            if from_bus_name not in esdl_buses:
                from_bus = esdl.Bus(id=from_bus_name, name=from_bus_name)
                dss.activate_bus(bus1_char[0])
                from_bus.geometry = esdl.Point(lat=dss.dssBus.X, lon=dss.dssBus.Y)
                in_ports = []
                out_ports = []
                for i in range(1, len(bus1_char)):
                    in_ports.append(esdl.InPort(id=from_bus_name + 'Phase' + bus1_char[i] + 'In',
                                                name=from_bus_name + 'Phase' + bus1_char[i] + 'In', carrier=carrier))
                    out_ports.append(esdl.OutPort(id=from_bus_name + 'Phase' + bus1_char[i] + 'Out',
                                                  name=from_bus_name + 'Phase' + bus1_char[i] + 'Out', carrier=carrier))
                [from_bus.port.append(in_port) for in_port in in_ports]
                [from_bus.port.append(out_port) for out_port in out_ports]
                esdl_buses[from_bus_name] = from_bus
            else:
                from_bus = esdl_buses[from_bus_name]
            if to_bus_name not in esdl_buses:
                to_bus = esdl.Bus(id=to_bus_name, name=to_bus_name)
                dss.activate_bus(bus2_char[0])
                to_bus.geometry = esdl.Point(lat=dss.dssBus.X, lon=dss.dssBus.Y)
                in_ports = []
                out_ports = []
                for i in range(1, len(bus2_char)):
                    in_ports.append(esdl.InPort(id=to_bus_name + 'Phase' + bus2_char[i] + 'In',
                                                name=to_bus_name + 'Phase' + bus2_char[i] + 'In', carrier=carrier))
                    out_ports.append(esdl.OutPort(id=to_bus_name + 'Phase' + bus2_char[i] + 'Out',
                                                  name=to_bus_name + 'Phase' + bus2_char[i] + 'Out', carrier=carrier))
                [to_bus.port.append(in_port) for in_port in in_ports]
                [to_bus.port.append(out_port) for out_port in out_ports]
                esdl_buses[to_bus_name] = to_bus
            else:
                to_bus = esdl_buses[to_bus_name]

            for i in range(1, len(bus1_char)):
                cable_in = esdl.InPort(id=line + 'Phase' + bus1_char[i] + 'In',
                                       name=line + 'Phase' + bus1_char[i] + 'In', carrier=carrier)
                cable_in.connectedTo.append([p for p in from_bus.port if 'Phase' + bus1_char[i] + 'Out' in p.id].pop())
                cable.port.append(cable_in)

            for i in range(1, len(bus2_char)):
                cable_out = esdl.OutPort(id=line + 'Phase' + bus2_char[i] + 'Out',
                                         name=line + 'Phase' + bus2_char[i] + 'Out', carrier=carrier)
                cable_out.connectedTo.append([p for p in to_bus.port if 'Phase' + bus2_char[i] + 'In' in p.id].pop())
                cable.port.append(cable_out)

            area.asset.append(cable)
            if from_bus not in area.asset:
                area.asset.append(from_bus)
            if to_bus not in area.asset:
                area.asset.append(to_bus)

        for load in dss.dssLoads.AllNames:
            demand_profile = esdl.InfluxDBProfile(id='demand_profile_'+load, name='demand_profile_'+load,
                                                  profileType=esdl.ProfileTypeEnum.from_string('ENERGY_IN_TJ'),
                                                  measurement="nedu_elektriciteit_2015-2018", database="energy_profiles",
                                                  field="E1A", port=8086, host="http://10.30.2.1", multiplier=23.0)
            dss.active_element('Load.' + load)
            bus_char = dss.dssCktElement.BusNames[0].split('.')
            demand = esdl.ElectricityDemand(id=load, name=load)
            area.asset.append(demand)
            connected_bus = esdl_buses['Bus' + bus_char[0]]
            for i in range(1, len(bus_char)):
                load_in_port = esdl.InPort(id=load + 'Phase' + bus_char[i] + 'In',
                                           name=load + 'Phase' + bus_char[i] + 'In', carrier=carrier,
                                           profile=[demand_profile])
                load_in_port.connectedTo.append(
                    [p for p in connected_bus.port if 'Phase' + bus_char[i] + 'Out' in p.id].pop())
                demand.port.append(load_in_port)

        for gen in dss.dssGenerators.AllNames:
            pv_profile = esdl.InfluxDBProfile(id='pv_profile_'+gen, name='pv_profile_'+gen,
                                              profileType=esdl.ProfileTypeEnum.from_string('ENERGY_IN_TJ'),
                                              measurement="solar_relative_2011-2016", database="energy_profiles",
                                              field="value", port=8086, host="http://10.30.2.1", multiplier=20.0)
            dss.active_element('Generator.' + gen)
            bus_char = dss.dssCktElement.BusNames[0].split('.')
            pv = esdl.PVPanel(id=gen, name=gen)
            area.asset.append(pv)
            connected_bus = esdl_buses['Bus' + bus_char[0]]
            for i in range(1, len(bus_char)):
                pv_out_port = esdl.OutPort(id=gen + 'Phase' + bus_char[i] + 'Out',
                                           name=gen + 'Phase' + bus_char[i] + 'Out', carrier=carrier,
                                           profile=[pv_profile])
                pv_out_port.connectedTo.append(
                    [p for p in connected_bus.port if 'Phase' + bus_char[i] + 'In' in p.id].pop())
                pv.port.append(pv_out_port)

        for tr in dss.dssCircuit.Transformers.AllNames:
            dss.active_element('Transformer.' + tr)
            transformer = esdl.Transformer(id=tr, name=tr, capacity=dss.dssCircuit.Transformers.kva)
            trans_in_port = esdl.InPort(id=tr + 'In', name=tr + 'In', carrier=carrier)
            trans_out_port = esdl.OutPort(id=tr + 'Out', name=tr + 'Out', carrier=carrier)
            transformer.port.append(trans_in_port)
            transformer.port.append(trans_out_port)

            area.asset.append(transformer)

            in_bus = dss.dssCktElement.BusNames[0]
            in_bus_esdl = esdl.Bus(id='Bus' + in_bus, name='Bus' + in_bus)
            in_bus_out_port = esdl.OutPort(id='Bus' + in_bus + 'Out', name='Bus' + in_bus + 'Out', carrier=carrier)
            in_bus_esdl.port.append(in_bus_out_port)
            area.asset.append(in_bus_esdl)
            trans_in_port.connectedTo.append(in_bus_out_port)

            out_bus = dss.dssCktElement.BusNames[1]
            out_bus_esdl = esdl.Bus(id='Bus' + out_bus, name='Bus' + out_bus)
            area.asset.append(out_bus_esdl)
            out_bus_in_port = esdl.InPort(id='Bus' + out_bus + 'In', name='Bus' + out_bus + 'In', carrier=carrier)
            out_bus_esdl.port.append(out_bus_in_port)
            trans_out_port.connectedTo.append(out_bus_in_port)

        rset = ResourceSet()
        rset.resource_factory['esdl'] = lambda uri: XMLResource(uri)
        rset.metamodel_registry[esdl.nsURI] = esdl
        resource = rset.create_resource(URI(dss.get_name_circuit() + '00.esdl'))
        resource.append(es)
        resource.save()

    print('done!')


def to_metres(length, unit):
    # ['mi', 'km', 'kft', 'm', 'ft', 'in', 'cm']
    mult = 1
    if unit == 1:
        mult = 1609.34
    elif unit == 2:
        mult = 1000
    elif unit == 3:
        mult = 304.8
    elif unit == 4:
        mult = 1
    elif unit == 5:
        mult = 0.3048
    elif unit == 6:
        mult = 0.0254
    elif unit == 7:
        mult = 0.01
    else:
        raise RuntimeError('length not provided!')

    return mult * length


if __name__ == '__main__':
    OpenDSS2ESDL()
