<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="11" id="7bf05c90-5c86-4c3b-bc88-2e3e0fc19124" description="" esdlVersion="v2111" name="De_Nieuwe_Dokken">
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="ecb2d552-dc0c-4c3b-9844-a0dfd3592d31">
    <area xsi:type="esdl:Area" id="bb8bff56-b5d4-48e1-91b7-05d756235d5e" name="Untitled area">
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation0" id="EVChargingStation0" assetType="DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation0Phase1In" connectedTo="Bus0Phase1Out" carrier="Electricity" name="EVChargingStation0Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-a0846a34-a5a8-415e-9065-edcd2cf79a55-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-a0846a34-a5a8-415e-9065-edcd2cf79a55-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7356680631637578" lat="51.06723462986889"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation1" id="EVChargingStation1" assetType="DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation1Phase1In" connectedTo="Bus5Phase1Out" carrier="Electricity" name="EVChargingStation1Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-b0e55bca-9a59-4632-bdf7-17bb41f5452a-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-b0e55bca-9a59-4632-bdf7-17bb41f5452a-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7358450889587407" lat="51.06686415301885"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation2" id="EVChargingStation2" assetType="DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation2Phase1In" connectedTo="Bus7Phase1Out" carrier="Electricity" name="EVChargingStation2Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-d05dd75d-e76e-4077-8cf0-241075320a56-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-d05dd75d-e76e-4077-8cf0-241075320a56-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7363278865814213" lat="51.06692814468661"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation3" id="EVChargingStation3" assetType="DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation3Phase1In" connectedTo="Bus9Phase1Out" carrier="Electricity" name="EVChargingStation3Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-3d7f1119-3c04-4233-a4d8-808ba4f3be1d-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-3d7f1119-3c04-4233-a4d8-808ba4f3be1d-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.735963106155396" lat="51.066587977437834"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation4" id="EVChargingStation4" assetType="DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation4Phase1In" connectedTo="Bus10Phase1Out" carrier="Electricity" name="EVChargingStation4Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-ebd0ffa3-ecb1-4d61-9e10-1f113d3c48f2-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-ebd0ffa3-ecb1-4d61-9e10-1f113d3c48f2-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736290335655213" lat="51.066641865485444"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation5" id="EVChargingStation5" assetType="DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation5Phase1In" connectedTo="Bus11Phase1Out" carrier="Electricity" name="EVChargingStation5Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-43817948-eb6c-4f73-bd31-4a715e5cf19d-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-43817948-eb6c-4f73-bd31-4a715e5cf19d-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73660683631897" lat="51.06670922545679"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation6" id="EVChargingStation6" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation6Phase1In" connectedTo="Bus13Phase1Out" carrier="Electricity" name="EVChargingStation6Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-2a78f60b-500c-4bf2-aae3-250b4bc43ed6-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-2a78f60b-500c-4bf2-aae3-250b4bc43ed6-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736091852188111" lat="51.06637112910307"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation7" id="EVChargingStation7" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation7Phase1In" connectedTo="Bus14Phase1Out" carrier="Electricity" name="EVChargingStation7Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-e04ee3a6-dff1-4dd9-9c39-9d743a5a2ce6-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-e04ee3a6-dff1-4dd9-9c39-9d743a5a2ce6-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736435174942017" lat="51.066398073260984"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation8" id="EVChargingStation8" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation8Phase1In" connectedTo="Bus15Phase1Out" carrier="Electricity" name="EVChargingStation8Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-d7179c26-a194-4222-b42c-bf5ed36c5613-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-d7179c26-a194-4222-b42c-bf5ed36c5613-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="3.736747652292252" lat="51.066501889863105"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation9" id="EVChargingStation9" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation9Phase1In" connectedTo="Bus16Phase1Out" carrier="Electricity" name="EVChargingStation9Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-731239a2-080a-4203-b7b2-006658322df1-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-731239a2-080a-4203-b7b2-006658322df1-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7361776828765874" lat="51.06616352973494"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation10" id="EVChargingStation10" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation10Phase1In" connectedTo="Bus17Phase1Out" carrier="Electricity" name="EVChargingStation10Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-be4242bf-d580-4033-b570-a432c8eace31-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-be4242bf-d580-4033-b570-a432c8eace31-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7365639209747314" lat="51.06623089040237"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation11" id="EVChargingStation11" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation11Phase1In" connectedTo="Bus18Phase1Out" carrier="Electricity" name="EVChargingStation11Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-c2854ac7-6439-472c-8f0b-dca2c4daa02e-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-c2854ac7-6439-472c-8f0b-dca2c4daa02e-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736960887908936" lat="51.06630835504874"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation12" id="EVChargingStation12" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation12Phase1In" connectedTo="Bus19Phase1Out" carrier="Electricity" name="EVChargingStation12Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-2caae213-99dd-4628-b51f-5f284d36d3a4-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-2caae213-99dd-4628-b51f-5f284d36d3a4-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7362688779830937" lat="51.06595134299178"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation13" id="EVChargingStation13" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation13Phase1In" connectedTo="Bus20Phase1Out" carrier="Electricity" name="EVChargingStation13Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-63430198-fdc8-4ebd-8f5a-815e5dd442f2-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-63430198-fdc8-4ebd-8f5a-815e5dd442f2-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736687302589417" lat="51.066032176151495"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation14" id="EVChargingStation14" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation14Phase1In" connectedTo="Bus21Phase1Out" carrier="Electricity" name="EVChargingStation14Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-ff675ce0-f846-4d4f-975d-6c3b2ef72ed3-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-ff675ce0-f846-4d4f-975d-6c3b2ef72ed3-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737057447433472" lat="51.06612311328743"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation15" id="EVChargingStation15" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation15Phase1In" connectedTo="Bus22Phase1Out" carrier="Electricity" name="EVChargingStation15Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-dae92b76-3cda-486c-8730-2992157e2426-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-dae92b76-3cda-486c-8730-2992157e2426-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73636543750763" lat="51.06572905107476"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation16" id="EVChargingStation16" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation16Phase1In" connectedTo="Bus25Phase1Out" carrier="Electricity" name="EVChargingStation16Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-69cda93a-d1ca-4b42-8643-7bad148ef403-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-69cda93a-d1ca-4b42-8643-7bad148ef403-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736805319786072" lat="51.06581325268409"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation17" id="EVChargingStation17" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation17Phase1In" connectedTo="Bus26Phase1Out" carrier="Electricity" name="EVChargingStation17Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-e22bb50b-774f-441e-b1ba-71478a12bf50-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-e22bb50b-774f-441e-b1ba-71478a12bf50-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7372022867202763" lat="51.065880613861246"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation18" id="EVChargingStation18" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation18Phase1In" connectedTo="Bus23Phase1Out" carrier="Electricity" name="EVChargingStation18Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-5fc3a636-b982-42e4-8076-f0a0bd254df4-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-5fc3a636-b982-42e4-8076-f0a0bd254df4-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736461997032166" lat="51.06547981341347"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation19" id="EVChargingStation19" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation19Phase1In" connectedTo="Bus24Phase1Out" carrier="Electricity" name="EVChargingStation19Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-8e0a69dc-5519-45be-b6a1-eb06c5f87dc1-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-8e0a69dc-5519-45be-b6a1-eb06c5f87dc1-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736869692802429" lat="51.0655471750759"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation20" id="EVChargingStation20" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation20Phase1In" connectedTo="Bus27Phase1Out" carrier="Electricity" name="EVChargingStation20Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-0cb0763d-ee85-424d-8c66-fd603d7e3c7e-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-0cb0763d-ee85-424d-8c66-fd603d7e3c7e-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737282752990723" lat="51.06562464086645"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation21" id="EVChargingStation21" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation21Phase1In" connectedTo="Bus28Phase1Out" carrier="Electricity" name="EVChargingStation21Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-a0e2943f-f432-4362-ae3c-0ae0411fc800-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-a0e2943f-f432-4362-ae3c-0ae0411fc800-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7365639209747314" lat="51.065304672632415"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation22" id="EVChargingStation22" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation22Phase1In" connectedTo="Bus29Phase1Out" carrier="Electricity" name="EVChargingStation22Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-ca5d9604-5b99-499d-8be8-51b27d224b68-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-ca5d9604-5b99-499d-8be8-51b27d224b68-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7369662523269658" lat="51.06539897928917"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation23" id="EVChargingStation23" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation23Phase1In" connectedTo="Bus30Phase1Out" carrier="Electricity" name="EVChargingStation23Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-c2fd8a92-6bef-4479-9dff-acd9390a019d-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-c2fd8a92-6bef-4479-9dff-acd9390a019d-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73735785484314" lat="51.06546970915566"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation24" id="EVChargingStation24" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation24Phase1In" connectedTo="Bus31Phase1Out" carrier="Electricity" name="EVChargingStation24Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-ba685fa6-5bb7-4c7d-92d8-9dfbcc6df0ec-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-ba685fa6-5bb7-4c7d-92d8-9dfbcc6df0ec-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736665844917298" lat="51.065122794966086"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation25" id="EVChargingStation25" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation25Phase1In" connectedTo="Bus32Phase1Out" carrier="Electricity" name="EVChargingStation25Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-d6d7a432-222c-4cf2-b3e5-04fdf0016c32-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-d6d7a432-222c-4cf2-b3e5-04fdf0016c32-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737089633941651" lat="51.06518342093427"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation26" id="EVChargingStation26" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation26Phase1In" connectedTo="Bus33Phase1Out" carrier="Electricity" name="EVChargingStation26Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-cf51084e-0aba-4c66-8576-1fb7fb754049-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-cf51084e-0aba-4c66-8576-1fb7fb754049-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737486600875855" lat="51.06525415113013"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation27" id="EVChargingStation27" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation27Phase1In" connectedTo="Bus2Phase1Out" carrier="Electricity" name="EVChargingStation27Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-de8eeb80-d391-4129-bcbd-d43540b4d249-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-de8eeb80-d391-4129-bcbd-d43540b4d249-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7357270717620854" lat="51.06706929771566"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation28" id="EVChargingStation28" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation28Phase1In" connectedTo="Bus3Phase1Out" carrier="Electricity" name="EVChargingStation28Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-97ef7199-ba2e-49fe-a942-3e407ccb897d-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-97ef7199-ba2e-49fe-a942-3e407ccb897d-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.735984563827515" lat="51.06712823715164"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation29" id="EVChargingStation29" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation29Phase1In" connectedTo="Bus6Phase1Out" carrier="Electricity" name="EVChargingStation29Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-8ea769e2-9e82-4c98-8a02-96bba75a4ab7-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-8ea769e2-9e82-4c98-8a02-96bba75a4ab7-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736065030097962" lat="51.0669061005266"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation30" id="EVChargingStation30" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation30Phase1In" connectedTo="Bus4Phase1Out" carrier="Electricity" name="EVChargingStation30Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-414dceaf-92e4-458c-a2aa-17a03a8ecee1-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-414dceaf-92e4-458c-a2aa-17a03a8ecee1-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7363278865814213" lat="51.067241532834345"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation31" id="EVChargingStation31" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation31Phase1In" connectedTo="Bus1Phase1Out" carrier="Electricity" name="EVChargingStation31Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-5f70e5b4-6ded-473a-b19b-90916157eeb3-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-5f70e5b4-6ded-473a-b19b-90916157eeb3-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7358799576759343" lat="51.067414982314574"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation32" id="EVChargingStation32" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation32Phase1In" connectedTo="Bus8Phase1Out" carrier="Electricity" name="EVChargingStation32Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-ff8cd1b6-89bb-42f6-9300-5e8f507fde9e-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-ff8cd1b6-89bb-42f6-9300-5e8f507fde9e-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7367033958435063" lat="51.067047874879684"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStation33" id="EVChargingStation33" assetType="non-DR">
        <port xsi:type="esdl:InPort" id="EVChargingStation33Phase1In" connectedTo="Bus12Phase1Out" carrier="Electricity" name="EVChargingStation33Phase1In">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="EVChargingStation_Aggregate" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" multiplier="0.0390625" endDate="2022-03-01T00:00:00.000000" port="8086" id="ev-charging-station-6ab29b00-94f2-446c-ac28-ab8dfee10d20-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-ev-6ab29b00-94f2-446c-ac28-ab8dfee10d20-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737035989761353" lat="51.06682568713558"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus0" id="Bus0">
        <port xsi:type="esdl:InPort" id="Bus0Phase1In" connectedTo="Line14Phase1Out" carrier="Electricity" name="Bus0Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation0Phase1In" id="Bus0Phase1Out" carrier="Electricity" name="Bus0Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7356761097908024" lat="51.067204701516545"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus1" id="Bus1">
        <port xsi:type="esdl:InPort" id="Bus1Phase1In" connectedTo="Line13Phase1Out" carrier="Electricity" name="Bus1Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation31Phase1In" id="Bus1Phase1Out" carrier="Electricity" name="Bus1Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.735902756452561" lat="51.067372307792525"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2" id="Bus2">
        <port xsi:type="esdl:InPort" id="Bus2Phase1In" connectedTo="Line17Phase1Out" carrier="Electricity" name="Bus2Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation27Phase1In" id="Bus2Phase1Out" carrier="Electricity" name="Bus2Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7357364594936375" lat="51.067018671915505"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus3" id="Bus3">
        <port xsi:type="esdl:InPort" id="Bus3Phase1In" connectedTo="Line16Phase1Out" carrier="Electricity" name="Bus3Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation28Phase1In Line17Phase1In" id="Bus3Phase1Out" carrier="Electricity" name="Bus3Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736014068126679" lat="51.067095293251484"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus4" id="Bus4">
        <port xsi:type="esdl:InPort" id="Bus4Phase1In" connectedTo="Line15Phase1Out" carrier="Electricity" name="Bus4Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation30Phase1In" id="Bus4Phase1Out" carrier="Electricity" name="Bus4Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7363614141941075" lat="51.067210646012555"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus5" id="Bus5">
        <port xsi:type="esdl:InPort" id="Bus5Phase1In" connectedTo="Line21Phase1Out" carrier="Electricity" name="Bus5Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation1Phase1In" id="Bus5Phase1Out" carrier="Electricity" name="Bus5Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73586118221283" lat="51.06681911904958"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus6" id="Bus6">
        <port xsi:type="esdl:InPort" id="Bus6Phase1In" connectedTo="Line20Phase1Out" carrier="Electricity" name="Bus6Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation29Phase1In Line21Phase1In" id="Bus6Phase1Out" carrier="Electricity" name="Bus6Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7360811233520512" lat="51.06686795485155"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7" id="Bus7">
        <port xsi:type="esdl:InPort" id="Bus7Phase1In" connectedTo="Line19Phase1Out" carrier="Electricity" name="Bus7Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation2Phase1In Line20Phase1In" id="Bus7Phase1Out" carrier="Electricity" name="Bus7Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7363520264625554" lat="51.066885636767154"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8" id="Bus8">
        <port xsi:type="esdl:InPort" id="Bus8Phase1In" connectedTo="Line18Phase1Out" carrier="Electricity" name="Bus8Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation32Phase1In" id="Bus8Phase1Out" carrier="Electricity" name="Bus8Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736740946769715" lat="51.067017829922094"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus9" id="Bus9">
        <port xsi:type="esdl:InPort" id="Bus9Phase1In" connectedTo="Line25Phase1Out" carrier="Electricity" name="Bus9Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation3Phase1In" id="Bus9Phase1Out" carrier="Electricity" name="Bus9Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.735969811677933" lat="51.066547995211884"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus10" id="Bus10">
        <port xsi:type="esdl:InPort" id="Bus10Phase1In" connectedTo="Line24Phase1Out" carrier="Electricity" name="Bus10Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation4Phase1In Line25Phase1In" id="Bus10Phase1Out" carrier="Electricity" name="Bus10Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736313134431839" lat="51.06660525130989"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus11" id="Bus11">
        <port xsi:type="esdl:InPort" id="Bus11Phase1In" connectedTo="Line23Phase1Out" carrier="Electricity" name="Bus11Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation5Phase1In Line24Phase1In" id="Bus11Phase1Out" carrier="Electricity" name="Bus11Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7366282939910893" lat="51.066675979333176"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus12" id="Bus12">
        <port xsi:type="esdl:InPort" id="Bus12Phase1In" connectedTo="Line22Phase1Out" carrier="Electricity" name="Bus12Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation33Phase1In" id="Bus12Phase1Out" carrier="Electricity" name="Bus12Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7370641529560094" lat="51.06679470112928"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus13" id="Bus13">
        <port xsi:type="esdl:InPort" id="Bus13Phase1In" connectedTo="Line28Phase1Out" carrier="Electricity" name="Bus13Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation6Phase1In" id="Bus13Phase1Out" carrier="Electricity" name="Bus13Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7361052632331853" lat="51.066334968225334"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus14" id="Bus14">
        <port xsi:type="esdl:InPort" id="Bus14Phase1In" connectedTo="Line27Phase1Out" carrier="Electricity" name="Bus14Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation7Phase1In Line28Phase1In" id="Bus14Phase1Out" carrier="Electricity" name="Bus14Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736449927091599" lat="51.0663669644361"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus15" id="Bus15">
        <port xsi:type="esdl:InPort" id="Bus15Phase1In" connectedTo="Line26Phase1Out" carrier="Electricity" name="Bus15Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation8Phase1In Line27Phase1In" id="Bus15Phase1Out" carrier="Electricity" name="Bus15Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736782521009445" lat="51.066466320949544"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus16" id="Bus16">
        <port xsi:type="esdl:InPort" id="Bus16Phase1In" connectedTo="Line31Phase1Out" carrier="Electricity" name="Bus16Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation9Phase1In" id="Bus16Phase1Out" carrier="Electricity" name="Bus16Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736195117235184" lat="51.066129518345136"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus17" id="Bus17">
        <port xsi:type="esdl:InPort" id="Bus17Phase1In" connectedTo="Line30Phase1Out" carrier="Electricity" name="Bus17Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation10Phase1In Line31Phase1In" id="Bus17Phase1Out" carrier="Electricity" name="Bus17Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7365840375423436" lat="51.06619519504535"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus18" id="Bus18">
        <port xsi:type="esdl:InPort" id="Bus18Phase1In" connectedTo="Line29Phase1Out" carrier="Electricity" name="Bus18Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation11Phase1In Line30Phase1In" id="Bus18Phase1Out" carrier="Electricity" name="Bus18Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7369769811630253" lat="51.06628192182722"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus19" id="Bus19">
        <port xsi:type="esdl:InPort" id="Bus19Phase1In" connectedTo="Line34Phase1Out" carrier="Electricity" name="Bus19Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation12Phase1In" id="Bus19Phase1Out" carrier="Electricity" name="Bus19Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7362863123416905" lat="51.065912279365214"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus20" id="Bus20">
        <port xsi:type="esdl:InPort" id="Bus20Phase1In" connectedTo="Line33Phase1Out" carrier="Electricity" name="Bus20Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation13Phase1In Line34Phase1In" id="Bus20Phase1Out" carrier="Electricity" name="Bus20Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7367060780525208" lat="51.066000690700996"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus21" id="Bus21">
        <port xsi:type="esdl:InPort" id="Bus21Phase1In" connectedTo="Line32Phase1Out" carrier="Electricity" name="Bus21Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation14Phase1In Line33Phase1In" id="Bus21Phase1Out" carrier="Electricity" name="Bus21Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737089633941651" lat="51.066090785888534"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus22" id="Bus22">
        <port xsi:type="esdl:InPort" id="Bus22Phase1In" connectedTo="Line37Phase1Out" carrier="Electricity" name="Bus22Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation15Phase1In" id="Bus22Phase1Out" carrier="Electricity" name="Bus22Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736381530761719" lat="51.065698407435505"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus23" id="Bus23">
        <port xsi:type="esdl:InPort" id="Bus23Phase1In" connectedTo="Line40Phase1Out" carrier="Electricity" name="Bus23Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation18Phase1In" id="Bus23Phase1Out" carrier="Electricity" name="Bus23Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7364727258682255" lat="51.0654474855653"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus24" id="Bus24">
        <port xsi:type="esdl:InPort" id="Bus24Phase1In" connectedTo="Line39Phase1Out" carrier="Electricity" name="Bus24Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation19Phase1In Line40Phase1In" id="Bus24Phase1Out" carrier="Electricity" name="Bus24Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7368844449520116" lat="51.06551316323321"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus25" id="Bus25">
        <port xsi:type="esdl:InPort" id="Bus25Phase1In" connectedTo="Line36Phase1Out" carrier="Electricity" name="Bus25Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation16Phase1In Line37Phase1In" id="Bus25Phase1Out" carrier="Electricity" name="Bus25Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.736822754144669" lat="51.06578429313231"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus26" id="Bus26">
        <port xsi:type="esdl:InPort" id="Bus26Phase1In" connectedTo="Line35Phase1Out" carrier="Electricity" name="Bus26Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation17Phase1In Line36Phase1In" id="Bus26Phase1Out" carrier="Electricity" name="Bus26Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737219721078873" lat="51.065848286293"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus27" id="Bus27">
        <port xsi:type="esdl:InPort" id="Bus27Phase1In" connectedTo="Line38Phase1Out" carrier="Electricity" name="Bus27Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation20Phase1In Line39Phase1In" id="Bus27Phase1Out" carrier="Electricity" name="Bus27Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7372961640357976" lat="51.06558894504194"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus28" id="Bus28">
        <port xsi:type="esdl:InPort" id="Bus28Phase1In" connectedTo="Line43Phase1Out" carrier="Electricity" name="Bus28Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation21Phase1In" id="Bus28Phase1Out" carrier="Electricity" name="Bus28Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7365719676017766" lat="51.06527234466191"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus29" id="Bus29">
        <port xsi:type="esdl:InPort" id="Bus29Phase1In" connectedTo="Line42Phase1Out" carrier="Electricity" name="Bus29Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation22Phase1In Line43Phase1In" id="Bus29Phase1Out" carrier="Electricity" name="Bus29Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7369903922081" lat="51.065364125314126"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus30" id="Bus30">
        <port xsi:type="esdl:InPort" id="Bus30Phase1In" connectedTo="Line41Phase1Out" carrier="Electricity" name="Bus30Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation23Phase1In Line42Phase1In" id="Bus30Phase1Out" carrier="Electricity" name="Bus30Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7373739480972294" lat="51.06543906534471"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus31" id="Bus31">
        <port xsi:type="esdl:InPort" id="Bus31Phase1In" connectedTo="Line2Phase1Out" carrier="Electricity" name="Bus31Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation24Phase1In" id="Bus31Phase1Out" carrier="Electricity" name="Bus31Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7366765737533574" lat="51.0650887828116"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus32" id="Bus32">
        <port xsi:type="esdl:InPort" id="Bus32Phase1In" connectedTo="Line1Phase1Out" carrier="Electricity" name="Bus32Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation25Phase1In Line2Phase1In" id="Bus32Phase1Out" carrier="Electricity" name="Bus32Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73710572719574" lat="51.06515277693381"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus33" id="Bus33">
        <port xsi:type="esdl:InPort" id="Bus33Phase1In" connectedTo="Line0Phase1Out" carrier="Electricity" name="Bus33Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="EVChargingStation26Phase1In Line1Phase1In" id="Bus33Phase1Out" carrier="Electricity" name="Bus33Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73748391866684" lat="51.06522266515041"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus34" id="Bus34">
        <port xsi:type="esdl:InPort" id="Bus34Phase1In" connectedTo="TransformerOut Line45Phase1Out" carrier="Electricity" name="Bus34Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line44Phase1In" id="Bus34Phase1Out" carrier="Electricity" name="Bus34Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7332594394683842" lat="51.0649859077291"/>
      </asset>
      <asset xsi:type="esdl:Transformer" name="transformer1" id="transformer1" capacity="800000.0">
        <port xsi:type="esdl:InPort" id="TransformerIn" connectedTo="BussourcebusPhase1Out" carrier="Electricity" name="PrimIn"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus34Phase1In" id="TransformerOut" carrier="Electricity" name="SecOut"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.732819557189942" lat="51.06495896274919"/>
      </asset>
      <asset xsi:type="esdl:Import" power="800000.0" name="Import_4133" id="4133e06f-b829-46aa-bc6b-1399d6b94bfb" prodType="FOSSIL">
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="88fe16a2-e8d6-46ed-a6ca-eedfb9d4c5d4" name="Import_4133-MarginalCosts" value="0.9"/>
        </costInformation>
        <port xsi:type="esdl:OutPort" connectedTo="BussourcebusPhase1In" id="ImportOut" carrier="Electricity" name="Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7310814857482915" lat="51.06495896274919"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bussourcebus" id="Bussourcebus">
        <port xsi:type="esdl:InPort" id="BussourcebusPhase1In" connectedTo="ImportOut" carrier="Electricity" name="BussourcebusPhase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="TransformerIn ExportIn" id="BussourcebusPhase1Out" carrier="Electricity" name="BussourcebusPhase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7323474884033208" lat="51.06495896274919"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus36" id="Bus36">
        <port xsi:type="esdl:InPort" id="Bus36Phase1In" connectedTo="Line12Phase1Out" carrier="Electricity" name="Bus36Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line13Phase1In Line14Phase1In" id="Bus36Phase1Out" carrier="Electricity" name="Bus36Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7358799576759343" lat="51.06729540747111"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus37" id="Bus37">
        <port xsi:type="esdl:InPort" id="Bus37Phase1In" connectedTo="Line11Phase1Out" carrier="Electricity" name="Bus37Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line12Phase1In Line15Phase1In Line16Phase1In" id="Bus37Phase1Out" carrier="Electricity" name="Bus37Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7362527847290044" lat="51.06714216533485"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus38" id="Bus38">
        <port xsi:type="esdl:InPort" id="Bus38Phase1In" connectedTo="Line10Phase1Out" carrier="Electricity" name="Bus38Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line11Phase1In Line18Phase1In Line19Phase1In" id="Bus38Phase1Out" carrier="Electricity" name="Bus38Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.73660683631897" lat="51.06693840302723"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus39" id="Bus39">
        <port xsi:type="esdl:InPort" id="Bus39Phase1In" connectedTo="Line9Phase1Out" carrier="Electricity" name="Bus39Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line10Phase1In Line22Phase1In Line23Phase1In" id="Bus39Phase1Out" carrier="Electricity" name="Bus39Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7368804216384888" lat="51.066716115850426"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus40" id="Bus40">
        <port xsi:type="esdl:InPort" id="Bus40Phase1In" connectedTo="Line8Phase1Out" carrier="Electricity" name="Bus40Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line9Phase1In Line26Phase1In" id="Bus40Phase1Out" carrier="Electricity" name="Bus40Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7370252609252934" lat="51.066508886600396"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus41" id="Bus41">
        <port xsi:type="esdl:InPort" id="Bus41Phase1In" connectedTo="Line7Phase1Out" carrier="Electricity" name="Bus41Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line8Phase1In Line29Phase1In" id="Bus41Phase1Out" carrier="Electricity" name="Bus41Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7371861934661865" lat="51.06628491334741"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus42" id="Bus42">
        <port xsi:type="esdl:InPort" id="Bus42Phase1In" connectedTo="Line6Phase1Out" carrier="Electricity" name="Bus42Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line7Phase1In Line32Phase1In" id="Bus42Phase1Out" carrier="Electricity" name="Bus42Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7372773885726933" lat="51.06611482767191"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus43" id="Bus43">
        <port xsi:type="esdl:InPort" id="Bus43Phase1In" connectedTo="Line5Phase1Out" carrier="Electricity" name="Bus43Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line6Phase1In Line35Phase1In" id="Bus43Phase1Out" carrier="Electricity" name="Bus43Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7373766303062443" lat="51.065870644173806"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus44" id="Bus44">
        <port xsi:type="esdl:InPort" id="Bus44Phase1In" connectedTo="Line4Phase1Out" carrier="Electricity" name="Bus44Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line5Phase1In Line38Phase1In" id="Bus44Phase1Out" carrier="Electricity" name="Bus44Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7375000119209294" lat="51.06562140727493"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus45" id="Bus45">
        <port xsi:type="esdl:InPort" id="Bus45Phase1In" connectedTo="Line3Phase1Out" carrier="Electricity" name="Bus45Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line4Phase1In Line41Phase1In" id="Bus45Phase1Out" carrier="Electricity" name="Bus45Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737583160400391" lat="51.06547321172585"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus46" id="Bus46">
        <port xsi:type="esdl:InPort" id="Bus46Phase1In" connectedTo="Line44Phase1Out" carrier="Electricity" name="Bus46Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line0Phase1In Line3Phase1In b98af94e-5c37-4935-bdd6-159da622f0a3" id="Bus46Phase1Out" carrier="Electricity" name="Bus46Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7376877665519714" lat="51.065257653716635"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line0" id="Line0" assetType="gplkh_4_50_cusvm_4_6" length="14.8">
        <port xsi:type="esdl:InPort" id="Line0Phase1In" connectedTo="Bus46Phase1Out" carrier="Electricity" name="Line0Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus33Phase1In" id="Line0Phase1Out" carrier="Electricity" name="Line0Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7376877665519714" lat="51.065257653716635"/>
          <point xsi:type="esdl:Point" lon="3.73748391866684" lat="51.06522266515041"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line1" id="Line1" assetType="gplkh_4_50_cusvm_4_6" length="27.5">
        <port xsi:type="esdl:InPort" id="Line1Phase1In" connectedTo="Bus33Phase1Out" carrier="Electricity" name="Line1Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus32Phase1In" id="Line1Phase1Out" carrier="Electricity" name="Line1Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.73748391866684" lat="51.06522266515041"/>
          <point xsi:type="esdl:Point" lon="3.73710572719574" lat="51.06515277693381"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line2" id="Line2" assetType="gplkh_4_50_cusvm_4_6" length="30.8">
        <port xsi:type="esdl:InPort" id="Line2Phase1In" connectedTo="Bus32Phase1Out" carrier="Electricity" name="Line2Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus31Phase1In" id="Line2Phase1Out" carrier="Electricity" name="Line2Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.73710572719574" lat="51.06515277693381"/>
          <point xsi:type="esdl:Point" lon="3.7366765737533574" lat="51.0650887828116"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line3" id="Line3" assetType="gplkh_4_50_cusvm_4_6" length="25.1">
        <port xsi:type="esdl:InPort" id="Line3Phase1In" connectedTo="Bus46Phase1Out" carrier="Electricity" name="Line3Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus45Phase1In" id="Line3Phase1Out" carrier="Electricity" name="Line3Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7376877665519714" lat="51.065257653716635"/>
          <point xsi:type="esdl:Point" lon="3.737583160400391" lat="51.06547321172585"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line4" id="Line4" assetType="gplkh_4_50_cusvm_4_6" length="17.5">
        <port xsi:type="esdl:InPort" id="Line4Phase1In" connectedTo="Bus45Phase1Out" carrier="Electricity" name="Line4Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus44Phase1In" id="Line4Phase1Out" carrier="Electricity" name="Line4Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.737583160400391" lat="51.06547321172585"/>
          <point xsi:type="esdl:Point" lon="3.7375000119209294" lat="51.06562140727493"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line5" id="Line5" assetType="gplkh_4_50_cusvm_4_6" length="29.0">
        <port xsi:type="esdl:InPort" id="Line5Phase1In" connectedTo="Bus44Phase1Out" carrier="Electricity" name="Line5Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus43Phase1In" id="Line5Phase1Out" carrier="Electricity" name="Line5Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7375000119209294" lat="51.06562140727493"/>
          <point xsi:type="esdl:Point" lon="3.7373766303062443" lat="51.065870644173806"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line6" id="Line6" assetType="gplkh_4_50_cusvm_4_6" length="28.0">
        <port xsi:type="esdl:InPort" id="Line6Phase1In" connectedTo="Bus43Phase1Out" carrier="Electricity" name="Line6Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus42Phase1In" id="Line6Phase1Out" carrier="Electricity" name="Line6Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7373766303062443" lat="51.065870644173806"/>
          <point xsi:type="esdl:Point" lon="3.7372773885726933" lat="51.06611482767191"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line7" id="Line7" assetType="gplkh_4_50_cusvm_4_6" length="20.0">
        <port xsi:type="esdl:InPort" id="Line7Phase1In" connectedTo="Bus42Phase1Out" carrier="Electricity" name="Line7Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus41Phase1In" id="Line7Phase1Out" carrier="Electricity" name="Line7Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7372773885726933" lat="51.06611482767191"/>
          <point xsi:type="esdl:Point" lon="3.7371861934661865" lat="51.06628491334741"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line8" id="Line8" assetType="gplkh_4_50_cusvm_4_6" length="27.3">
        <port xsi:type="esdl:InPort" id="Line8Phase1In" connectedTo="Bus41Phase1Out" carrier="Electricity" name="Line8Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus40Phase1In" id="Line8Phase1Out" carrier="Electricity" name="Line8Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7371861934661865" lat="51.06628491334741"/>
          <point xsi:type="esdl:Point" lon="3.7370252609252934" lat="51.066508886600396"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line9" id="Line9" assetType="gplkh_4_50_cusvm_4_6" length="25.2">
        <port xsi:type="esdl:InPort" id="Line9Phase1In" connectedTo="Bus40Phase1Out" carrier="Electricity" name="Line9Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus39Phase1In" id="Line9Phase1Out" carrier="Electricity" name="Line9Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7370252609252934" lat="51.066508886600396"/>
          <point xsi:type="esdl:Point" lon="3.7368804216384888" lat="51.066716115850426"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line10" id="Line10" assetType="gplkh_4_50_cusvm_4_6" length="31.2">
        <port xsi:type="esdl:InPort" id="Line10Phase1In" connectedTo="Bus39Phase1Out" carrier="Electricity" name="Line10Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus38Phase1In" id="Line10Phase1Out" carrier="Electricity" name="Line10Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7368804216384888" lat="51.066716115850426"/>
          <point xsi:type="esdl:Point" lon="3.73660683631897" lat="51.06693840302723"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line11" id="Line11" assetType="gplkh_4_50_cusvm_4_6" length="33.5">
        <port xsi:type="esdl:InPort" id="Line11Phase1In" connectedTo="Bus38Phase1Out" carrier="Electricity" name="Line11Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus37Phase1In" id="Line11Phase1Out" carrier="Electricity" name="Line11Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.73660683631897" lat="51.06693840302723"/>
          <point xsi:type="esdl:Point" lon="3.7362527847290044" lat="51.06714216533485"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line12" id="Line12" assetType="gplkh_4_50_cusvm_4_6" length="31.1">
        <port xsi:type="esdl:InPort" id="Line12Phase1In" connectedTo="Bus37Phase1Out" carrier="Electricity" name="Line12Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus36Phase1In" id="Line12Phase1Out" carrier="Electricity" name="Line12Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7362527847290044" lat="51.06714216533485"/>
          <point xsi:type="esdl:Point" lon="3.7358799576759343" lat="51.06729540747111"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line13" id="Line13" assetType="gplkh_4_50_cusvm_4_6" length="8.7">
        <port xsi:type="esdl:InPort" id="Line13Phase1In" connectedTo="Bus36Phase1Out" carrier="Electricity" name="Line13Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus1Phase1In" id="Line13Phase1Out" carrier="Electricity" name="Line13Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7358799576759343" lat="51.06729540747111"/>
          <point xsi:type="esdl:Point" lon="3.735902756452561" lat="51.067372307792525"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line14" id="Line14" assetType="gplkh_4_50_cusvm_4_6" length="17.5">
        <port xsi:type="esdl:InPort" id="Line14Phase1In" connectedTo="Bus36Phase1Out" carrier="Electricity" name="Line14Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus0Phase1In" id="Line14Phase1Out" carrier="Electricity" name="Line14Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7358799576759343" lat="51.06729540747111"/>
          <point xsi:type="esdl:Point" lon="3.7356761097908024" lat="51.067204701516545"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line15" id="Line15" assetType="gplkh_4_50_cusvm_4_6" length="10.8">
        <port xsi:type="esdl:InPort" id="Line15Phase1In" connectedTo="Bus37Phase1Out" carrier="Electricity" name="Line15Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus4Phase1In" id="Line15Phase1Out" carrier="Electricity" name="Line15Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7362527847290044" lat="51.06714216533485"/>
          <point xsi:type="esdl:Point" lon="3.7363614141941075" lat="51.067210646012555"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line16" id="Line16" assetType="gplkh_4_50_cusvm_4_6" length="17.5">
        <port xsi:type="esdl:InPort" id="Line16Phase1In" connectedTo="Bus37Phase1Out" carrier="Electricity" name="Line16Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus3Phase1In" id="Line16Phase1Out" carrier="Electricity" name="Line16Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7362527847290044" lat="51.06714216533485"/>
          <point xsi:type="esdl:Point" lon="3.736014068126679" lat="51.067095293251484"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line17" id="Line17" assetType="gplkh_4_50_cusvm_4_6" length="21.2">
        <port xsi:type="esdl:InPort" id="Line17Phase1In" connectedTo="Bus3Phase1Out" carrier="Electricity" name="Line17Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus2Phase1In" id="Line17Phase1Out" carrier="Electricity" name="Line17Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.736014068126679" lat="51.067095293251484"/>
          <point xsi:type="esdl:Point" lon="3.7357364594936375" lat="51.067018671915505"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line18" id="Line18" assetType="gplkh_4_50_cusvm_4_6" length="12.9">
        <port xsi:type="esdl:InPort" id="Line18Phase1In" connectedTo="Bus38Phase1Out" carrier="Electricity" name="Line18Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus8Phase1In" id="Line18Phase1Out" carrier="Electricity" name="Line18Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.73660683631897" lat="51.06693840302723"/>
          <point xsi:type="esdl:Point" lon="3.736740946769715" lat="51.067017829922094"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line19" id="Line19" assetType="gplkh_4_50_cusvm_4_6" length="18.7">
        <port xsi:type="esdl:InPort" id="Line19Phase1In" connectedTo="Bus38Phase1Out" carrier="Electricity" name="Line19Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus7Phase1In" id="Line19Phase1Out" carrier="Electricity" name="Line19Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.73660683631897" lat="51.06693840302723"/>
          <point xsi:type="esdl:Point" lon="3.7363520264625554" lat="51.066885636767154"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line20" id="Line20" assetType="gplkh_4_50_cusvm_4_6" length="19.0">
        <port xsi:type="esdl:InPort" id="Line20Phase1In" connectedTo="Bus7Phase1Out" carrier="Electricity" name="Line20Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus6Phase1In" id="Line20Phase1Out" carrier="Electricity" name="Line20Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7363520264625554" lat="51.066885636767154"/>
          <point xsi:type="esdl:Point" lon="3.7360811233520512" lat="51.06686795485155"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line21" id="Line21" assetType="gplkh_4_50_cusvm_4_6" length="16.3">
        <port xsi:type="esdl:InPort" id="Line21Phase1In" connectedTo="Bus6Phase1Out" carrier="Electricity" name="Line21Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus5Phase1In" id="Line21Phase1Out" carrier="Electricity" name="Line21Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7360811233520512" lat="51.06686795485155"/>
          <point xsi:type="esdl:Point" lon="3.73586118221283" lat="51.06681911904958"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line22" id="Line22" assetType="gplkh_4_50_cusvm_4_6" length="15.5">
        <port xsi:type="esdl:InPort" id="Line22Phase1In" connectedTo="Bus39Phase1Out" carrier="Electricity" name="Line22Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus12Phase1In" id="Line22Phase1Out" carrier="Electricity" name="Line22Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7368804216384888" lat="51.066716115850426"/>
          <point xsi:type="esdl:Point" lon="3.7370641529560094" lat="51.06679470112928"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line23" id="Line23" assetType="gplkh_4_50_cusvm_4_6" length="18.2">
        <port xsi:type="esdl:InPort" id="Line23Phase1In" connectedTo="Bus39Phase1Out" carrier="Electricity" name="Line23Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus11Phase1In" id="Line23Phase1Out" carrier="Electricity" name="Line23Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7368804216384888" lat="51.066716115850426"/>
          <point xsi:type="esdl:Point" lon="3.7366282939910893" lat="51.066675979333176"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line24" id="Line24" assetType="gplkh_4_50_cusvm_4_6" length="23.4">
        <port xsi:type="esdl:InPort" id="Line24Phase1In" connectedTo="Bus11Phase1Out" carrier="Electricity" name="Line24Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus10Phase1In" id="Line24Phase1Out" carrier="Electricity" name="Line24Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7366282939910893" lat="51.066675979333176"/>
          <point xsi:type="esdl:Point" lon="3.736313134431839" lat="51.06660525130989"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line25" id="Line25" assetType="gplkh_4_50_cusvm_4_6" length="24.8">
        <port xsi:type="esdl:InPort" id="Line25Phase1In" connectedTo="Bus10Phase1Out" carrier="Electricity" name="Line25Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus9Phase1In" id="Line25Phase1Out" carrier="Electricity" name="Line25Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.736313134431839" lat="51.06660525130989"/>
          <point xsi:type="esdl:Point" lon="3.735969811677933" lat="51.066547995211884"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line26" id="Line26" assetType="gplkh_4_50_cusvm_4_6" length="17.6">
        <port xsi:type="esdl:InPort" id="Line26Phase1In" connectedTo="Bus40Phase1Out" carrier="Electricity" name="Line26Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus15Phase1In" id="Line26Phase1Out" carrier="Electricity" name="Line26Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7370252609252934" lat="51.066508886600396"/>
          <point xsi:type="esdl:Point" lon="3.736782521009445" lat="51.066466320949544"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line27" id="Line27" assetType="gplkh_4_50_cusvm_4_6" length="25.7">
        <port xsi:type="esdl:InPort" id="Line27Phase1In" connectedTo="Bus15Phase1Out" carrier="Electricity" name="Line27Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus14Phase1In" id="Line27Phase1Out" carrier="Electricity" name="Line27Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.736782521009445" lat="51.066466320949544"/>
          <point xsi:type="esdl:Point" lon="3.736449927091599" lat="51.0663669644361"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line28" id="Line28" assetType="gplkh_4_50_cusvm_4_6" length="24.3">
        <port xsi:type="esdl:InPort" id="Line28Phase1In" connectedTo="Bus14Phase1Out" carrier="Electricity" name="Line28Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus13Phase1In" id="Line28Phase1Out" carrier="Electricity" name="Line28Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.736449927091599" lat="51.0663669644361"/>
          <point xsi:type="esdl:Point" lon="3.7361052632331853" lat="51.066334968225334"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line29" id="Line29" assetType="gplkh_4_50_cusvm_4_6" length="14.6">
        <port xsi:type="esdl:InPort" id="Line29Phase1In" connectedTo="Bus41Phase1Out" carrier="Electricity" name="Line29Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus18Phase1In" id="Line29Phase1Out" carrier="Electricity" name="Line29Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7371861934661865" lat="51.06628491334741"/>
          <point xsi:type="esdl:Point" lon="3.7369769811630253" lat="51.06628192182722"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line30" id="Line30" assetType="gplkh_4_50_cusvm_4_6" length="29.1">
        <port xsi:type="esdl:InPort" id="Line30Phase1In" connectedTo="Bus18Phase1Out" carrier="Electricity" name="Line30Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus17Phase1In" id="Line30Phase1Out" carrier="Electricity" name="Line30Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7369769811630253" lat="51.06628192182722"/>
          <point xsi:type="esdl:Point" lon="3.7365840375423436" lat="51.06619519504535"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line31" id="Line31" assetType="gplkh_4_50_cusvm_4_6" length="28.1">
        <port xsi:type="esdl:InPort" id="Line31Phase1In" connectedTo="Bus17Phase1Out" carrier="Electricity" name="Line31Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus16Phase1In" id="Line31Phase1Out" carrier="Electricity" name="Line31Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7365840375423436" lat="51.06619519504535"/>
          <point xsi:type="esdl:Point" lon="3.736195117235184" lat="51.066129518345136"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line32" id="Line32" assetType="gplkh_4_50_cusvm_4_6" length="13.4">
        <port xsi:type="esdl:InPort" id="Line32Phase1In" connectedTo="Bus42Phase1Out" carrier="Electricity" name="Line32Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus21Phase1In" id="Line32Phase1Out" carrier="Electricity" name="Line32Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7372773885726933" lat="51.06611482767191"/>
          <point xsi:type="esdl:Point" lon="3.737089633941651" lat="51.066090785888534"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line33" id="Line33" assetType="gplkh_4_50_cusvm_4_6" length="28.6">
        <port xsi:type="esdl:InPort" id="Line33Phase1In" connectedTo="Bus21Phase1Out" carrier="Electricity" name="Line33Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus20Phase1In" id="Line33Phase1Out" carrier="Electricity" name="Line33Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.737089633941651" lat="51.066090785888534"/>
          <point xsi:type="esdl:Point" lon="3.7367060780525208" lat="51.066000690700996"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line34" id="Line34" assetType="gplkh_4_50_cusvm_4_6" length="30.9">
        <port xsi:type="esdl:InPort" id="Line34Phase1In" connectedTo="Bus20Phase1Out" carrier="Electricity" name="Line34Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus19Phase1In" id="Line34Phase1Out" carrier="Electricity" name="Line34Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7367060780525208" lat="51.066000690700996"/>
          <point xsi:type="esdl:Point" lon="3.7362863123416905" lat="51.065912279365214"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line35" id="Line35" assetType="gplkh_4_50_cusvm_4_6" length="11.2">
        <port xsi:type="esdl:InPort" id="Line35Phase1In" connectedTo="Bus43Phase1Out" carrier="Electricity" name="Line35Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus26Phase1In" id="Line35Phase1Out" carrier="Electricity" name="Line35Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7373766303062443" lat="51.065870644173806"/>
          <point xsi:type="esdl:Point" lon="3.737219721078873" lat="51.065848286293"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line36" id="Line36" assetType="gplkh_4_50_cusvm_4_6" length="28.6">
        <port xsi:type="esdl:InPort" id="Line36Phase1In" connectedTo="Bus26Phase1Out" carrier="Electricity" name="Line36Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus25Phase1In" id="Line36Phase1Out" carrier="Electricity" name="Line36Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.737219721078873" lat="51.065848286293"/>
          <point xsi:type="esdl:Point" lon="3.736822754144669" lat="51.06578429313231"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line37" id="Line37" assetType="gplkh_4_50_cusvm_4_6" length="32.3">
        <port xsi:type="esdl:InPort" id="Line37Phase1In" connectedTo="Bus25Phase1Out" carrier="Electricity" name="Line37Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus22Phase1In" id="Line37Phase1Out" carrier="Electricity" name="Line37Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.736822754144669" lat="51.06578429313231"/>
          <point xsi:type="esdl:Point" lon="3.736381530761719" lat="51.065698407435505"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line38" id="Line38" assetType="gplkh_4_50_cusvm_4_6" length="14.7">
        <port xsi:type="esdl:InPort" id="Line38Phase1In" connectedTo="Bus44Phase1Out" carrier="Electricity" name="Line38Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus27Phase1In" id="Line38Phase1Out" carrier="Electricity" name="Line38Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7375000119209294" lat="51.06562140727493"/>
          <point xsi:type="esdl:Point" lon="3.7372961640357976" lat="51.06558894504194"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line39" id="Line39" assetType="gplkh_4_50_cusvm_4_6" length="30.0">
        <port xsi:type="esdl:InPort" id="Line39Phase1In" connectedTo="Bus27Phase1Out" carrier="Electricity" name="Line39Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus24Phase1In" id="Line39Phase1Out" carrier="Electricity" name="Line39Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7372961640357976" lat="51.06558894504194"/>
          <point xsi:type="esdl:Point" lon="3.7368844449520116" lat="51.06551316323321"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line40" id="Line40" assetType="gplkh_4_50_cusvm_4_6" length="29.7">
        <port xsi:type="esdl:InPort" id="Line40Phase1In" connectedTo="Bus24Phase1Out" carrier="Electricity" name="Line40Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus23Phase1In" id="Line40Phase1Out" carrier="Electricity" name="Line40Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7368844449520116" lat="51.06551316323321"/>
          <point xsi:type="esdl:Point" lon="3.7364727258682255" lat="51.0654474855653"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line41" id="Line41" assetType="gplkh_4_50_cusvm_4_6" length="15.1">
        <port xsi:type="esdl:InPort" id="Line41Phase1In" connectedTo="Bus45Phase1Out" carrier="Electricity" name="Line41Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus30Phase1In" id="Line41Phase1Out" carrier="Electricity" name="Line41Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.737583160400391" lat="51.06547321172585"/>
          <point xsi:type="esdl:Point" lon="3.7373739480972294" lat="51.06543906534471"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line42" id="Line42" assetType="gplkh_4_50_cusvm_4_6" length="28.1">
        <port xsi:type="esdl:InPort" id="Line42Phase1In" connectedTo="Bus30Phase1Out" carrier="Electricity" name="Line42Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus29Phase1In" id="Line42Phase1Out" carrier="Electricity" name="Line42Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7373739480972294" lat="51.06543906534471"/>
          <point xsi:type="esdl:Point" lon="3.7369903922081" lat="51.065364125314126"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line43" id="Line43" assetType="gplkh_4_50_cusvm_4_6" length="31.0">
        <port xsi:type="esdl:InPort" id="Line43Phase1In" connectedTo="Bus29Phase1Out" carrier="Electricity" name="Line43Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus28Phase1In" id="Line43Phase1Out" carrier="Electricity" name="Line43Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7369903922081" lat="51.065364125314126"/>
          <point xsi:type="esdl:Point" lon="3.7365719676017766" lat="51.06527234466191"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line44" id="Line44" assetType="gplkh_4_50_cusvm_4_6" length="355.9">
        <port xsi:type="esdl:InPort" id="Line44Phase1In" connectedTo="Bus34Phase1Out" carrier="Electricity" name="Line44Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus46Phase1In" id="Line44Phase1Out" carrier="Electricity" name="Line44Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7332594394683842" lat="51.0649859077291"/>
          <point xsi:type="esdl:Point" lon="3.733409643173218" lat="51.064809803553516"/>
          <point xsi:type="esdl:Point" lon="3.733710050582886" lat="51.06473907267869"/>
          <point xsi:type="esdl:Point" lon="3.734343051910401" lat="51.06485022114776"/>
          <point xsi:type="esdl:Point" lon="3.7349760532379155" lat="51.06462287172117"/>
          <point xsi:type="esdl:Point" lon="3.7365478277206425" lat="51.064922635915806"/>
          <point xsi:type="esdl:Point" lon="3.73771995306015" lat="51.06512809115274"/>
          <point xsi:type="esdl:Point" lon="3.7376877665519714" lat="51.065257653716635"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:PVPark" name="PVPark1" id="PVPark1" surfaceArea="2382">
        <port xsi:type="esdl:OutPort" connectedTo="Bus47Phase1In" id="PVParkPhase1Out" carrier="Electricity" name="PVParkPhase1Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2021-03-01T00:00:00.000000" field="SolarProductionProfile" measurement="BRIGHT_DeNieuweDokken" host="http://geis.hesi.energy" endDate="2022-03-01T00:00:00.000000" port="8086" id="pv-park-production-profile-ID" database="energy_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="watts-pv-ID" description="Power in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="3.7332165241241455" lat="51.06544672460334"/>
            <point xsi:type="esdl:Point" lon="3.733994364738465" lat="51.06558494250799"/>
            <point xsi:type="esdl:Point" lon="3.734166026115418" lat="51.06519388590491"/>
            <point xsi:type="esdl:Point" lon="3.733511567115784" lat="51.06506915163831"/>
          </exterior>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Export" name="Export_339c" power="500000000000000.0" id="Export1">
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="15e2f357-9e14-4890-86a8-ab7363eb5d69" name="Export_339c-MarginalCosts" value="0.1"/>
        </costInformation>
        <port xsi:type="esdl:InPort" id="ExportIn" connectedTo="BussourcebusPhase1Out" carrier="Electricity" name="In"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.7311190366745" lat="51.064627522208895"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus47" id="Bus47">
        <port xsi:type="esdl:InPort" id="Bus47Phase1In" connectedTo="PVParkPhase1Out" carrier="Electricity" name="Bus47Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Line45Phase1In" id="Bus47Phase1Out" carrier="Electricity" name="Bus47Phase1Out"/>
        <geometry xsi:type="esdl:Point" lon="3.733415007591248" lat="51.0651028636354"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line45" id="Line45" assetType="gplkh_4_50_cusvm_4_6" length="17.0">
        <port xsi:type="esdl:InPort" id="Line45Phase1In" connectedTo="Bus47Phase1Out" carrier="Electricity" name="Line45Phase1In"/>
        <port xsi:type="esdl:OutPort" connectedTo="Bus34Phase1In" id="Line45Phase1Out" carrier="Electricity" name="Line45Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.733415007591248" lat="51.0651028636354"/>
          <point xsi:type="esdl:Point" lon="3.7332594394683842" lat="51.0649859077291"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" name="BaseLoad" power="10000000.0" id="BaseLoad">
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="64e0bf81-9b4c-413a-9456-bf5818dcda46" name="ElectricityDemand_2239-MarginalCosts" value="0.2"/>
        </costInformation>
        <port xsi:type="esdl:InPort" id="6d4d4ffa-08f6-4381-bc24-be1325f31deb" connectedTo="cdf134ef-0f50-4407-9ef4-79e7cd0a420c" carrier="Electricity" name="In"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737830258905888" lat="51.065281958208274"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus48" id="Bus48">
        <port xsi:type="esdl:InPort" id="27b7d0e7-8ade-416e-a736-09cf9ffd10a4" connectedTo="f09e107f-549f-4303-ac18-b2684fba6f48" carrier="Electricity" name="In"/>
        <port xsi:type="esdl:OutPort" connectedTo="6d4d4ffa-08f6-4381-bc24-be1325f31deb" id="cdf134ef-0f50-4407-9ef4-79e7cd0a420c" carrier="Electricity" name="Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="3.737779296934605" lat="51.065273319544794"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Line46" id="Line46" assetType="gplkh_4_50_cusvm_4_6" length="6.6">
        <port xsi:type="esdl:InPort" id="b98af94e-5c37-4935-bdd6-159da622f0a3" connectedTo="Bus46Phase1Out" carrier="Electricity" name="In"/>
        <port xsi:type="esdl:OutPort" connectedTo="27b7d0e7-8ade-416e-a736-09cf9ffd10a4" id="f09e107f-549f-4303-ac18-b2684fba6f48" carrier="Electricity" name="Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="3.7376877665519714" lat="51.065257653716635"/>
          <point xsi:type="esdl:Point" lon="3.737779296934605" lat="51.065273319544794"/>
        </geometry>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="778f69a3-8f02-4c07-b43e-80ac3d8cf9ef">
    <carriers xsi:type="esdl:Carriers" id="5bbb07b9-b664-4558-8055-d6d1fa401dbd">
      <carrier xsi:type="esdl:EnergyCarrier" energyCarrierType="FOSSIL" name="Electricity" emission="0.649" id="Electricity" energyContent="3.6">
        <energyContentUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" perMultiplier="KILO" multiplier="MEGA" perUnit="WATTHOUR" id="f94a2bf7-87b4-4e92-9996-02cbc60b7955" unit="JOULE"/>
        <emissionUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="EMISSION" perMultiplier="KILO" multiplier="KILO" perUnit="WATTHOUR" id="c984f337-23a9-4755-b335-ff1fd4f3929a" unit="GRAM"/>
      </carrier>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
