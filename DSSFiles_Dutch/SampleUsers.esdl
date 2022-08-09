<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" description="" name="Untitled EnergySystem" id="e7916d0e-b004-4f2c-b9c9-1ba02f18b4a2">
  <instance xsi:type="esdl:Instance" id="6da601a9-47ff-41b7-88e5-e205c5bcd9a2" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="6296c47e-2ccb-44c6-bc4b-434d8016f3c4" name="Untitled Area">
      <asset xsi:type="esdl:EConnection" id="NormalUser" name="EConnection_7b71">
        <port xsi:type="esdl:InPort" name="In" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="9a7db609-d41c-4459-a237-02793ac72b75"/>
        <port xsi:type="esdl:OutPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="31590e35-5301-42b8-9558-58a013dc5874" name="Out" connectedTo="84df1249-e418-404f-a2c8-cae31b4d8dd9"/>
        <geometry xsi:type="esdl:Point" lat="52.00712089020159" lon="4.916038513183595"/>
      </asset>
	  <asset xsi:type="esdl:ElectricityDemand" id="NormalLoad" name="ElectricityDemand_7eaf">
        <port xsi:type="esdl:InPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="84df1249-e418-404f-a2c8-cae31b4d8dd9" connectedTo="31590e35-5301-42b8-9558-58a013dc5874" name="In"/>
        <geometry xsi:type="esdl:Point" lat="52.00310635691855" lon="4.915609359741212"/>
      </asset>
      <asset xsi:type="esdl:EConnection" id="SmartUser" name="EConnection_9ccc">
        <port xsi:type="esdl:InPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="8bc94715-c81e-4aac-98c4-f75ce9332e97" connectedTo="068670c6-a192-4e0d-8ec2-ef7f64a06e9f 437204e7-4e77-4772-b6c0-b630ad51edb1" name="In"/>
        <port xsi:type="esdl:OutPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="a1447372-62c7-4476-8037-a917876f4f19" name="Out" connectedTo="18dccc26-3bf3-49b6-b4d7-d46adc19c3ac 8a8f663a-7cc5-48a5-9793-1c133dea0e7b"/>
        <geometry xsi:type="esdl:Point" lat="52.007754730960826" lon="4.9610137939453125"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="SmartLoad" name="ElectricityDemand_4a72">
        <port xsi:type="esdl:InPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="18dccc26-3bf3-49b6-b4d7-d46adc19c3ac" connectedTo="a1447372-62c7-4476-8037-a917876f4f19" name="In"/>
        <geometry xsi:type="esdl:Point" lat="52.003423306848866" lon="4.954233169555665"/>
      </asset>
      <asset xsi:type="esdl:CHP" id="CHP" name="CHP_b9c3">
        <port xsi:type="esdl:InPort" name="In" id="53ab93c4-86ca-4df3-8322-b2637e4592dd"/>
        <port xsi:type="esdl:OutPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="068670c6-a192-4e0d-8ec2-ef7f64a06e9f" name="E Out" connectedTo="8bc94715-c81e-4aac-98c4-f75ce9332e97"/>
        <port xsi:type="esdl:OutPort" name="H Out" id="d389be3f-f569-4cf2-8da9-65fd45c5350b"/>
        <geometry xsi:type="esdl:Point" lat="52.00326483216425" lon="4.960498809814454"/>
      </asset>
      <asset xsi:type="esdl:PVPanel" id="PVPanel" name="PVPanel_d7b1">
        <port xsi:type="esdl:OutPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="437204e7-4e77-4772-b6c0-b630ad51edb1" name="Out" connectedTo="8bc94715-c81e-4aac-98c4-f75ce9332e97"/>
        <geometry xsi:type="esdl:Point" lat="52.00326483216425" lon="4.966421127319337"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" id="EV" name="EVChargingStation_a61e">
        <port xsi:type="esdl:InPort" carrier="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8" id="8a8f663a-7cc5-48a5-9793-1c133dea0e7b" connectedTo="a1447372-62c7-4476-8037-a917876f4f19" name="In"/>
        <geometry xsi:type="esdl:Point" lat="52.00331765712146" lon="4.971742630004884"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="7de7e227-6e34-4d55-bc54-421b4ef0ba39">
    <carriers xsi:type="esdl:Carriers" id="98cbdb57-3024-4955-9421-44d05c34df74">
      <carrier xsi:type="esdl:ElectricityCommodity" voltage="240.0" name="Electricity" id="9d35c706-7834-4f2a-aa1b-f06ebc2c39f8"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
