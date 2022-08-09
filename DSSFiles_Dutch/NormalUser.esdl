<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" description="" name="Untitled EnergySystem" id="e7916d0e-b004-4f2c-b9c9-1ba02f18b4a2">
  <instance xsi:type="esdl:Instance" id="6da601a9-47ff-41b7-88e5-e205c5bcd9a2" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="6296c47e-2ccb-44c6-bc4b-434d8016f3c4" name="Untitled Area">
      <asset xsi:type="esdl:EConnection" id="NormalUser" name="NormalUser">
        <port xsi:type="esdl:InPort" name="In" carrier="Electricity" id="EConnIn"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" id="EConnOut" name="EConnOut" connectedTo="EDemandIn"/>
        <geometry xsi:type="esdl:Point" lat="52.00712089020159" lon="4.916038513183595"/>
      </asset>
	  <asset xsi:type="esdl:ElectricityDemand" id="EDemand" name="EDemand">
        <port xsi:type="esdl:InPort" carrier="Electricity" id="EDemandIn" connectedTo="EConnOut" name="EDemandIn"/>
        <geometry xsi:type="esdl:Point" lat="52.00310635691855" lon="4.915609359741212"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="ESI">
    <carriers xsi:type="esdl:Carriers" id="Carriers">
      <carrier xsi:type="esdl:ElectricityCommodity" voltage="240.0" name="Electricity" id="Electricity"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
