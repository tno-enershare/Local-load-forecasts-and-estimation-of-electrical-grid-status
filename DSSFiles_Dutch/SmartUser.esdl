<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Untitled EnergySystem" description="" id="e7916d0e-b004-4f2c-b9c9-1ba02f18b4a2">
  <instance xsi:type="esdl:Instance" id="6da601a9-47ff-41b7-88e5-e205c5bcd9a2" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="6296c47e-2ccb-44c6-bc4b-434d8016f3c4" name="Untitled Area">
      <asset xsi:type="esdl:EConnection" id="SmartUser" name="SmartUser">
        <port xsi:type="esdl:InPort" carrier="Electricity" id="EconnIn" connectedTo="CHPEOut PVPOut" name="In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" id="EconnOut" name="Out" connectedTo="EDemandIn EVIn"/>
        <geometry xsi:type="esdl:Point" lat="52.007754730960826" lon="4.9610137939453125"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="EDemand" name="EDemand">
        <port xsi:type="esdl:InPort" carrier="Electricity" id="EDemandIn" connectedTo="EconnOut" name="In"/>
        <geometry xsi:type="esdl:Point" lat="52.003423306848866" lon="4.954233169555665"/>
      </asset>
      <asset xsi:type="esdl:CHP" id="CHP" name="CHP">
        <port xsi:type="esdl:InPort" name="In" carrier="Gas" id="CHPIn" connectedTo="GConnectionOut"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" id="CHPEOut" name="E Out" connectedTo="EconnIn"/>
        <port xsi:type="esdl:OutPort" carrier="Heat" name="H Out" id="CHPHOut" connectedTo="HDemandIn"/>
        <geometry xsi:type="esdl:Point" lat="52.00326483216425" lon="4.960498809814454"/>
      </asset>
      <asset xsi:type="esdl:PVPanel" id="PVPanel" name="PVPanel">
        <port xsi:type="esdl:OutPort" carrier="Electricity" id="PVPOut" name="Out" connectedTo="EconnIn"/>
        <geometry xsi:type="esdl:Point" lat="52.00326483216425" lon="4.966421127319337"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" id="EV" name="EV">
        <port xsi:type="esdl:InPort" carrier="Electricity" id="EVIn" connectedTo="EconnOut" name="In"/>
        <geometry xsi:type="esdl:Point" lat="52.00331765712146" lon="4.971742630004884"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HDemand" name="HDemand">
        <port xsi:type="esdl:InPort" name="In" carrier="Heat" id="HDemandIn" connectedTo="CHPHOut"/>
        <geometry xsi:type="esdl:Point" lat="52.00328440311455" lon="4.958503246307374"/>
      </asset>
      <asset xsi:type="esdl:GConnection" id="GConnection" name="GConnection">
        <port xsi:type="esdl:InPort" name="In" carrier="Gas" id="GConnectionIn"/>
        <port xsi:type="esdl:OutPort" carrier="Gas" id="GConnectionOut" name="Out" connectedTo="CHPIn"/>
        <geometry xsi:type="esdl:Point" lat="52.00155435206711" lon="4.961292743682862"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="ESI">
    <carriers xsi:type="esdl:Carriers" id="Carriers">
      <carrier xsi:type="esdl:ElectricityCommodity" voltage="240.0" name="Electricity" id="Electricity"/>
      <carrier xsi:type="esdl:GasCommodity" name="Gas" id="Gas"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="Heat"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
