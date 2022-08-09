<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="dutch_feeder" name="dutch_feeder">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="ESI">
    <carriers xsi:type="esdl:Carriers" id="Carriers">
      <carrier xsi:type="esdl:ElectricityCommodity" voltage="240.0" name="Electricity" id="Electricity"/>
      <carrier xsi:type="esdl:GasCommodity" name="Gas" id="Gas"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="Heat"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="dutch_feederInstance" name="dutch_feederInstance">
    <area xsi:type="esdl:Area" id="TestArea" name="Area">
      <asset xsi:type="esdl:ElectricityCable" id="line1" length="17.0" assetType="gplkh_4_50_cusvm_4_6" name="line1">
        <port xsi:type="esdl:InPort" id="line1Phase1In" carrier="Electricity" connectedTo="Bus1Phase1Out" name="line1Phase1In"/>
        <port xsi:type="esdl:InPort" id="line1Phase2In" carrier="Electricity" connectedTo="Bus1Phase2Out" name="line1Phase2In"/>
        <port xsi:type="esdl:InPort" id="line1Phase3In" carrier="Electricity" connectedTo="Bus1Phase3Out" name="line1Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line1Phase1Out" carrier="Electricity" name="line1Phase1Out" connectedTo="Bus2Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line1Phase2Out" carrier="Electricity" name="line1Phase2Out" connectedTo="Bus2Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line1Phase3Out" carrier="Electricity" name="line1Phase3Out" connectedTo="Bus2Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1" name="Bus1">
        <port xsi:type="esdl:InPort" name="Bus1Phase1In" carrier="Electricity" id="Bus1Phase1In"/>
        <port xsi:type="esdl:InPort" name="Bus1Phase2In" carrier="Electricity" id="Bus1Phase2In"/>
        <port xsi:type="esdl:InPort" name="Bus1Phase3In" carrier="Electricity" id="Bus1Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus1Phase1Out" carrier="Electricity" name="Bus1Phase1Out" connectedTo="line1Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus1Phase2Out" carrier="Electricity" name="Bus1Phase2Out" connectedTo="line1Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus1Phase3Out" carrier="Electricity" name="Bus1Phase3Out" connectedTo="line1Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2" name="Bus2">
        <port xsi:type="esdl:InPort" id="Bus2Phase1In" carrier="Electricity" connectedTo="line1Phase1Out" name="Bus2Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2Phase2In" carrier="Electricity" connectedTo="line1Phase2Out" name="Bus2Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2Phase3In" carrier="Electricity" connectedTo="line1Phase3Out" name="Bus2Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus2Phase1Out" carrier="Electricity" name="Bus2Phase1Out" connectedTo="line2Phase1In line4Phase1In line5Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus2Phase2Out" carrier="Electricity" name="Bus2Phase2Out" connectedTo="line2Phase2In line4Phase2In line5Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus2Phase3Out" carrier="Electricity" name="Bus2Phase3Out" connectedTo="line2Phase3In line4Phase3In line5Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line2" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line2">
        <port xsi:type="esdl:InPort" id="line2Phase1In" carrier="Electricity" connectedTo="Bus2Phase1Out" name="line2Phase1In"/>
        <port xsi:type="esdl:InPort" id="line2Phase2In" carrier="Electricity" connectedTo="Bus2Phase2Out" name="line2Phase2In"/>
        <port xsi:type="esdl:InPort" id="line2Phase3In" carrier="Electricity" connectedTo="Bus2Phase3Out" name="line2Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line2Phase1Out" carrier="Electricity" name="line2Phase1Out" connectedTo="Bus3Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line2Phase2Out" carrier="Electricity" name="line2Phase2Out" connectedTo="Bus3Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line2Phase3Out" carrier="Electricity" name="line2Phase3Out" connectedTo="Bus3Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3" name="Bus3">
        <port xsi:type="esdl:InPort" id="Bus3Phase1In" carrier="Electricity" connectedTo="line2Phase1Out" name="Bus3Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3Phase2In" carrier="Electricity" connectedTo="line2Phase2Out" name="Bus3Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3Phase3In" carrier="Electricity" connectedTo="line2Phase3Out" name="Bus3Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus3Phase1Out" carrier="Electricity" name="Bus3Phase1Out" connectedTo="line3Phase1In line142Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus3Phase2Out" carrier="Electricity" name="Bus3Phase2Out" connectedTo="line3Phase2In line142Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus3Phase3Out" carrier="Electricity" name="Bus3Phase3Out" connectedTo="line3Phase3In line142Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line3" length="23.0" assetType="gplkh_4_25_curm_4_2p5" name="line3">
        <port xsi:type="esdl:InPort" id="line3Phase1In" carrier="Electricity" connectedTo="Bus3Phase1Out" name="line3Phase1In"/>
        <port xsi:type="esdl:InPort" id="line3Phase2In" carrier="Electricity" connectedTo="Bus3Phase2Out" name="line3Phase2In"/>
        <port xsi:type="esdl:InPort" id="line3Phase3In" carrier="Electricity" connectedTo="Bus3Phase3Out" name="line3Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line3Phase1Out" carrier="Electricity" name="line3Phase1Out" connectedTo="Bus301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line3Phase2Out" carrier="Electricity" name="line3Phase2Out" connectedTo="Bus301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line3Phase3Out" carrier="Electricity" name="line3Phase3Out" connectedTo="Bus301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus301" name="Bus301">
        <port xsi:type="esdl:InPort" id="Bus301Phase1In" carrier="Electricity" connectedTo="line3Phase1Out"  name="Bus301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus301Phase2In" carrier="Electricity" connectedTo="line3Phase2Out" name="Bus301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus301Phase3In" carrier="Electricity" connectedTo="line3Phase3Out" name="Bus301Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus301Phase1Out" carrier="Electricity" name="Bus301Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus301Phase2Out" carrier="Electricity" id="Bus301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus301Phase3Out" carrier="Electricity" id="Bus301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line4" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line4">
        <port xsi:type="esdl:InPort" id="line4Phase1In" carrier="Electricity" connectedTo="Bus2Phase1Out" name="line4Phase1In"/>
        <port xsi:type="esdl:InPort" id="line4Phase2In" carrier="Electricity" connectedTo="Bus2Phase2Out" name="line4Phase2In"/>
        <port xsi:type="esdl:InPort" id="line4Phase3In" carrier="Electricity" connectedTo="Bus2Phase3Out" name="line4Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line4Phase1Out" carrier="Electricity" name="line4Phase1Out" connectedTo="Bus4Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line4Phase2Out" carrier="Electricity" name="line4Phase2Out" connectedTo="Bus4Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line4Phase3Out" carrier="Electricity" name="line4Phase3Out" connectedTo="Bus4Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4" name="Bus4">
        <port xsi:type="esdl:InPort" id="Bus4Phase1In" carrier="Electricity" connectedTo="line4Phase1Out" name="Bus4Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4Phase2In" carrier="Electricity" connectedTo="line4Phase2Out" name="Bus4Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4Phase3In" carrier="Electricity" connectedTo="line4Phase3Out" name="Bus4Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus4Phase1Out" carrier="Electricity" name="Bus4Phase1Out" connectedTo="line6Phase1In line52Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus4Phase2Out" carrier="Electricity" name="Bus4Phase2Out" connectedTo="line6Phase2In line52Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus4Phase3Out" carrier="Electricity" name="Bus4Phase3Out" connectedTo="line6Phase3In line52Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line5" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line5">
        <port xsi:type="esdl:InPort" id="line5Phase1In" carrier="Electricity" connectedTo="Bus2Phase1Out" name="line5Phase1In"/>
        <port xsi:type="esdl:InPort" id="line5Phase2In" carrier="Electricity" connectedTo="Bus2Phase2Out" name="line5Phase2In"/>
        <port xsi:type="esdl:InPort" id="line5Phase3In" carrier="Electricity" connectedTo="Bus2Phase3Out" name="line5Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line5Phase1Out" carrier="Electricity" name="line5Phase1Out" connectedTo="Bus5Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line5Phase2Out" carrier="Electricity" name="line5Phase2Out" connectedTo="Bus5Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line5Phase3Out" carrier="Electricity" name="line5Phase3Out" connectedTo="Bus5Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5" name="Bus5">
        <port xsi:type="esdl:InPort" id="Bus5Phase1In" carrier="Electricity" connectedTo="line5Phase1Out" name="Bus5Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5Phase2In" carrier="Electricity" connectedTo="line5Phase2Out" name="Bus5Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5Phase3In" carrier="Electricity" connectedTo="line5Phase3Out" name="Bus5Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus5Phase1Out" carrier="Electricity" name="Bus5Phase1Out" connectedTo="line7Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus5Phase2Out" carrier="Electricity" name="Bus5Phase2Out" connectedTo="line7Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus5Phase3Out" carrier="Electricity" name="Bus5Phase3Out" connectedTo="line7Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line6" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line6">
        <port xsi:type="esdl:InPort" id="line6Phase1In" carrier="Electricity" connectedTo="Bus4Phase1Out" name="line6Phase1In"/>
        <port xsi:type="esdl:InPort" id="line6Phase2In" carrier="Electricity" connectedTo="Bus4Phase2Out" name="line6Phase2In"/>
        <port xsi:type="esdl:InPort" id="line6Phase3In" carrier="Electricity" connectedTo="Bus4Phase3Out" name="line6Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line6Phase1Out" carrier="Electricity" name="line6Phase1Out" connectedTo="Bus6Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line6Phase2Out" carrier="Electricity" name="line6Phase2Out" connectedTo="Bus6Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line6Phase3Out" carrier="Electricity" name="line6Phase3Out" connectedTo="Bus6Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6" name="Bus6">
        <port xsi:type="esdl:InPort" id="Bus6Phase1In" carrier="Electricity" connectedTo="line6Phase1Out" name="Bus6Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6Phase2In" carrier="Electricity" connectedTo="line6Phase2Out" name="Bus6Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6Phase3In" carrier="Electricity" connectedTo="line6Phase3Out" name="Bus6Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus6Phase1Out" carrier="Electricity" name="Bus6Phase1Out" connectedTo="line11Phase1In line13Phase1In line19Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus6Phase2Out" carrier="Electricity" name="Bus6Phase2Out" connectedTo="line11Phase2In line13Phase2In line19Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus6Phase3Out" carrier="Electricity" name="Bus6Phase3Out" connectedTo="line11Phase3In line13Phase3In line19Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line7" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line7">
        <port xsi:type="esdl:InPort" id="line7Phase1In" carrier="Electricity" connectedTo="Bus5Phase1Out" name="line7Phase1In"/>
        <port xsi:type="esdl:InPort" id="line7Phase2In" carrier="Electricity" connectedTo="Bus5Phase2Out" name="line7Phase2In"/>
        <port xsi:type="esdl:InPort" id="line7Phase3In" carrier="Electricity" connectedTo="Bus5Phase3Out" name="line7Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line7Phase1Out" carrier="Electricity" name="line7Phase1Out" connectedTo="Bus7Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line7Phase2Out" carrier="Electricity" name="line7Phase2Out" connectedTo="Bus7Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line7Phase3Out" carrier="Electricity" name="line7Phase3Out" connectedTo="Bus7Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7" name="Bus7">
        <port xsi:type="esdl:InPort" id="Bus7Phase1In" carrier="Electricity" connectedTo="line7Phase1Out" name="Bus7Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7Phase2In" carrier="Electricity" connectedTo="line7Phase2Out" name="Bus7Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7Phase3In" carrier="Electricity" connectedTo="line7Phase3Out" name="Bus7Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus7Phase1Out" carrier="Electricity" name="Bus7Phase1Out" connectedTo="line8Phase1In line9Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus7Phase2Out" carrier="Electricity" name="Bus7Phase2Out" connectedTo="line8Phase2In line9Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus7Phase3Out" carrier="Electricity" name="Bus7Phase3Out" connectedTo="line8Phase3In line9Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line8" length="33.0" assetType="gplkh_4_25_curm_4_2p5" name="line8">
        <port xsi:type="esdl:InPort" id="line8Phase1In" carrier="Electricity" connectedTo="Bus7Phase1Out" name="line8Phase1In"/>
        <port xsi:type="esdl:InPort" id="line8Phase2In" carrier="Electricity" connectedTo="Bus7Phase2Out" name="line8Phase2In"/>
        <port xsi:type="esdl:InPort" id="line8Phase3In" carrier="Electricity" connectedTo="Bus7Phase3Out" name="line8Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line8Phase1Out" carrier="Electricity" name="line8Phase1Out" connectedTo="Bus701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line8Phase2Out" carrier="Electricity" name="line8Phase2Out" connectedTo="Bus701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line8Phase3Out" carrier="Electricity" name="line8Phase3Out" connectedTo="Bus701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus701" name="Bus701">
        <port xsi:type="esdl:InPort" id="Bus701Phase1In" carrier="Electricity" connectedTo="line8Phase1Out" name="Bus701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus701Phase2In" carrier="Electricity" connectedTo="line8Phase2Out"  name="Bus701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus701Phase3In" carrier="Electricity" connectedTo="line8Phase3Out" name="Bus701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus701Phase1Out" carrier="Electricity" id="Bus701Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus701Phase2Out" carrier="Electricity" name="Bus701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus701Phase3Out" carrier="Electricity" id="Bus701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line9" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line9">
        <port xsi:type="esdl:InPort" id="line9Phase1In" carrier="Electricity" connectedTo="Bus7Phase1Out" name="line9Phase1In"/>
        <port xsi:type="esdl:InPort" id="line9Phase2In" carrier="Electricity" connectedTo="Bus7Phase2Out" name="line9Phase2In"/>
        <port xsi:type="esdl:InPort" id="line9Phase3In" carrier="Electricity" connectedTo="Bus7Phase3Out" name="line9Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line9Phase1Out" carrier="Electricity" name="line9Phase1Out" connectedTo="Bus8Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line9Phase2Out" carrier="Electricity" name="line9Phase2Out" connectedTo="Bus8Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line9Phase3Out" carrier="Electricity" name="line9Phase3Out" connectedTo="Bus8Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8" name="Bus8">
        <port xsi:type="esdl:InPort" id="Bus8Phase1In" carrier="Electricity" connectedTo="line9Phase1Out" name="Bus8Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8Phase2In" carrier="Electricity" connectedTo="line9Phase2Out" name="Bus8Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8Phase3In" carrier="Electricity" connectedTo="line9Phase3Out" name="Bus8Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus8Phase1Out" carrier="Electricity" name="Bus8Phase1Out" connectedTo="line10Phase1In line12Phase1In line26Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus8Phase2Out" carrier="Electricity" name="Bus8Phase2Out" connectedTo="line10Phase2In line12Phase2In line26Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus8Phase3Out" carrier="Electricity" name="Bus8Phase3Out" connectedTo="line10Phase3In line12Phase3In line26Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line10" length="22.0" assetType="gplkh_4_25_curm_4_2p5" name="line10">
        <port xsi:type="esdl:InPort" id="line10Phase1In" carrier="Electricity" connectedTo="Bus8Phase1Out" name="line10Phase1In"/>
        <port xsi:type="esdl:InPort" id="line10Phase2In" carrier="Electricity" connectedTo="Bus8Phase2Out" name="line10Phase2In"/>
        <port xsi:type="esdl:InPort" id="line10Phase3In" carrier="Electricity" connectedTo="Bus8Phase3Out" name="line10Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line10Phase1Out" carrier="Electricity" name="line10Phase1Out" connectedTo="Bus801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line10Phase2Out" carrier="Electricity" name="line10Phase2Out" connectedTo="Bus801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line10Phase3Out" carrier="Electricity" name="line10Phase3Out" connectedTo="Bus801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus801" name="Bus801">
        <port xsi:type="esdl:InPort" id="Bus801Phase1In" carrier="Electricity" connectedTo="line10Phase1Out" name="Bus801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus801Phase2In" carrier="Electricity" connectedTo="line10Phase2Out" name="Bus801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus801Phase3In" carrier="Electricity" connectedTo="line10Phase3Out"  name="Bus801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus801Phase1Out" carrier="Electricity" id="Bus801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus801Phase2Out" carrier="Electricity" id="Bus801Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus801Phase3Out" carrier="Electricity" name="Bus801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line11" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line11">
        <port xsi:type="esdl:InPort" id="line11Phase1In" carrier="Electricity" connectedTo="Bus6Phase1Out" name="line11Phase1In"/>
        <port xsi:type="esdl:InPort" id="line11Phase2In" carrier="Electricity" connectedTo="Bus6Phase2Out" name="line11Phase2In"/>
        <port xsi:type="esdl:InPort" id="line11Phase3In" carrier="Electricity" connectedTo="Bus6Phase3Out" name="line11Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line11Phase1Out" carrier="Electricity" name="line11Phase1Out" connectedTo="Bus9Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line11Phase2Out" carrier="Electricity" name="line11Phase2Out" connectedTo="Bus9Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line11Phase3Out" carrier="Electricity" name="line11Phase3Out" connectedTo="Bus9Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9" name="Bus9">
        <port xsi:type="esdl:InPort" id="Bus9Phase1In" carrier="Electricity" connectedTo="line11Phase1Out" name="Bus9Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9Phase2In" carrier="Electricity" connectedTo="line11Phase2Out" name="Bus9Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9Phase3In" carrier="Electricity" connectedTo="line11Phase3Out" name="Bus9Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus9Phase1Out" carrier="Electricity" name="Bus9Phase1Out" connectedTo="line14Phase1In line17Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus9Phase2Out" carrier="Electricity" name="Bus9Phase2Out" connectedTo="line14Phase2In line17Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus9Phase3Out" carrier="Electricity" name="Bus9Phase3Out" connectedTo="line14Phase3In line17Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line12" length="7.0" assetType="gplkh_4_50_cusvm_4_6" name="line12">
        <port xsi:type="esdl:InPort" id="line12Phase1In" carrier="Electricity" connectedTo="Bus8Phase1Out" name="line12Phase1In"/>
        <port xsi:type="esdl:InPort" id="line12Phase2In" carrier="Electricity" connectedTo="Bus8Phase2Out" name="line12Phase2In"/>
        <port xsi:type="esdl:InPort" id="line12Phase3In" carrier="Electricity" connectedTo="Bus8Phase3Out" name="line12Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line12Phase1Out" carrier="Electricity" name="line12Phase1Out" connectedTo="Bus10Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line12Phase2Out" carrier="Electricity" name="line12Phase2Out" connectedTo="Bus10Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line12Phase3Out" carrier="Electricity" name="line12Phase3Out" connectedTo="Bus10Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus10" name="Bus10">
        <port xsi:type="esdl:InPort" id="Bus10Phase1In" carrier="Electricity" connectedTo="line12Phase1Out" name="Bus10Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus10Phase2In" carrier="Electricity" connectedTo="line12Phase2Out" name="Bus10Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus10Phase3In" carrier="Electricity" connectedTo="line12Phase3Out" name="Bus10Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus10Phase1Out" carrier="Electricity" name="Bus10Phase1Out" connectedTo="line22Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus10Phase2Out" carrier="Electricity" name="Bus10Phase2Out" connectedTo="line22Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus10Phase3Out" carrier="Electricity" name="Bus10Phase3Out" connectedTo="line22Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line13" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line13">
        <port xsi:type="esdl:InPort" id="line13Phase1In" carrier="Electricity" connectedTo="Bus6Phase1Out" name="line13Phase1In"/>
        <port xsi:type="esdl:InPort" id="line13Phase2In" carrier="Electricity" connectedTo="Bus6Phase2Out" name="line13Phase2In"/>
        <port xsi:type="esdl:InPort" id="line13Phase3In" carrier="Electricity" connectedTo="Bus6Phase3Out" name="line13Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line13Phase1Out" carrier="Electricity" name="line13Phase1Out" connectedTo="Bus11Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line13Phase2Out" carrier="Electricity" name="line13Phase2Out" connectedTo="Bus11Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line13Phase3Out" carrier="Electricity" name="line13Phase3Out" connectedTo="Bus11Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus11" name="Bus11">
        <port xsi:type="esdl:InPort" id="Bus11Phase1In" carrier="Electricity" connectedTo="line13Phase1Out" name="Bus11Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus11Phase2In" carrier="Electricity" connectedTo="line13Phase2Out" name="Bus11Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus11Phase3In" carrier="Electricity" connectedTo="line13Phase3Out" name="Bus11Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus11Phase1Out" carrier="Electricity" name="Bus11Phase1Out" connectedTo="line34Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus11Phase2Out" carrier="Electricity" name="Bus11Phase2Out" connectedTo="line34Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus11Phase3Out" carrier="Electricity" name="Bus11Phase3Out" connectedTo="line34Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line14" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line14">
        <port xsi:type="esdl:InPort" id="line14Phase1In" carrier="Electricity" connectedTo="Bus9Phase1Out" name="line14Phase1In"/>
        <port xsi:type="esdl:InPort" id="line14Phase2In" carrier="Electricity" connectedTo="Bus9Phase2Out" name="line14Phase2In"/>
        <port xsi:type="esdl:InPort" id="line14Phase3In" carrier="Electricity" connectedTo="Bus9Phase3Out" name="line14Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line14Phase1Out" carrier="Electricity" name="line14Phase1Out" connectedTo="Bus12Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line14Phase2Out" carrier="Electricity" name="line14Phase2Out" connectedTo="Bus12Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line14Phase3Out" carrier="Electricity" name="line14Phase3Out" connectedTo="Bus12Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus12" name="Bus12">
        <port xsi:type="esdl:InPort" id="Bus12Phase1In" carrier="Electricity" connectedTo="line14Phase1Out" name="Bus12Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus12Phase2In" carrier="Electricity" connectedTo="line14Phase2Out" name="Bus12Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus12Phase3In" carrier="Electricity" connectedTo="line14Phase3Out" name="Bus12Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus12Phase1Out" carrier="Electricity" name="Bus12Phase1Out" connectedTo="line15Phase1In line21Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus12Phase2Out" carrier="Electricity" name="Bus12Phase2Out" connectedTo="line15Phase2In line21Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus12Phase3Out" carrier="Electricity" name="Bus12Phase3Out" connectedTo="line15Phase3In line21Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line15" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line15">
        <port xsi:type="esdl:InPort" id="line15Phase1In" carrier="Electricity" connectedTo="Bus12Phase1Out" name="line15Phase1In"/>
        <port xsi:type="esdl:InPort" id="line15Phase2In" carrier="Electricity" connectedTo="Bus12Phase2Out" name="line15Phase2In"/>
        <port xsi:type="esdl:InPort" id="line15Phase3In" carrier="Electricity" connectedTo="Bus12Phase3Out" name="line15Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line15Phase1Out" carrier="Electricity" name="line15Phase1Out" connectedTo="Bus13Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line15Phase2Out" carrier="Electricity" name="line15Phase2Out" connectedTo="Bus13Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line15Phase3Out" carrier="Electricity" name="line15Phase3Out" connectedTo="Bus13Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus13" name="Bus13">
        <port xsi:type="esdl:InPort" id="Bus13Phase1In" carrier="Electricity" connectedTo="line15Phase1Out" name="Bus13Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus13Phase2In" carrier="Electricity" connectedTo="line15Phase2Out" name="Bus13Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus13Phase3In" carrier="Electricity" connectedTo="line15Phase3Out" name="Bus13Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus13Phase1Out" carrier="Electricity" name="Bus13Phase1Out" connectedTo="line16Phase1In line30Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus13Phase2Out" carrier="Electricity" name="Bus13Phase2Out" connectedTo="line16Phase2In line30Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus13Phase3Out" carrier="Electricity" name="Bus13Phase3Out" connectedTo="line16Phase3In line30Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line16" length="2.0" assetType="gplkh_4_25_curm_4_2p5" name="line16">
        <port xsi:type="esdl:InPort" id="line16Phase1In" carrier="Electricity" connectedTo="Bus13Phase1Out" name="line16Phase1In"/>
        <port xsi:type="esdl:InPort" id="line16Phase2In" carrier="Electricity" connectedTo="Bus13Phase2Out" name="line16Phase2In"/>
        <port xsi:type="esdl:InPort" id="line16Phase3In" carrier="Electricity" connectedTo="Bus13Phase3Out" name="line16Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line16Phase1Out" carrier="Electricity" name="line16Phase1Out" connectedTo="Bus1301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line16Phase2Out" carrier="Electricity" name="line16Phase2Out" connectedTo="Bus1301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line16Phase3Out" carrier="Electricity" name="line16Phase3Out" connectedTo="Bus1301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1301" name="Bus1301">
        <port xsi:type="esdl:InPort" id="Bus1301Phase1In" carrier="Electricity" connectedTo="line16Phase1Out" name="Bus1301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus1301Phase2In" carrier="Electricity" connectedTo="line16Phase2Out"  name="Bus1301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus1301Phase3In" carrier="Electricity" connectedTo="line16Phase3Out" name="Bus1301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus1301Phase1Out" carrier="Electricity" id="Bus1301Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus1301Phase2Out" carrier="Electricity" name="Bus1301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1301Phase3Out" carrier="Electricity" id="Bus1301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line17" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line17">
        <port xsi:type="esdl:InPort" id="line17Phase1In" carrier="Electricity" connectedTo="Bus9Phase1Out" name="line17Phase1In"/>
        <port xsi:type="esdl:InPort" id="line17Phase2In" carrier="Electricity" connectedTo="Bus9Phase2Out" name="line17Phase2In"/>
        <port xsi:type="esdl:InPort" id="line17Phase3In" carrier="Electricity" connectedTo="Bus9Phase3Out" name="line17Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line17Phase1Out" carrier="Electricity" name="line17Phase1Out" connectedTo="Bus14Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line17Phase2Out" carrier="Electricity" name="line17Phase2Out" connectedTo="Bus14Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line17Phase3Out" carrier="Electricity" name="line17Phase3Out" connectedTo="Bus14Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus14" name="Bus14">
        <port xsi:type="esdl:InPort" id="Bus14Phase1In" carrier="Electricity" connectedTo="line17Phase1Out" name="Bus14Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus14Phase2In" carrier="Electricity" connectedTo="line17Phase2Out" name="Bus14Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus14Phase3In" carrier="Electricity" connectedTo="line17Phase3Out" name="Bus14Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus14Phase1Out" carrier="Electricity" name="Bus14Phase1Out" connectedTo="line18Phase1In line24Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus14Phase2Out" carrier="Electricity" name="Bus14Phase2Out" connectedTo="line18Phase2In line24Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus14Phase3Out" carrier="Electricity" name="Bus14Phase3Out" connectedTo="line18Phase3In line24Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line18" length="24.0" assetType="gplkh_4_25_curm_4_2p5" name="line18">
        <port xsi:type="esdl:InPort" id="line18Phase1In" carrier="Electricity" connectedTo="Bus14Phase1Out" name="line18Phase1In"/>
        <port xsi:type="esdl:InPort" id="line18Phase2In" carrier="Electricity" connectedTo="Bus14Phase2Out" name="line18Phase2In"/>
        <port xsi:type="esdl:InPort" id="line18Phase3In" carrier="Electricity" connectedTo="Bus14Phase3Out" name="line18Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line18Phase1Out" carrier="Electricity" name="line18Phase1Out" connectedTo="Bus1401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line18Phase2Out" carrier="Electricity" name="line18Phase2Out" connectedTo="Bus1401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line18Phase3Out" carrier="Electricity" name="line18Phase3Out" connectedTo="Bus1401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1401" name="Bus1401">
        <port xsi:type="esdl:InPort" id="Bus1401Phase1In" carrier="Electricity" connectedTo="line18Phase1Out"  name="Bus1401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus1401Phase2In" carrier="Electricity" connectedTo="line18Phase2Out" name="Bus1401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus1401Phase3In" carrier="Electricity" connectedTo="line18Phase3Out" name="Bus1401Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus1401Phase1Out" carrier="Electricity" name="Bus1401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1401Phase2Out" carrier="Electricity" id="Bus1401Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1401Phase3Out" carrier="Electricity" id="Bus1401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line19" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line19">
        <port xsi:type="esdl:InPort" id="line19Phase1In" carrier="Electricity" connectedTo="Bus6Phase1Out" name="line19Phase1In"/>
        <port xsi:type="esdl:InPort" id="line19Phase2In" carrier="Electricity" connectedTo="Bus6Phase2Out" name="line19Phase2In"/>
        <port xsi:type="esdl:InPort" id="line19Phase3In" carrier="Electricity" connectedTo="Bus6Phase3Out" name="line19Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line19Phase1Out" carrier="Electricity" name="line19Phase1Out" connectedTo="Bus15Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line19Phase2Out" carrier="Electricity" name="line19Phase2Out" connectedTo="Bus15Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line19Phase3Out" carrier="Electricity" name="line19Phase3Out" connectedTo="Bus15Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus15" name="Bus15">
        <port xsi:type="esdl:InPort" id="Bus15Phase1In" carrier="Electricity" connectedTo="line19Phase1Out" name="Bus15Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus15Phase2In" carrier="Electricity" connectedTo="line19Phase2Out" name="Bus15Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus15Phase3In" carrier="Electricity" connectedTo="line19Phase3Out" name="Bus15Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus15Phase1Out" carrier="Electricity" name="Bus15Phase1Out" connectedTo="line20Phase1In line56Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus15Phase2Out" carrier="Electricity" name="Bus15Phase2Out" connectedTo="line20Phase2In line56Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus15Phase3Out" carrier="Electricity" name="Bus15Phase3Out" connectedTo="line20Phase3In line56Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line20" length="1.0" assetType="gplkh_4_25_curm_4_2p5" name="line20">
        <port xsi:type="esdl:InPort" id="line20Phase1In" carrier="Electricity" connectedTo="Bus15Phase1Out" name="line20Phase1In"/>
        <port xsi:type="esdl:InPort" id="line20Phase2In" carrier="Electricity" connectedTo="Bus15Phase2Out" name="line20Phase2In"/>
        <port xsi:type="esdl:InPort" id="line20Phase3In" carrier="Electricity" connectedTo="Bus15Phase3Out" name="line20Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line20Phase1Out" carrier="Electricity" name="line20Phase1Out" connectedTo="Bus1501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line20Phase2Out" carrier="Electricity" name="line20Phase2Out" connectedTo="Bus1501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line20Phase3Out" carrier="Electricity" name="line20Phase3Out" connectedTo="Bus1501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1501" name="Bus1501">
        <port xsi:type="esdl:InPort" id="Bus1501Phase1In" carrier="Electricity" connectedTo="line20Phase1Out" name="Bus1501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus1501Phase2In" carrier="Electricity" connectedTo="line20Phase2Out" name="Bus1501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus1501Phase3In" carrier="Electricity" connectedTo="line20Phase3Out"  name="Bus1501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus1501Phase1Out" carrier="Electricity" id="Bus1501Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1501Phase2Out" carrier="Electricity" id="Bus1501Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus1501Phase3Out" carrier="Electricity" name="Bus1501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line21" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line21">
        <port xsi:type="esdl:InPort" id="line21Phase1In" carrier="Electricity" connectedTo="Bus12Phase1Out" name="line21Phase1In"/>
        <port xsi:type="esdl:InPort" id="line21Phase2In" carrier="Electricity" connectedTo="Bus12Phase2Out" name="line21Phase2In"/>
        <port xsi:type="esdl:InPort" id="line21Phase3In" carrier="Electricity" connectedTo="Bus12Phase3Out" name="line21Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line21Phase1Out" carrier="Electricity" name="line21Phase1Out" connectedTo="Bus16Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line21Phase2Out" carrier="Electricity" name="line21Phase2Out" connectedTo="Bus16Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line21Phase3Out" carrier="Electricity" name="line21Phase3Out" connectedTo="Bus16Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus16" name="Bus16">
        <port xsi:type="esdl:InPort" id="Bus16Phase1In" carrier="Electricity" connectedTo="line21Phase1Out" name="Bus16Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus16Phase2In" carrier="Electricity" connectedTo="line21Phase2Out" name="Bus16Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus16Phase3In" carrier="Electricity" connectedTo="line21Phase3Out" name="Bus16Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus16Phase1Out" carrier="Electricity" name="Bus16Phase1Out" connectedTo="line28Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus16Phase2Out" carrier="Electricity" name="Bus16Phase2Out" connectedTo="line28Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus16Phase3Out" carrier="Electricity" name="Bus16Phase3Out" connectedTo="line28Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line22" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line22">
        <port xsi:type="esdl:InPort" id="line22Phase1In" carrier="Electricity" connectedTo="Bus10Phase1Out" name="line22Phase1In"/>
        <port xsi:type="esdl:InPort" id="line22Phase2In" carrier="Electricity" connectedTo="Bus10Phase2Out" name="line22Phase2In"/>
        <port xsi:type="esdl:InPort" id="line22Phase3In" carrier="Electricity" connectedTo="Bus10Phase3Out" name="line22Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line22Phase1Out" carrier="Electricity" name="line22Phase1Out" connectedTo="Bus17Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line22Phase2Out" carrier="Electricity" name="line22Phase2Out" connectedTo="Bus17Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line22Phase3Out" carrier="Electricity" name="line22Phase3Out" connectedTo="Bus17Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus17" name="Bus17">
        <port xsi:type="esdl:InPort" id="Bus17Phase1In" carrier="Electricity" connectedTo="line22Phase1Out" name="Bus17Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus17Phase2In" carrier="Electricity" connectedTo="line22Phase2Out" name="Bus17Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus17Phase3In" carrier="Electricity" connectedTo="line22Phase3Out" name="Bus17Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus17Phase1Out" carrier="Electricity" name="Bus17Phase1Out" connectedTo="line23Phase1In line48Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus17Phase2Out" carrier="Electricity" name="Bus17Phase2Out" connectedTo="line23Phase2In line48Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus17Phase3Out" carrier="Electricity" name="Bus17Phase3Out" connectedTo="line23Phase3In line48Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line23" length="7.0" assetType="gplkh_4_25_curm_4_2p5" name="line23">
        <port xsi:type="esdl:InPort" id="line23Phase1In" carrier="Electricity" connectedTo="Bus17Phase1Out" name="line23Phase1In"/>
        <port xsi:type="esdl:InPort" id="line23Phase2In" carrier="Electricity" connectedTo="Bus17Phase2Out" name="line23Phase2In"/>
        <port xsi:type="esdl:InPort" id="line23Phase3In" carrier="Electricity" connectedTo="Bus17Phase3Out" name="line23Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line23Phase1Out" carrier="Electricity" name="line23Phase1Out" connectedTo="Bus1701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line23Phase2Out" carrier="Electricity" name="line23Phase2Out" connectedTo="Bus1701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line23Phase3Out" carrier="Electricity" name="line23Phase3Out" connectedTo="Bus1701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1701" name="Bus1701">
        <port xsi:type="esdl:InPort" id="Bus1701Phase1In" carrier="Electricity" connectedTo="line23Phase1Out" name="Bus1701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus1701Phase2In" carrier="Electricity" connectedTo="line23Phase2Out"  name="Bus1701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus1701Phase3In" carrier="Electricity" connectedTo="line23Phase3Out" name="Bus1701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus1701Phase1Out" carrier="Electricity" id="Bus1701Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus1701Phase2Out" carrier="Electricity" name="Bus1701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1701Phase3Out" carrier="Electricity" id="Bus1701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line24" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line24">
        <port xsi:type="esdl:InPort" id="line24Phase1In" carrier="Electricity" connectedTo="Bus14Phase1Out" name="line24Phase1In"/>
        <port xsi:type="esdl:InPort" id="line24Phase2In" carrier="Electricity" connectedTo="Bus14Phase2Out" name="line24Phase2In"/>
        <port xsi:type="esdl:InPort" id="line24Phase3In" carrier="Electricity" connectedTo="Bus14Phase3Out" name="line24Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line24Phase1Out" carrier="Electricity" name="line24Phase1Out" connectedTo="Bus18Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line24Phase2Out" carrier="Electricity" name="line24Phase2Out" connectedTo="Bus18Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line24Phase3Out" carrier="Electricity" name="line24Phase3Out" connectedTo="Bus18Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus18" name="Bus18">
        <port xsi:type="esdl:InPort" id="Bus18Phase1In" carrier="Electricity" connectedTo="line24Phase1Out" name="Bus18Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus18Phase2In" carrier="Electricity" connectedTo="line24Phase2Out" name="Bus18Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus18Phase3In" carrier="Electricity" connectedTo="line24Phase3Out" name="Bus18Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus18Phase1Out" carrier="Electricity" name="Bus18Phase1Out" connectedTo="line25Phase1In line36Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus18Phase2Out" carrier="Electricity" name="Bus18Phase2Out" connectedTo="line25Phase2In line36Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus18Phase3Out" carrier="Electricity" name="Bus18Phase3Out" connectedTo="line25Phase3In line36Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line25" length="34.0" assetType="gplkh_4_25_curm_4_2p5" name="line25">
        <port xsi:type="esdl:InPort" id="line25Phase1In" carrier="Electricity" connectedTo="Bus18Phase1Out" name="line25Phase1In"/>
        <port xsi:type="esdl:InPort" id="line25Phase2In" carrier="Electricity" connectedTo="Bus18Phase2Out" name="line25Phase2In"/>
        <port xsi:type="esdl:InPort" id="line25Phase3In" carrier="Electricity" connectedTo="Bus18Phase3Out" name="line25Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line25Phase1Out" carrier="Electricity" name="line25Phase1Out" connectedTo="Bus1801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line25Phase2Out" carrier="Electricity" name="line25Phase2Out" connectedTo="Bus1801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line25Phase3Out" carrier="Electricity" name="line25Phase3Out" connectedTo="Bus1801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1801" name="Bus1801">
        <port xsi:type="esdl:InPort" id="Bus1801Phase1In" carrier="Electricity" connectedTo="line25Phase1Out"  name="Bus1801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus1801Phase2In" carrier="Electricity" connectedTo="line25Phase2Out" name="Bus1801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus1801Phase3In" carrier="Electricity" connectedTo="line25Phase3Out" name="Bus1801Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus1801Phase1Out" carrier="Electricity" name="Bus1801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1801Phase2Out" carrier="Electricity" id="Bus1801Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1801Phase3Out" carrier="Electricity" id="Bus1801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line26" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line26">
        <port xsi:type="esdl:InPort" id="line26Phase1In" carrier="Electricity" connectedTo="Bus8Phase1Out" name="line26Phase1In"/>
        <port xsi:type="esdl:InPort" id="line26Phase2In" carrier="Electricity" connectedTo="Bus8Phase2Out" name="line26Phase2In"/>
        <port xsi:type="esdl:InPort" id="line26Phase3In" carrier="Electricity" connectedTo="Bus8Phase3Out" name="line26Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line26Phase1Out" carrier="Electricity" name="line26Phase1Out" connectedTo="Bus19Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line26Phase2Out" carrier="Electricity" name="line26Phase2Out" connectedTo="Bus19Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line26Phase3Out" carrier="Electricity" name="line26Phase3Out" connectedTo="Bus19Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus19" name="Bus19">
        <port xsi:type="esdl:InPort" id="Bus19Phase1In" carrier="Electricity" connectedTo="line26Phase1Out" name="Bus19Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus19Phase2In" carrier="Electricity" connectedTo="line26Phase2Out" name="Bus19Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus19Phase3In" carrier="Electricity" connectedTo="line26Phase3Out" name="Bus19Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus19Phase1Out" carrier="Electricity" name="Bus19Phase1Out" connectedTo="line27Phase1In line32Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus19Phase2Out" carrier="Electricity" name="Bus19Phase2Out" connectedTo="line27Phase2In line32Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus19Phase3Out" carrier="Electricity" name="Bus19Phase3Out" connectedTo="line27Phase3In line32Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line27" length="15.0" assetType="gplkh_4_25_curm_4_2p5" name="line27">
        <port xsi:type="esdl:InPort" id="line27Phase1In" carrier="Electricity" connectedTo="Bus19Phase1Out" name="line27Phase1In"/>
        <port xsi:type="esdl:InPort" id="line27Phase2In" carrier="Electricity" connectedTo="Bus19Phase2Out" name="line27Phase2In"/>
        <port xsi:type="esdl:InPort" id="line27Phase3In" carrier="Electricity" connectedTo="Bus19Phase3Out" name="line27Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line27Phase1Out" carrier="Electricity" name="line27Phase1Out" connectedTo="Bus1901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line27Phase2Out" carrier="Electricity" name="line27Phase2Out" connectedTo="Bus1901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line27Phase3Out" carrier="Electricity" name="line27Phase3Out" connectedTo="Bus1901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1901" name="Bus1901">
        <port xsi:type="esdl:InPort" id="Bus1901Phase1In" carrier="Electricity" connectedTo="line27Phase1Out"  name="Bus1901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus1901Phase2In" carrier="Electricity" connectedTo="line27Phase2Out" name="Bus1901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus1901Phase3In" carrier="Electricity" connectedTo="line27Phase3Out" name="Bus1901Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus1901Phase1Out" carrier="Electricity" name="Bus1901Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1901Phase2Out" carrier="Electricity" id="Bus1901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus1901Phase3Out" carrier="Electricity" id="Bus1901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line28" length="7.0" assetType="gplkh_4_50_cusvm_4_6" name="line28">
        <port xsi:type="esdl:InPort" id="line28Phase1In" carrier="Electricity" connectedTo="Bus16Phase1Out" name="line28Phase1In"/>
        <port xsi:type="esdl:InPort" id="line28Phase2In" carrier="Electricity" connectedTo="Bus16Phase2Out" name="line28Phase2In"/>
        <port xsi:type="esdl:InPort" id="line28Phase3In" carrier="Electricity" connectedTo="Bus16Phase3Out" name="line28Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line28Phase1Out" carrier="Electricity" name="line28Phase1Out" connectedTo="Bus20Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line28Phase2Out" carrier="Electricity" name="line28Phase2Out" connectedTo="Bus20Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line28Phase3Out" carrier="Electricity" name="line28Phase3Out" connectedTo="Bus20Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus20" name="Bus20">
        <port xsi:type="esdl:InPort" id="Bus20Phase1In" carrier="Electricity" connectedTo="line28Phase1Out" name="Bus20Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus20Phase2In" carrier="Electricity" connectedTo="line28Phase2Out" name="Bus20Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus20Phase3In" carrier="Electricity" connectedTo="line28Phase3Out" name="Bus20Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus20Phase1Out" carrier="Electricity" name="Bus20Phase1Out" connectedTo="line29Phase1In line44Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus20Phase2Out" carrier="Electricity" name="Bus20Phase2Out" connectedTo="line29Phase2In line44Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus20Phase3Out" carrier="Electricity" name="Bus20Phase3Out" connectedTo="line29Phase3In line44Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line29" length="37.0" assetType="gplkh_4_25_curm_4_2p5" name="line29">
        <port xsi:type="esdl:InPort" id="line29Phase1In" carrier="Electricity" connectedTo="Bus20Phase1Out" name="line29Phase1In"/>
        <port xsi:type="esdl:InPort" id="line29Phase2In" carrier="Electricity" connectedTo="Bus20Phase2Out" name="line29Phase2In"/>
        <port xsi:type="esdl:InPort" id="line29Phase3In" carrier="Electricity" connectedTo="Bus20Phase3Out" name="line29Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line29Phase1Out" carrier="Electricity" name="line29Phase1Out" connectedTo="Bus2001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line29Phase2Out" carrier="Electricity" name="line29Phase2Out" connectedTo="Bus2001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line29Phase3Out" carrier="Electricity" name="line29Phase3Out" connectedTo="Bus2001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2001" name="Bus2001">
        <port xsi:type="esdl:InPort" id="Bus2001Phase1In" carrier="Electricity" connectedTo="line29Phase1Out" name="Bus2001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2001Phase2In" carrier="Electricity" connectedTo="line29Phase2Out" name="Bus2001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2001Phase3In" carrier="Electricity" connectedTo="line29Phase3Out"  name="Bus2001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2001Phase1Out" carrier="Electricity" id="Bus2001Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2001Phase2Out" carrier="Electricity" id="Bus2001Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2001Phase3Out" carrier="Electricity" name="Bus2001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line30" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line30">
        <port xsi:type="esdl:InPort" id="line30Phase1In" carrier="Electricity" connectedTo="Bus13Phase1Out" name="line30Phase1In"/>
        <port xsi:type="esdl:InPort" id="line30Phase2In" carrier="Electricity" connectedTo="Bus13Phase2Out" name="line30Phase2In"/>
        <port xsi:type="esdl:InPort" id="line30Phase3In" carrier="Electricity" connectedTo="Bus13Phase3Out" name="line30Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line30Phase1Out" carrier="Electricity" name="line30Phase1Out" connectedTo="Bus21Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line30Phase2Out" carrier="Electricity" name="line30Phase2Out" connectedTo="Bus21Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line30Phase3Out" carrier="Electricity" name="line30Phase3Out" connectedTo="Bus21Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus21" name="Bus21">
        <port xsi:type="esdl:InPort" id="Bus21Phase1In" carrier="Electricity" connectedTo="line30Phase1Out" name="Bus21Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus21Phase2In" carrier="Electricity" connectedTo="line30Phase2Out" name="Bus21Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus21Phase3In" carrier="Electricity" connectedTo="line30Phase3Out" name="Bus21Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus21Phase1Out" carrier="Electricity" name="Bus21Phase1Out" connectedTo="line31Phase1In line38Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus21Phase2Out" carrier="Electricity" name="Bus21Phase2Out" connectedTo="line31Phase2In line38Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus21Phase3Out" carrier="Electricity" name="Bus21Phase3Out" connectedTo="line31Phase3In line38Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line31" length="3.0" assetType="gplkh_4_6_curm_4_2p5" name="line31">
        <port xsi:type="esdl:InPort" id="line31Phase1In" carrier="Electricity" connectedTo="Bus21Phase1Out" name="line31Phase1In"/>
        <port xsi:type="esdl:InPort" id="line31Phase2In" carrier="Electricity" connectedTo="Bus21Phase2Out" name="line31Phase2In"/>
        <port xsi:type="esdl:InPort" id="line31Phase3In" carrier="Electricity" connectedTo="Bus21Phase3Out" name="line31Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line31Phase1Out" carrier="Electricity" name="line31Phase1Out" connectedTo="Bus2101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line31Phase2Out" carrier="Electricity" name="line31Phase2Out" connectedTo="Bus2101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line31Phase3Out" carrier="Electricity" name="line31Phase3Out" connectedTo="Bus2101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2101" name="Bus2101">
        <port xsi:type="esdl:InPort" id="Bus2101Phase1In" carrier="Electricity" connectedTo="line31Phase1Out" name="Bus2101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2101Phase2In" carrier="Electricity" connectedTo="line31Phase2Out"  name="Bus2101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2101Phase3In" carrier="Electricity" connectedTo="line31Phase3Out" name="Bus2101Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2101Phase1Out" carrier="Electricity" id="Bus2101Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2101Phase2Out" carrier="Electricity" name="Bus2101Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2101Phase3Out" carrier="Electricity" id="Bus2101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line32" length="7.0" assetType="gplkh_4_50_cusvm_4_6" name="line32">
        <port xsi:type="esdl:InPort" id="line32Phase1In" carrier="Electricity" connectedTo="Bus19Phase1Out" name="line32Phase1In"/>
        <port xsi:type="esdl:InPort" id="line32Phase2In" carrier="Electricity" connectedTo="Bus19Phase2Out" name="line32Phase2In"/>
        <port xsi:type="esdl:InPort" id="line32Phase3In" carrier="Electricity" connectedTo="Bus19Phase3Out" name="line32Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line32Phase1Out" carrier="Electricity" name="line32Phase1Out" connectedTo="Bus22Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line32Phase2Out" carrier="Electricity" name="line32Phase2Out" connectedTo="Bus22Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line32Phase3Out" carrier="Electricity" name="line32Phase3Out" connectedTo="Bus22Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus22" name="Bus22">
        <port xsi:type="esdl:InPort" id="Bus22Phase1In" carrier="Electricity" connectedTo="line32Phase1Out" name="Bus22Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus22Phase2In" carrier="Electricity" connectedTo="line32Phase2Out" name="Bus22Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus22Phase3In" carrier="Electricity" connectedTo="line32Phase3Out" name="Bus22Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus22Phase1Out" carrier="Electricity" name="Bus22Phase1Out" connectedTo="line33Phase1In line42Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus22Phase2Out" carrier="Electricity" name="Bus22Phase2Out" connectedTo="line33Phase2In line42Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus22Phase3Out" carrier="Electricity" name="Bus22Phase3Out" connectedTo="line33Phase3In line42Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line33" length="5.0" assetType="gplkh_4_6_curm_4_2p5" name="line33">
        <port xsi:type="esdl:InPort" id="line33Phase1In" carrier="Electricity" connectedTo="Bus22Phase1Out" name="line33Phase1In"/>
        <port xsi:type="esdl:InPort" id="line33Phase2In" carrier="Electricity" connectedTo="Bus22Phase2Out" name="line33Phase2In"/>
        <port xsi:type="esdl:InPort" id="line33Phase3In" carrier="Electricity" connectedTo="Bus22Phase3Out" name="line33Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line33Phase1Out" carrier="Electricity" name="line33Phase1Out" connectedTo="Bus2201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line33Phase2Out" carrier="Electricity" name="line33Phase2Out" connectedTo="Bus2201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line33Phase3Out" carrier="Electricity" name="line33Phase3Out" connectedTo="Bus2201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2201" name="Bus2201">
        <port xsi:type="esdl:InPort" id="Bus2201Phase1In" carrier="Electricity" connectedTo="line33Phase1Out" name="Bus2201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2201Phase2In" carrier="Electricity" connectedTo="line33Phase2Out"  name="Bus2201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2201Phase3In" carrier="Electricity" connectedTo="line33Phase3Out" name="Bus2201Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2201Phase1Out" carrier="Electricity" id="Bus2201Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2201Phase2Out" carrier="Electricity" name="Bus2201Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2201Phase3Out" carrier="Electricity" id="Bus2201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line34" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line34">
        <port xsi:type="esdl:InPort" id="line34Phase1In" carrier="Electricity" connectedTo="Bus11Phase1Out" name="line34Phase1In"/>
        <port xsi:type="esdl:InPort" id="line34Phase2In" carrier="Electricity" connectedTo="Bus11Phase2Out" name="line34Phase2In"/>
        <port xsi:type="esdl:InPort" id="line34Phase3In" carrier="Electricity" connectedTo="Bus11Phase3Out" name="line34Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line34Phase1Out" carrier="Electricity" name="line34Phase1Out" connectedTo="Bus23Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line34Phase2Out" carrier="Electricity" name="line34Phase2Out" connectedTo="Bus23Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line34Phase3Out" carrier="Electricity" name="line34Phase3Out" connectedTo="Bus23Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus23" name="Bus23">
        <port xsi:type="esdl:InPort" id="Bus23Phase1In" carrier="Electricity" connectedTo="line34Phase1Out" name="Bus23Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus23Phase2In" carrier="Electricity" connectedTo="line34Phase2Out" name="Bus23Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus23Phase3In" carrier="Electricity" connectedTo="line34Phase3Out" name="Bus23Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus23Phase1Out" carrier="Electricity" name="Bus23Phase1Out" connectedTo="line35Phase1In line64Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus23Phase2Out" carrier="Electricity" name="Bus23Phase2Out" connectedTo="line35Phase2In line64Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus23Phase3Out" carrier="Electricity" name="Bus23Phase3Out" connectedTo="line35Phase3In line64Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line35" length="37.0" assetType="gplkh_4_6_curm_4_2p5" name="line35">
        <port xsi:type="esdl:InPort" id="line35Phase1In" carrier="Electricity" connectedTo="Bus23Phase1Out" name="line35Phase1In"/>
        <port xsi:type="esdl:InPort" id="line35Phase2In" carrier="Electricity" connectedTo="Bus23Phase2Out" name="line35Phase2In"/>
        <port xsi:type="esdl:InPort" id="line35Phase3In" carrier="Electricity" connectedTo="Bus23Phase3Out" name="line35Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line35Phase1Out" carrier="Electricity" name="line35Phase1Out" connectedTo="Bus2301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line35Phase2Out" carrier="Electricity" name="line35Phase2Out" connectedTo="Bus2301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line35Phase3Out" carrier="Electricity" name="line35Phase3Out" connectedTo="Bus2301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2301" name="Bus2301">
        <port xsi:type="esdl:InPort" id="Bus2301Phase1In" carrier="Electricity" connectedTo="line35Phase1Out"  name="Bus2301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2301Phase2In" carrier="Electricity" connectedTo="line35Phase2Out" name="Bus2301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2301Phase3In" carrier="Electricity" connectedTo="line35Phase3Out" name="Bus2301Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus2301Phase1Out" carrier="Electricity" name="Bus2301Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2301Phase2Out" carrier="Electricity" id="Bus2301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2301Phase3Out" carrier="Electricity" id="Bus2301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line36" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line36">
        <port xsi:type="esdl:InPort" id="line36Phase1In" carrier="Electricity" connectedTo="Bus18Phase1Out" name="line36Phase1In"/>
        <port xsi:type="esdl:InPort" id="line36Phase2In" carrier="Electricity" connectedTo="Bus18Phase2Out" name="line36Phase2In"/>
        <port xsi:type="esdl:InPort" id="line36Phase3In" carrier="Electricity" connectedTo="Bus18Phase3Out" name="line36Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line36Phase1Out" carrier="Electricity" name="line36Phase1Out" connectedTo="Bus24Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line36Phase2Out" carrier="Electricity" name="line36Phase2Out" connectedTo="Bus24Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line36Phase3Out" carrier="Electricity" name="line36Phase3Out" connectedTo="Bus24Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus24" name="Bus24">
        <port xsi:type="esdl:InPort" id="Bus24Phase1In" carrier="Electricity" connectedTo="line36Phase1Out" name="Bus24Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus24Phase2In" carrier="Electricity" connectedTo="line36Phase2Out" name="Bus24Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus24Phase3In" carrier="Electricity" connectedTo="line36Phase3Out" name="Bus24Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus24Phase1Out" carrier="Electricity" name="Bus24Phase1Out" connectedTo="line37Phase1In line46Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus24Phase2Out" carrier="Electricity" name="Bus24Phase2Out" connectedTo="line37Phase2In line46Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus24Phase3Out" carrier="Electricity" name="Bus24Phase3Out" connectedTo="line37Phase3In line46Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line37" length="8.0" assetType="gplkh_4_6_curm_4_2p5" name="line37">
        <port xsi:type="esdl:InPort" id="line37Phase1In" carrier="Electricity" connectedTo="Bus24Phase1Out" name="line37Phase1In"/>
        <port xsi:type="esdl:InPort" id="line37Phase2In" carrier="Electricity" connectedTo="Bus24Phase2Out" name="line37Phase2In"/>
        <port xsi:type="esdl:InPort" id="line37Phase3In" carrier="Electricity" connectedTo="Bus24Phase3Out" name="line37Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line37Phase1Out" carrier="Electricity" name="line37Phase1Out" connectedTo="Bus2401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line37Phase2Out" carrier="Electricity" name="line37Phase2Out" connectedTo="Bus2401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line37Phase3Out" carrier="Electricity" name="line37Phase3Out" connectedTo="Bus2401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2401" name="Bus2401">
        <port xsi:type="esdl:InPort" id="Bus2401Phase1In" carrier="Electricity" connectedTo="line37Phase1Out"  name="Bus2401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2401Phase2In" carrier="Electricity" connectedTo="line37Phase2Out" name="Bus2401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2401Phase3In" carrier="Electricity" connectedTo="line37Phase3Out" name="Bus2401Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus2401Phase1Out" carrier="Electricity" name="Bus2401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2401Phase2Out" carrier="Electricity" id="Bus2401Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2401Phase3Out" carrier="Electricity" id="Bus2401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line38" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line38">
        <port xsi:type="esdl:InPort" id="line38Phase1In" carrier="Electricity" connectedTo="Bus21Phase1Out" name="line38Phase1In"/>
        <port xsi:type="esdl:InPort" id="line38Phase2In" carrier="Electricity" connectedTo="Bus21Phase2Out" name="line38Phase2In"/>
        <port xsi:type="esdl:InPort" id="line38Phase3In" carrier="Electricity" connectedTo="Bus21Phase3Out" name="line38Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line38Phase1Out" carrier="Electricity" name="line38Phase1Out" connectedTo="Bus25Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line38Phase2Out" carrier="Electricity" name="line38Phase2Out" connectedTo="Bus25Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line38Phase3Out" carrier="Electricity" name="line38Phase3Out" connectedTo="Bus25Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus25" name="Bus25">
        <port xsi:type="esdl:InPort" id="Bus25Phase1In" carrier="Electricity" connectedTo="line38Phase1Out" name="Bus25Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus25Phase2In" carrier="Electricity" connectedTo="line38Phase2Out" name="Bus25Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus25Phase3In" carrier="Electricity" connectedTo="line38Phase3Out" name="Bus25Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus25Phase1Out" carrier="Electricity" name="Bus25Phase1Out" connectedTo="line39Phase1In line40Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus25Phase2Out" carrier="Electricity" name="Bus25Phase2Out" connectedTo="line39Phase2In line40Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus25Phase3Out" carrier="Electricity" name="Bus25Phase3Out" connectedTo="line39Phase3In line40Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line39" length="30.0" assetType="gplkh_4_6_curm_4_2p5" name="line39">
        <port xsi:type="esdl:InPort" id="line39Phase1In" carrier="Electricity" connectedTo="Bus25Phase1Out" name="line39Phase1In"/>
        <port xsi:type="esdl:InPort" id="line39Phase2In" carrier="Electricity" connectedTo="Bus25Phase2Out" name="line39Phase2In"/>
        <port xsi:type="esdl:InPort" id="line39Phase3In" carrier="Electricity" connectedTo="Bus25Phase3Out" name="line39Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line39Phase1Out" carrier="Electricity" name="line39Phase1Out" connectedTo="Bus2501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line39Phase2Out" carrier="Electricity" name="line39Phase2Out" connectedTo="Bus2501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line39Phase3Out" carrier="Electricity" name="line39Phase3Out" connectedTo="Bus2501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2501" name="Bus2501">
        <port xsi:type="esdl:InPort" id="Bus2501Phase1In" carrier="Electricity" connectedTo="line39Phase1Out" name="Bus2501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2501Phase2In" carrier="Electricity" connectedTo="line39Phase2Out" name="Bus2501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2501Phase3In" carrier="Electricity" connectedTo="line39Phase3Out"  name="Bus2501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2501Phase1Out" carrier="Electricity" id="Bus2501Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2501Phase2Out" carrier="Electricity" id="Bus2501Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2501Phase3Out" carrier="Electricity" name="Bus2501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line40" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line40">
        <port xsi:type="esdl:InPort" id="line40Phase1In" carrier="Electricity" connectedTo="Bus25Phase1Out" name="line40Phase1In"/>
        <port xsi:type="esdl:InPort" id="line40Phase2In" carrier="Electricity" connectedTo="Bus25Phase2Out" name="line40Phase2In"/>
        <port xsi:type="esdl:InPort" id="line40Phase3In" carrier="Electricity" connectedTo="Bus25Phase3Out" name="line40Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line40Phase1Out" carrier="Electricity" name="line40Phase1Out" connectedTo="Bus26Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line40Phase2Out" carrier="Electricity" name="line40Phase2Out" connectedTo="Bus26Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line40Phase3Out" carrier="Electricity" name="line40Phase3Out" connectedTo="Bus26Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus26" name="Bus26">
        <port xsi:type="esdl:InPort" id="Bus26Phase1In" carrier="Electricity" connectedTo="line40Phase1Out" name="Bus26Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus26Phase2In" carrier="Electricity" connectedTo="line40Phase2Out" name="Bus26Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus26Phase3In" carrier="Electricity" connectedTo="line40Phase3Out" name="Bus26Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus26Phase1Out" carrier="Electricity" name="Bus26Phase1Out" connectedTo="line41Phase1In line80Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus26Phase2Out" carrier="Electricity" name="Bus26Phase2Out" connectedTo="line41Phase2In line80Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus26Phase3Out" carrier="Electricity" name="Bus26Phase3Out" connectedTo="line41Phase3In line80Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line41" length="35.0" assetType="gplkh_4_6_curm_4_2p5" name="line41">
        <port xsi:type="esdl:InPort" id="line41Phase1In" carrier="Electricity" connectedTo="Bus26Phase1Out" name="line41Phase1In"/>
        <port xsi:type="esdl:InPort" id="line41Phase2In" carrier="Electricity" connectedTo="Bus26Phase2Out" name="line41Phase2In"/>
        <port xsi:type="esdl:InPort" id="line41Phase3In" carrier="Electricity" connectedTo="Bus26Phase3Out" name="line41Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line41Phase1Out" carrier="Electricity" name="line41Phase1Out" connectedTo="Bus2601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line41Phase2Out" carrier="Electricity" name="line41Phase2Out" connectedTo="Bus2601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line41Phase3Out" carrier="Electricity" name="line41Phase3Out" connectedTo="Bus2601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2601" name="Bus2601">
        <port xsi:type="esdl:InPort" id="Bus2601Phase1In" carrier="Electricity" connectedTo="line41Phase1Out" name="Bus2601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2601Phase2In" carrier="Electricity" connectedTo="line41Phase2Out" name="Bus2601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2601Phase3In" carrier="Electricity" connectedTo="line41Phase3Out"  name="Bus2601Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2601Phase1Out" carrier="Electricity" id="Bus2601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2601Phase2Out" carrier="Electricity" id="Bus2601Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2601Phase3Out" carrier="Electricity" name="Bus2601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line42" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line42">
        <port xsi:type="esdl:InPort" id="line42Phase1In" carrier="Electricity" connectedTo="Bus22Phase1Out" name="line42Phase1In"/>
        <port xsi:type="esdl:InPort" id="line42Phase2In" carrier="Electricity" connectedTo="Bus22Phase2Out" name="line42Phase2In"/>
        <port xsi:type="esdl:InPort" id="line42Phase3In" carrier="Electricity" connectedTo="Bus22Phase3Out" name="line42Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line42Phase1Out" carrier="Electricity" name="line42Phase1Out" connectedTo="Bus27Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line42Phase2Out" carrier="Electricity" name="line42Phase2Out" connectedTo="Bus27Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line42Phase3Out" carrier="Electricity" name="line42Phase3Out" connectedTo="Bus27Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus27" name="Bus27">
        <port xsi:type="esdl:InPort" id="Bus27Phase1In" carrier="Electricity" connectedTo="line42Phase1Out" name="Bus27Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus27Phase2In" carrier="Electricity" connectedTo="line42Phase2Out" name="Bus27Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus27Phase3In" carrier="Electricity" connectedTo="line42Phase3Out" name="Bus27Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus27Phase1Out" carrier="Electricity" name="Bus27Phase1Out" connectedTo="line43Phase1In line54Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus27Phase2Out" carrier="Electricity" name="Bus27Phase2Out" connectedTo="line43Phase2In line54Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus27Phase3Out" carrier="Electricity" name="Bus27Phase3Out" connectedTo="line43Phase3In line54Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line43" length="14.0" assetType="gplkh_4_6_curm_4_2p5" name="line43">
        <port xsi:type="esdl:InPort" id="line43Phase1In" carrier="Electricity" connectedTo="Bus27Phase1Out" name="line43Phase1In"/>
        <port xsi:type="esdl:InPort" id="line43Phase2In" carrier="Electricity" connectedTo="Bus27Phase2Out" name="line43Phase2In"/>
        <port xsi:type="esdl:InPort" id="line43Phase3In" carrier="Electricity" connectedTo="Bus27Phase3Out" name="line43Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line43Phase1Out" carrier="Electricity" name="line43Phase1Out" connectedTo="Bus2701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line43Phase2Out" carrier="Electricity" name="line43Phase2Out" connectedTo="Bus2701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line43Phase3Out" carrier="Electricity" name="line43Phase3Out" connectedTo="Bus2701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2701" name="Bus2701">
        <port xsi:type="esdl:InPort" id="Bus2701Phase1In" carrier="Electricity" connectedTo="line43Phase1Out" name="Bus2701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2701Phase2In" carrier="Electricity" connectedTo="line43Phase2Out"  name="Bus2701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2701Phase3In" carrier="Electricity" connectedTo="line43Phase3Out" name="Bus2701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2701Phase1Out" carrier="Electricity" id="Bus2701Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2701Phase2Out" carrier="Electricity" name="Bus2701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2701Phase3Out" carrier="Electricity" id="Bus2701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line44" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line44">
        <port xsi:type="esdl:InPort" id="line44Phase1In" carrier="Electricity" connectedTo="Bus20Phase1Out" name="line44Phase1In"/>
        <port xsi:type="esdl:InPort" id="line44Phase2In" carrier="Electricity" connectedTo="Bus20Phase2Out" name="line44Phase2In"/>
        <port xsi:type="esdl:InPort" id="line44Phase3In" carrier="Electricity" connectedTo="Bus20Phase3Out" name="line44Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line44Phase1Out" carrier="Electricity" name="line44Phase1Out" connectedTo="Bus28Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line44Phase2Out" carrier="Electricity" name="line44Phase2Out" connectedTo="Bus28Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line44Phase3Out" carrier="Electricity" name="line44Phase3Out" connectedTo="Bus28Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus28" name="Bus28">
        <port xsi:type="esdl:InPort" id="Bus28Phase1In" carrier="Electricity" connectedTo="line44Phase1Out" name="Bus28Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus28Phase2In" carrier="Electricity" connectedTo="line44Phase2Out" name="Bus28Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus28Phase3In" carrier="Electricity" connectedTo="line44Phase3Out" name="Bus28Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus28Phase1Out" carrier="Electricity" name="Bus28Phase1Out" connectedTo="line45Phase1In line102Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus28Phase2Out" carrier="Electricity" name="Bus28Phase2Out" connectedTo="line45Phase2In line102Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus28Phase3Out" carrier="Electricity" name="Bus28Phase3Out" connectedTo="line45Phase3In line102Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line45" length="40.0" assetType="gplkh_4_6_curm_4_2p5" name="line45">
        <port xsi:type="esdl:InPort" id="line45Phase1In" carrier="Electricity" connectedTo="Bus28Phase1Out" name="line45Phase1In"/>
        <port xsi:type="esdl:InPort" id="line45Phase2In" carrier="Electricity" connectedTo="Bus28Phase2Out" name="line45Phase2In"/>
        <port xsi:type="esdl:InPort" id="line45Phase3In" carrier="Electricity" connectedTo="Bus28Phase3Out" name="line45Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line45Phase1Out" carrier="Electricity" name="line45Phase1Out" connectedTo="Bus2801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line45Phase2Out" carrier="Electricity" name="line45Phase2Out" connectedTo="Bus2801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line45Phase3Out" carrier="Electricity" name="line45Phase3Out" connectedTo="Bus2801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2801" name="Bus2801">
        <port xsi:type="esdl:InPort" id="Bus2801Phase1In" carrier="Electricity" connectedTo="line45Phase1Out" name="Bus2801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2801Phase2In" carrier="Electricity" connectedTo="line45Phase2Out" name="Bus2801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2801Phase3In" carrier="Electricity" connectedTo="line45Phase3Out"  name="Bus2801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2801Phase1Out" carrier="Electricity" id="Bus2801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2801Phase2Out" carrier="Electricity" id="Bus2801Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2801Phase3Out" carrier="Electricity" name="Bus2801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line46" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line46">
        <port xsi:type="esdl:InPort" id="line46Phase1In" carrier="Electricity" connectedTo="Bus24Phase1Out" name="line46Phase1In"/>
        <port xsi:type="esdl:InPort" id="line46Phase2In" carrier="Electricity" connectedTo="Bus24Phase2Out" name="line46Phase2In"/>
        <port xsi:type="esdl:InPort" id="line46Phase3In" carrier="Electricity" connectedTo="Bus24Phase3Out" name="line46Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line46Phase1Out" carrier="Electricity" name="line46Phase1Out" connectedTo="Bus29Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line46Phase2Out" carrier="Electricity" name="line46Phase2Out" connectedTo="Bus29Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line46Phase3Out" carrier="Electricity" name="line46Phase3Out" connectedTo="Bus29Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus29" name="Bus29">
        <port xsi:type="esdl:InPort" id="Bus29Phase1In" carrier="Electricity" connectedTo="line46Phase1Out" name="Bus29Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus29Phase2In" carrier="Electricity" connectedTo="line46Phase2Out" name="Bus29Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus29Phase3In" carrier="Electricity" connectedTo="line46Phase3Out" name="Bus29Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus29Phase1Out" carrier="Electricity" name="Bus29Phase1Out" connectedTo="line47Phase1In line50Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus29Phase2Out" carrier="Electricity" name="Bus29Phase2Out" connectedTo="line47Phase2In line50Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus29Phase3Out" carrier="Electricity" name="Bus29Phase3Out" connectedTo="line47Phase3In line50Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line47" length="37.0" assetType="gplkh_4_6_curm_4_2p5" name="line47">
        <port xsi:type="esdl:InPort" id="line47Phase1In" carrier="Electricity" connectedTo="Bus29Phase1Out" name="line47Phase1In"/>
        <port xsi:type="esdl:InPort" id="line47Phase2In" carrier="Electricity" connectedTo="Bus29Phase2Out" name="line47Phase2In"/>
        <port xsi:type="esdl:InPort" id="line47Phase3In" carrier="Electricity" connectedTo="Bus29Phase3Out" name="line47Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line47Phase1Out" carrier="Electricity" name="line47Phase1Out" connectedTo="Bus2901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line47Phase2Out" carrier="Electricity" name="line47Phase2Out" connectedTo="Bus2901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line47Phase3Out" carrier="Electricity" name="line47Phase3Out" connectedTo="Bus2901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2901" name="Bus2901">
        <port xsi:type="esdl:InPort" id="Bus2901Phase1In" carrier="Electricity" connectedTo="line47Phase1Out" name="Bus2901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus2901Phase2In" carrier="Electricity" connectedTo="line47Phase2Out"  name="Bus2901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus2901Phase3In" carrier="Electricity" connectedTo="line47Phase3Out" name="Bus2901Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus2901Phase1Out" carrier="Electricity" id="Bus2901Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus2901Phase2Out" carrier="Electricity" name="Bus2901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus2901Phase3Out" carrier="Electricity" id="Bus2901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line48" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line48">
        <port xsi:type="esdl:InPort" id="line48Phase1In" carrier="Electricity" connectedTo="Bus17Phase1Out" name="line48Phase1In"/>
        <port xsi:type="esdl:InPort" id="line48Phase2In" carrier="Electricity" connectedTo="Bus17Phase2Out" name="line48Phase2In"/>
        <port xsi:type="esdl:InPort" id="line48Phase3In" carrier="Electricity" connectedTo="Bus17Phase3Out" name="line48Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line48Phase1Out" carrier="Electricity" name="line48Phase1Out" connectedTo="Bus30Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line48Phase2Out" carrier="Electricity" name="line48Phase2Out" connectedTo="Bus30Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line48Phase3Out" carrier="Electricity" name="line48Phase3Out" connectedTo="Bus30Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus30" name="Bus30">
        <port xsi:type="esdl:InPort" id="Bus30Phase1In" carrier="Electricity" connectedTo="line48Phase1Out" name="Bus30Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus30Phase2In" carrier="Electricity" connectedTo="line48Phase2Out" name="Bus30Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus30Phase3In" carrier="Electricity" connectedTo="line48Phase3Out" name="Bus30Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus30Phase1Out" carrier="Electricity" name="Bus30Phase1Out" connectedTo="line49Phase1In line78Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus30Phase2Out" carrier="Electricity" name="Bus30Phase2Out" connectedTo="line49Phase2In line78Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus30Phase3Out" carrier="Electricity" name="Bus30Phase3Out" connectedTo="line49Phase3In line78Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line49" length="17.0" assetType="gplkh_4_6_curm_4_2p5" name="line49">
        <port xsi:type="esdl:InPort" id="line49Phase1In" carrier="Electricity" connectedTo="Bus30Phase1Out" name="line49Phase1In"/>
        <port xsi:type="esdl:InPort" id="line49Phase2In" carrier="Electricity" connectedTo="Bus30Phase2Out" name="line49Phase2In"/>
        <port xsi:type="esdl:InPort" id="line49Phase3In" carrier="Electricity" connectedTo="Bus30Phase3Out" name="line49Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line49Phase1Out" carrier="Electricity" name="line49Phase1Out" connectedTo="Bus3001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line49Phase2Out" carrier="Electricity" name="line49Phase2Out" connectedTo="Bus3001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line49Phase3Out" carrier="Electricity" name="line49Phase3Out" connectedTo="Bus3001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3001" name="Bus3001">
        <port xsi:type="esdl:InPort" id="Bus3001Phase1In" carrier="Electricity" connectedTo="line49Phase1Out" name="Bus3001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3001Phase2In" carrier="Electricity" connectedTo="line49Phase2Out"  name="Bus3001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3001Phase3In" carrier="Electricity" connectedTo="line49Phase3Out" name="Bus3001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus3001Phase1Out" carrier="Electricity" id="Bus3001Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus3001Phase2Out" carrier="Electricity" name="Bus3001Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3001Phase3Out" carrier="Electricity" id="Bus3001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line50" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line50">
        <port xsi:type="esdl:InPort" id="line50Phase1In" carrier="Electricity" connectedTo="Bus29Phase1Out" name="line50Phase1In"/>
        <port xsi:type="esdl:InPort" id="line50Phase2In" carrier="Electricity" connectedTo="Bus29Phase2Out" name="line50Phase2In"/>
        <port xsi:type="esdl:InPort" id="line50Phase3In" carrier="Electricity" connectedTo="Bus29Phase3Out" name="line50Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line50Phase1Out" carrier="Electricity" name="line50Phase1Out" connectedTo="Bus31Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line50Phase2Out" carrier="Electricity" name="line50Phase2Out" connectedTo="Bus31Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line50Phase3Out" carrier="Electricity" name="line50Phase3Out" connectedTo="Bus31Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus31" name="Bus31">
        <port xsi:type="esdl:InPort" id="Bus31Phase1In" carrier="Electricity" connectedTo="line50Phase1Out" name="Bus31Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus31Phase2In" carrier="Electricity" connectedTo="line50Phase2Out" name="Bus31Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus31Phase3In" carrier="Electricity" connectedTo="line50Phase3Out" name="Bus31Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus31Phase1Out" carrier="Electricity" name="Bus31Phase1Out" connectedTo="line51Phase1In line96Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus31Phase2Out" carrier="Electricity" name="Bus31Phase2Out" connectedTo="line51Phase2In line96Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus31Phase3Out" carrier="Electricity" name="Bus31Phase3Out" connectedTo="line51Phase3In line96Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line51" length="27.0" assetType="gplkh_4_6_curm_4_2p5" name="line51">
        <port xsi:type="esdl:InPort" id="line51Phase1In" carrier="Electricity" connectedTo="Bus31Phase1Out" name="line51Phase1In"/>
        <port xsi:type="esdl:InPort" id="line51Phase2In" carrier="Electricity" connectedTo="Bus31Phase2Out" name="line51Phase2In"/>
        <port xsi:type="esdl:InPort" id="line51Phase3In" carrier="Electricity" connectedTo="Bus31Phase3Out" name="line51Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line51Phase1Out" carrier="Electricity" name="line51Phase1Out" connectedTo="Bus3101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line51Phase2Out" carrier="Electricity" name="line51Phase2Out" connectedTo="Bus3101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line51Phase3Out" carrier="Electricity" name="line51Phase3Out" connectedTo="Bus3101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3101" name="Bus3101">
        <port xsi:type="esdl:InPort" id="Bus3101Phase1In" carrier="Electricity" connectedTo="line51Phase1Out" name="Bus3101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3101Phase2In" carrier="Electricity" connectedTo="line51Phase2Out" name="Bus3101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3101Phase3In" carrier="Electricity" connectedTo="line51Phase3Out"  name="Bus3101Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus3101Phase1Out" carrier="Electricity" id="Bus3101Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3101Phase2Out" carrier="Electricity" id="Bus3101Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus3101Phase3Out" carrier="Electricity" name="Bus3101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line52" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line52">
        <port xsi:type="esdl:InPort" id="line52Phase1In" carrier="Electricity" connectedTo="Bus4Phase1Out" name="line52Phase1In"/>
        <port xsi:type="esdl:InPort" id="line52Phase2In" carrier="Electricity" connectedTo="Bus4Phase2Out" name="line52Phase2In"/>
        <port xsi:type="esdl:InPort" id="line52Phase3In" carrier="Electricity" connectedTo="Bus4Phase3Out" name="line52Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line52Phase1Out" carrier="Electricity" name="line52Phase1Out" connectedTo="Bus32Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line52Phase2Out" carrier="Electricity" name="line52Phase2Out" connectedTo="Bus32Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line52Phase3Out" carrier="Electricity" name="line52Phase3Out" connectedTo="Bus32Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus32" name="Bus32">
        <port xsi:type="esdl:InPort" id="Bus32Phase1In" carrier="Electricity" connectedTo="line52Phase1Out" name="Bus32Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus32Phase2In" carrier="Electricity" connectedTo="line52Phase2Out" name="Bus32Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus32Phase3In" carrier="Electricity" connectedTo="line52Phase3Out" name="Bus32Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus32Phase1Out" carrier="Electricity" name="Bus32Phase1Out" connectedTo="line53Phase1In line58Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus32Phase2Out" carrier="Electricity" name="Bus32Phase2Out" connectedTo="line53Phase2In line58Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus32Phase3Out" carrier="Electricity" name="Bus32Phase3Out" connectedTo="line53Phase3In line58Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line53" length="39.0" assetType="gplkh_4_6_curm_4_2p5" name="line53">
        <port xsi:type="esdl:InPort" id="line53Phase1In" carrier="Electricity" connectedTo="Bus32Phase1Out" name="line53Phase1In"/>
        <port xsi:type="esdl:InPort" id="line53Phase2In" carrier="Electricity" connectedTo="Bus32Phase2Out" name="line53Phase2In"/>
        <port xsi:type="esdl:InPort" id="line53Phase3In" carrier="Electricity" connectedTo="Bus32Phase3Out" name="line53Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line53Phase1Out" carrier="Electricity" name="line53Phase1Out" connectedTo="Bus3201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line53Phase2Out" carrier="Electricity" name="line53Phase2Out" connectedTo="Bus3201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line53Phase3Out" carrier="Electricity" name="line53Phase3Out" connectedTo="Bus3201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3201" name="Bus3201">
        <port xsi:type="esdl:InPort" id="Bus3201Phase1In" carrier="Electricity" connectedTo="line53Phase1Out"  name="Bus3201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3201Phase2In" carrier="Electricity" connectedTo="line53Phase2Out" name="Bus3201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3201Phase3In" carrier="Electricity" connectedTo="line53Phase3Out" name="Bus3201Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus3201Phase1Out" carrier="Electricity" name="Bus3201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3201Phase2Out" carrier="Electricity" id="Bus3201Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3201Phase3Out" carrier="Electricity" id="Bus3201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line54" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line54">
        <port xsi:type="esdl:InPort" id="line54Phase1In" carrier="Electricity" connectedTo="Bus27Phase1Out" name="line54Phase1In"/>
        <port xsi:type="esdl:InPort" id="line54Phase2In" carrier="Electricity" connectedTo="Bus27Phase2Out" name="line54Phase2In"/>
        <port xsi:type="esdl:InPort" id="line54Phase3In" carrier="Electricity" connectedTo="Bus27Phase3Out" name="line54Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line54Phase1Out" carrier="Electricity" name="line54Phase1Out" connectedTo="Bus33Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line54Phase2Out" carrier="Electricity" name="line54Phase2Out" connectedTo="Bus33Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line54Phase3Out" carrier="Electricity" name="line54Phase3Out" connectedTo="Bus33Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus33" name="Bus33">
        <port xsi:type="esdl:InPort" id="Bus33Phase1In" carrier="Electricity" connectedTo="line54Phase1Out" name="Bus33Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus33Phase2In" carrier="Electricity" connectedTo="line54Phase2Out" name="Bus33Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus33Phase3In" carrier="Electricity" connectedTo="line54Phase3Out" name="Bus33Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus33Phase1Out" carrier="Electricity" name="Bus33Phase1Out" connectedTo="line55Phase1In line60Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus33Phase2Out" carrier="Electricity" name="Bus33Phase2Out" connectedTo="line55Phase2In line60Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus33Phase3Out" carrier="Electricity" name="Bus33Phase3Out" connectedTo="line55Phase3In line60Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line55" length="35.0" assetType="gplkh_4_6_curm_4_2p5" name="line55">
        <port xsi:type="esdl:InPort" id="line55Phase1In" carrier="Electricity" connectedTo="Bus33Phase1Out" name="line55Phase1In"/>
        <port xsi:type="esdl:InPort" id="line55Phase2In" carrier="Electricity" connectedTo="Bus33Phase2Out" name="line55Phase2In"/>
        <port xsi:type="esdl:InPort" id="line55Phase3In" carrier="Electricity" connectedTo="Bus33Phase3Out" name="line55Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line55Phase1Out" carrier="Electricity" name="line55Phase1Out" connectedTo="Bus3301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line55Phase2Out" carrier="Electricity" name="line55Phase2Out" connectedTo="Bus3301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line55Phase3Out" carrier="Electricity" name="line55Phase3Out" connectedTo="Bus3301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3301" name="Bus3301">
        <port xsi:type="esdl:InPort" id="Bus3301Phase1In" carrier="Electricity" connectedTo="line55Phase1Out" name="Bus3301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3301Phase2In" carrier="Electricity" connectedTo="line55Phase2Out" name="Bus3301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3301Phase3In" carrier="Electricity" connectedTo="line55Phase3Out"  name="Bus3301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus3301Phase1Out" carrier="Electricity" id="Bus3301Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3301Phase2Out" carrier="Electricity" id="Bus3301Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus3301Phase3Out" carrier="Electricity" name="Bus3301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line56" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line56">
        <port xsi:type="esdl:InPort" id="line56Phase1In" carrier="Electricity" connectedTo="Bus15Phase1Out" name="line56Phase1In"/>
        <port xsi:type="esdl:InPort" id="line56Phase2In" carrier="Electricity" connectedTo="Bus15Phase2Out" name="line56Phase2In"/>
        <port xsi:type="esdl:InPort" id="line56Phase3In" carrier="Electricity" connectedTo="Bus15Phase3Out" name="line56Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line56Phase1Out" carrier="Electricity" name="line56Phase1Out" connectedTo="Bus34Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line56Phase2Out" carrier="Electricity" name="line56Phase2Out" connectedTo="Bus34Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line56Phase3Out" carrier="Electricity" name="line56Phase3Out" connectedTo="Bus34Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus34" name="Bus34">
        <port xsi:type="esdl:InPort" id="Bus34Phase1In" carrier="Electricity" connectedTo="line56Phase1Out" name="Bus34Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus34Phase2In" carrier="Electricity" connectedTo="line56Phase2Out" name="Bus34Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus34Phase3In" carrier="Electricity" connectedTo="line56Phase3Out" name="Bus34Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus34Phase1Out" carrier="Electricity" name="Bus34Phase1Out" connectedTo="line57Phase1In line66Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus34Phase2Out" carrier="Electricity" name="Bus34Phase2Out" connectedTo="line57Phase2In line66Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus34Phase3Out" carrier="Electricity" name="Bus34Phase3Out" connectedTo="line57Phase3In line66Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line57" length="25.0" assetType="gplkh_4_6_curm_4_2p5" name="line57">
        <port xsi:type="esdl:InPort" id="line57Phase1In" carrier="Electricity" connectedTo="Bus34Phase1Out" name="line57Phase1In"/>
        <port xsi:type="esdl:InPort" id="line57Phase2In" carrier="Electricity" connectedTo="Bus34Phase2Out" name="line57Phase2In"/>
        <port xsi:type="esdl:InPort" id="line57Phase3In" carrier="Electricity" connectedTo="Bus34Phase3Out" name="line57Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line57Phase1Out" carrier="Electricity" name="line57Phase1Out" connectedTo="Bus3401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line57Phase2Out" carrier="Electricity" name="line57Phase2Out" connectedTo="Bus3401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line57Phase3Out" carrier="Electricity" name="line57Phase3Out" connectedTo="Bus3401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3401" name="Bus3401">
        <port xsi:type="esdl:InPort" id="Bus3401Phase1In" carrier="Electricity" connectedTo="line57Phase1Out" name="Bus3401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3401Phase2In" carrier="Electricity" connectedTo="line57Phase2Out" name="Bus3401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3401Phase3In" carrier="Electricity" connectedTo="line57Phase3Out"  name="Bus3401Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus3401Phase1Out" carrier="Electricity" id="Bus3401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3401Phase2Out" carrier="Electricity" id="Bus3401Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus3401Phase3Out" carrier="Electricity" name="Bus3401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line58" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line58">
        <port xsi:type="esdl:InPort" id="line58Phase1In" carrier="Electricity" connectedTo="Bus32Phase1Out" name="line58Phase1In"/>
        <port xsi:type="esdl:InPort" id="line58Phase2In" carrier="Electricity" connectedTo="Bus32Phase2Out" name="line58Phase2In"/>
        <port xsi:type="esdl:InPort" id="line58Phase3In" carrier="Electricity" connectedTo="Bus32Phase3Out" name="line58Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line58Phase1Out" carrier="Electricity" name="line58Phase1Out" connectedTo="Bus35Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line58Phase2Out" carrier="Electricity" name="line58Phase2Out" connectedTo="Bus35Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line58Phase3Out" carrier="Electricity" name="line58Phase3Out" connectedTo="Bus35Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus35" name="Bus35">
        <port xsi:type="esdl:InPort" id="Bus35Phase1In" carrier="Electricity" connectedTo="line58Phase1Out" name="Bus35Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus35Phase2In" carrier="Electricity" connectedTo="line58Phase2Out" name="Bus35Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus35Phase3In" carrier="Electricity" connectedTo="line58Phase3Out" name="Bus35Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus35Phase1Out" carrier="Electricity" name="Bus35Phase1Out" connectedTo="line59Phase1In line62Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus35Phase2Out" carrier="Electricity" name="Bus35Phase2Out" connectedTo="line59Phase2In line62Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus35Phase3Out" carrier="Electricity" name="Bus35Phase3Out" connectedTo="line59Phase3In line62Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line59" length="29.0" assetType="gplkh_4_6_curm_4_2p5" name="line59">
        <port xsi:type="esdl:InPort" id="line59Phase1In" carrier="Electricity" connectedTo="Bus35Phase1Out" name="line59Phase1In"/>
        <port xsi:type="esdl:InPort" id="line59Phase2In" carrier="Electricity" connectedTo="Bus35Phase2Out" name="line59Phase2In"/>
        <port xsi:type="esdl:InPort" id="line59Phase3In" carrier="Electricity" connectedTo="Bus35Phase3Out" name="line59Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line59Phase1Out" carrier="Electricity" name="line59Phase1Out" connectedTo="Bus3501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line59Phase2Out" carrier="Electricity" name="line59Phase2Out" connectedTo="Bus3501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line59Phase3Out" carrier="Electricity" name="line59Phase3Out" connectedTo="Bus3501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3501" name="Bus3501">
        <port xsi:type="esdl:InPort" id="Bus3501Phase1In" carrier="Electricity" connectedTo="line59Phase1Out" name="Bus3501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3501Phase2In" carrier="Electricity" connectedTo="line59Phase2Out" name="Bus3501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3501Phase3In" carrier="Electricity" connectedTo="line59Phase3Out"  name="Bus3501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus3501Phase1Out" carrier="Electricity" id="Bus3501Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3501Phase2Out" carrier="Electricity" id="Bus3501Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus3501Phase3Out" carrier="Electricity" name="Bus3501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line60" length="8.0" assetType="gplkh_4_50_cusvm_4_6" name="line60">
        <port xsi:type="esdl:InPort" id="line60Phase1In" carrier="Electricity" connectedTo="Bus33Phase1Out" name="line60Phase1In"/>
        <port xsi:type="esdl:InPort" id="line60Phase2In" carrier="Electricity" connectedTo="Bus33Phase2Out" name="line60Phase2In"/>
        <port xsi:type="esdl:InPort" id="line60Phase3In" carrier="Electricity" connectedTo="Bus33Phase3Out" name="line60Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line60Phase1Out" carrier="Electricity" name="line60Phase1Out" connectedTo="Bus36Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line60Phase2Out" carrier="Electricity" name="line60Phase2Out" connectedTo="Bus36Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line60Phase3Out" carrier="Electricity" name="line60Phase3Out" connectedTo="Bus36Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus36" name="Bus36">
        <port xsi:type="esdl:InPort" id="Bus36Phase1In" carrier="Electricity" connectedTo="line60Phase1Out" name="Bus36Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus36Phase2In" carrier="Electricity" connectedTo="line60Phase2Out" name="Bus36Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus36Phase3In" carrier="Electricity" connectedTo="line60Phase3Out" name="Bus36Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus36Phase1Out" carrier="Electricity" name="Bus36Phase1Out" connectedTo="line61Phase1In line70Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus36Phase2Out" carrier="Electricity" name="Bus36Phase2Out" connectedTo="line61Phase2In line70Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus36Phase3Out" carrier="Electricity" name="Bus36Phase3Out" connectedTo="line61Phase3In line70Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line61" length="15.0" assetType="gplkh_4_6_curm_4_2p5" name="line61">
        <port xsi:type="esdl:InPort" id="line61Phase1In" carrier="Electricity" connectedTo="Bus36Phase1Out" name="line61Phase1In"/>
        <port xsi:type="esdl:InPort" id="line61Phase2In" carrier="Electricity" connectedTo="Bus36Phase2Out" name="line61Phase2In"/>
        <port xsi:type="esdl:InPort" id="line61Phase3In" carrier="Electricity" connectedTo="Bus36Phase3Out" name="line61Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line61Phase1Out" carrier="Electricity" name="line61Phase1Out" connectedTo="Bus3601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line61Phase2Out" carrier="Electricity" name="line61Phase2Out" connectedTo="Bus3601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line61Phase3Out" carrier="Electricity" name="line61Phase3Out" connectedTo="Bus3601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3601" name="Bus3601">
        <port xsi:type="esdl:InPort" id="Bus3601Phase1In" carrier="Electricity" connectedTo="line61Phase1Out"  name="Bus3601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3601Phase2In" carrier="Electricity" connectedTo="line61Phase2Out" name="Bus3601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3601Phase3In" carrier="Electricity" connectedTo="line61Phase3Out" name="Bus3601Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus3601Phase1Out" carrier="Electricity" name="Bus3601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3601Phase2Out" carrier="Electricity" id="Bus3601Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3601Phase3Out" carrier="Electricity" id="Bus3601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line62" length="7.0" assetType="gplkh_4_50_cusvm_4_6" name="line62">
        <port xsi:type="esdl:InPort" id="line62Phase1In" carrier="Electricity" connectedTo="Bus35Phase1Out" name="line62Phase1In"/>
        <port xsi:type="esdl:InPort" id="line62Phase2In" carrier="Electricity" connectedTo="Bus35Phase2Out" name="line62Phase2In"/>
        <port xsi:type="esdl:InPort" id="line62Phase3In" carrier="Electricity" connectedTo="Bus35Phase3Out" name="line62Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line62Phase1Out" carrier="Electricity" name="line62Phase1Out" connectedTo="Bus37Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line62Phase2Out" carrier="Electricity" name="line62Phase2Out" connectedTo="Bus37Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line62Phase3Out" carrier="Electricity" name="line62Phase3Out" connectedTo="Bus37Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus37" name="Bus37">
        <port xsi:type="esdl:InPort" id="Bus37Phase1In" carrier="Electricity" connectedTo="line62Phase1Out" name="Bus37Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus37Phase2In" carrier="Electricity" connectedTo="line62Phase2Out" name="Bus37Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus37Phase3In" carrier="Electricity" connectedTo="line62Phase3Out" name="Bus37Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus37Phase1Out" carrier="Electricity" name="Bus37Phase1Out" connectedTo="line63Phase1In line68Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus37Phase2Out" carrier="Electricity" name="Bus37Phase2Out" connectedTo="line63Phase2In line68Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus37Phase3Out" carrier="Electricity" name="Bus37Phase3Out" connectedTo="line63Phase3In line68Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line63" length="33.0" assetType="gplkh_4_6_curm_4_2p5" name="line63">
        <port xsi:type="esdl:InPort" id="line63Phase1In" carrier="Electricity" connectedTo="Bus37Phase1Out" name="line63Phase1In"/>
        <port xsi:type="esdl:InPort" id="line63Phase2In" carrier="Electricity" connectedTo="Bus37Phase2Out" name="line63Phase2In"/>
        <port xsi:type="esdl:InPort" id="line63Phase3In" carrier="Electricity" connectedTo="Bus37Phase3Out" name="line63Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line63Phase1Out" carrier="Electricity" name="line63Phase1Out" connectedTo="Bus3701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line63Phase2Out" carrier="Electricity" name="line63Phase2Out" connectedTo="Bus3701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line63Phase3Out" carrier="Electricity" name="line63Phase3Out" connectedTo="Bus3701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3701" name="Bus3701">
        <port xsi:type="esdl:InPort" id="Bus3701Phase1In" carrier="Electricity" connectedTo="line63Phase1Out"  name="Bus3701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3701Phase2In" carrier="Electricity" connectedTo="line63Phase2Out" name="Bus3701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3701Phase3In" carrier="Electricity" connectedTo="line63Phase3Out" name="Bus3701Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus3701Phase1Out" carrier="Electricity" name="Bus3701Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3701Phase2Out" carrier="Electricity" id="Bus3701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3701Phase3Out" carrier="Electricity" id="Bus3701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line64" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line64">
        <port xsi:type="esdl:InPort" id="line64Phase1In" carrier="Electricity" connectedTo="Bus23Phase1Out" name="line64Phase1In"/>
        <port xsi:type="esdl:InPort" id="line64Phase2In" carrier="Electricity" connectedTo="Bus23Phase2Out" name="line64Phase2In"/>
        <port xsi:type="esdl:InPort" id="line64Phase3In" carrier="Electricity" connectedTo="Bus23Phase3Out" name="line64Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line64Phase1Out" carrier="Electricity" name="line64Phase1Out" connectedTo="Bus38Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line64Phase2Out" carrier="Electricity" name="line64Phase2Out" connectedTo="Bus38Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line64Phase3Out" carrier="Electricity" name="line64Phase3Out" connectedTo="Bus38Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus38" name="Bus38">
        <port xsi:type="esdl:InPort" id="Bus38Phase1In" carrier="Electricity" connectedTo="line64Phase1Out" name="Bus38Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus38Phase2In" carrier="Electricity" connectedTo="line64Phase2Out" name="Bus38Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus38Phase3In" carrier="Electricity" connectedTo="line64Phase3Out" name="Bus38Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus38Phase1Out" carrier="Electricity" name="Bus38Phase1Out" connectedTo="line65Phase1In line82Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus38Phase2Out" carrier="Electricity" name="Bus38Phase2Out" connectedTo="line65Phase2In line82Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus38Phase3Out" carrier="Electricity" name="Bus38Phase3Out" connectedTo="line65Phase3In line82Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line65" length="29.0" assetType="gplkh_4_6_curm_4_2p5" name="line65">
        <port xsi:type="esdl:InPort" id="line65Phase1In" carrier="Electricity" connectedTo="Bus38Phase1Out" name="line65Phase1In"/>
        <port xsi:type="esdl:InPort" id="line65Phase2In" carrier="Electricity" connectedTo="Bus38Phase2Out" name="line65Phase2In"/>
        <port xsi:type="esdl:InPort" id="line65Phase3In" carrier="Electricity" connectedTo="Bus38Phase3Out" name="line65Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line65Phase1Out" carrier="Electricity" name="line65Phase1Out" connectedTo="Bus3801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line65Phase2Out" carrier="Electricity" name="line65Phase2Out" connectedTo="Bus3801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line65Phase3Out" carrier="Electricity" name="line65Phase3Out" connectedTo="Bus3801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3801" name="Bus3801">
        <port xsi:type="esdl:InPort" id="Bus3801Phase1In" carrier="Electricity" connectedTo="line65Phase1Out"  name="Bus3801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3801Phase2In" carrier="Electricity" connectedTo="line65Phase2Out" name="Bus3801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3801Phase3In" carrier="Electricity" connectedTo="line65Phase3Out" name="Bus3801Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus3801Phase1Out" carrier="Electricity" name="Bus3801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3801Phase2Out" carrier="Electricity" id="Bus3801Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3801Phase3Out" carrier="Electricity" id="Bus3801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line66" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line66">
        <port xsi:type="esdl:InPort" id="line66Phase1In" carrier="Electricity" connectedTo="Bus34Phase1Out" name="line66Phase1In"/>
        <port xsi:type="esdl:InPort" id="line66Phase2In" carrier="Electricity" connectedTo="Bus34Phase2Out" name="line66Phase2In"/>
        <port xsi:type="esdl:InPort" id="line66Phase3In" carrier="Electricity" connectedTo="Bus34Phase3Out" name="line66Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line66Phase1Out" carrier="Electricity" name="line66Phase1Out" connectedTo="Bus39Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line66Phase2Out" carrier="Electricity" name="line66Phase2Out" connectedTo="Bus39Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line66Phase3Out" carrier="Electricity" name="line66Phase3Out" connectedTo="Bus39Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus39" name="Bus39">
        <port xsi:type="esdl:InPort" id="Bus39Phase1In" carrier="Electricity" connectedTo="line66Phase1Out" name="Bus39Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus39Phase2In" carrier="Electricity" connectedTo="line66Phase2Out" name="Bus39Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus39Phase3In" carrier="Electricity" connectedTo="line66Phase3Out" name="Bus39Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus39Phase1Out" carrier="Electricity" name="Bus39Phase1Out" connectedTo="line67Phase1In line74Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus39Phase2Out" carrier="Electricity" name="Bus39Phase2Out" connectedTo="line67Phase2In line74Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus39Phase3Out" carrier="Electricity" name="Bus39Phase3Out" connectedTo="line67Phase3In line74Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line67" length="29.0" assetType="gplkh_4_6_curm_4_2p5" name="line67">
        <port xsi:type="esdl:InPort" id="line67Phase1In" carrier="Electricity" connectedTo="Bus39Phase1Out" name="line67Phase1In"/>
        <port xsi:type="esdl:InPort" id="line67Phase2In" carrier="Electricity" connectedTo="Bus39Phase2Out" name="line67Phase2In"/>
        <port xsi:type="esdl:InPort" id="line67Phase3In" carrier="Electricity" connectedTo="Bus39Phase3Out" name="line67Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line67Phase1Out" carrier="Electricity" name="line67Phase1Out" connectedTo="Bus3901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line67Phase2Out" carrier="Electricity" name="line67Phase2Out" connectedTo="Bus3901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line67Phase3Out" carrier="Electricity" name="line67Phase3Out" connectedTo="Bus3901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus3901" name="Bus3901">
        <port xsi:type="esdl:InPort" id="Bus3901Phase1In" carrier="Electricity" connectedTo="line67Phase1Out"  name="Bus3901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus3901Phase2In" carrier="Electricity" connectedTo="line67Phase2Out" name="Bus3901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus3901Phase3In" carrier="Electricity" connectedTo="line67Phase3Out" name="Bus3901Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus3901Phase1Out" carrier="Electricity" name="Bus3901Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3901Phase2Out" carrier="Electricity" id="Bus3901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus3901Phase3Out" carrier="Electricity" id="Bus3901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line68" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line68">
        <port xsi:type="esdl:InPort" id="line68Phase1In" carrier="Electricity" connectedTo="Bus37Phase1Out" name="line68Phase1In"/>
        <port xsi:type="esdl:InPort" id="line68Phase2In" carrier="Electricity" connectedTo="Bus37Phase2Out" name="line68Phase2In"/>
        <port xsi:type="esdl:InPort" id="line68Phase3In" carrier="Electricity" connectedTo="Bus37Phase3Out" name="line68Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line68Phase1Out" carrier="Electricity" name="line68Phase1Out" connectedTo="Bus40Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line68Phase2Out" carrier="Electricity" name="line68Phase2Out" connectedTo="Bus40Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line68Phase3Out" carrier="Electricity" name="line68Phase3Out" connectedTo="Bus40Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus40" name="Bus40">
        <port xsi:type="esdl:InPort" id="Bus40Phase1In" carrier="Electricity" connectedTo="line68Phase1Out" name="Bus40Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus40Phase2In" carrier="Electricity" connectedTo="line68Phase2Out" name="Bus40Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus40Phase3In" carrier="Electricity" connectedTo="line68Phase3Out" name="Bus40Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus40Phase1Out" carrier="Electricity" name="Bus40Phase1Out" connectedTo="line69Phase1In line108Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus40Phase2Out" carrier="Electricity" name="Bus40Phase2Out" connectedTo="line69Phase2In line108Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus40Phase3Out" carrier="Electricity" name="Bus40Phase3Out" connectedTo="line69Phase3In line108Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line69" length="23.0" assetType="gplkh_4_6_curm_4_2p5" name="line69">
        <port xsi:type="esdl:InPort" id="line69Phase1In" carrier="Electricity" connectedTo="Bus40Phase1Out" name="line69Phase1In"/>
        <port xsi:type="esdl:InPort" id="line69Phase2In" carrier="Electricity" connectedTo="Bus40Phase2Out" name="line69Phase2In"/>
        <port xsi:type="esdl:InPort" id="line69Phase3In" carrier="Electricity" connectedTo="Bus40Phase3Out" name="line69Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line69Phase1Out" carrier="Electricity" name="line69Phase1Out" connectedTo="Bus4001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line69Phase2Out" carrier="Electricity" name="line69Phase2Out" connectedTo="Bus4001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line69Phase3Out" carrier="Electricity" name="line69Phase3Out" connectedTo="Bus4001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4001" name="Bus4001">
        <port xsi:type="esdl:InPort" id="Bus4001Phase1In" carrier="Electricity" connectedTo="line69Phase1Out"  name="Bus4001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4001Phase2In" carrier="Electricity" connectedTo="line69Phase2Out" name="Bus4001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4001Phase3In" carrier="Electricity" connectedTo="line69Phase3Out" name="Bus4001Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus4001Phase1Out" carrier="Electricity" name="Bus4001Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4001Phase2Out" carrier="Electricity" id="Bus4001Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4001Phase3Out" carrier="Electricity" id="Bus4001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line70" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line70">
        <port xsi:type="esdl:InPort" id="line70Phase1In" carrier="Electricity" connectedTo="Bus36Phase1Out" name="line70Phase1In"/>
        <port xsi:type="esdl:InPort" id="line70Phase2In" carrier="Electricity" connectedTo="Bus36Phase2Out" name="line70Phase2In"/>
        <port xsi:type="esdl:InPort" id="line70Phase3In" carrier="Electricity" connectedTo="Bus36Phase3Out" name="line70Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line70Phase1Out" carrier="Electricity" name="line70Phase1Out" connectedTo="Bus41Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line70Phase2Out" carrier="Electricity" name="line70Phase2Out" connectedTo="Bus41Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line70Phase3Out" carrier="Electricity" name="line70Phase3Out" connectedTo="Bus41Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus41" name="Bus41">
        <port xsi:type="esdl:InPort" id="Bus41Phase1In" carrier="Electricity" connectedTo="line70Phase1Out" name="Bus41Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus41Phase2In" carrier="Electricity" connectedTo="line70Phase2Out" name="Bus41Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus41Phase3In" carrier="Electricity" connectedTo="line70Phase3Out" name="Bus41Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus41Phase1Out" carrier="Electricity" name="Bus41Phase1Out" connectedTo="line71Phase1In line72Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus41Phase2Out" carrier="Electricity" name="Bus41Phase2Out" connectedTo="line71Phase2In line72Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus41Phase3Out" carrier="Electricity" name="Bus41Phase3Out" connectedTo="line71Phase3In line72Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line71" length="24.0" assetType="gplkh_4_6_curm_4_2p5" name="line71">
        <port xsi:type="esdl:InPort" id="line71Phase1In" carrier="Electricity" connectedTo="Bus41Phase1Out" name="line71Phase1In"/>
        <port xsi:type="esdl:InPort" id="line71Phase2In" carrier="Electricity" connectedTo="Bus41Phase2Out" name="line71Phase2In"/>
        <port xsi:type="esdl:InPort" id="line71Phase3In" carrier="Electricity" connectedTo="Bus41Phase3Out" name="line71Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line71Phase1Out" carrier="Electricity" name="line71Phase1Out" connectedTo="Bus4101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line71Phase2Out" carrier="Electricity" name="line71Phase2Out" connectedTo="Bus4101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line71Phase3Out" carrier="Electricity" name="line71Phase3Out" connectedTo="Bus4101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4101" name="Bus4101">
        <port xsi:type="esdl:InPort" id="Bus4101Phase1In" carrier="Electricity" connectedTo="line71Phase1Out" name="Bus4101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4101Phase2In" carrier="Electricity" connectedTo="line71Phase2Out"  name="Bus4101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4101Phase3In" carrier="Electricity" connectedTo="line71Phase3Out" name="Bus4101Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4101Phase1Out" carrier="Electricity" id="Bus4101Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4101Phase2Out" carrier="Electricity" name="Bus4101Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4101Phase3Out" carrier="Electricity" id="Bus4101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line72" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line72">
        <port xsi:type="esdl:InPort" id="line72Phase1In" carrier="Electricity" connectedTo="Bus41Phase1Out" name="line72Phase1In"/>
        <port xsi:type="esdl:InPort" id="line72Phase2In" carrier="Electricity" connectedTo="Bus41Phase2Out" name="line72Phase2In"/>
        <port xsi:type="esdl:InPort" id="line72Phase3In" carrier="Electricity" connectedTo="Bus41Phase3Out" name="line72Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line72Phase1Out" carrier="Electricity" name="line72Phase1Out" connectedTo="Bus42Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line72Phase2Out" carrier="Electricity" name="line72Phase2Out" connectedTo="Bus42Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line72Phase3Out" carrier="Electricity" name="line72Phase3Out" connectedTo="Bus42Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus42" name="Bus42">
        <port xsi:type="esdl:InPort" id="Bus42Phase1In" carrier="Electricity" connectedTo="line72Phase1Out" name="Bus42Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus42Phase2In" carrier="Electricity" connectedTo="line72Phase2Out" name="Bus42Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus42Phase3In" carrier="Electricity" connectedTo="line72Phase3Out" name="Bus42Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus42Phase1Out" carrier="Electricity" name="Bus42Phase1Out" connectedTo="line73Phase1In line88Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus42Phase2Out" carrier="Electricity" name="Bus42Phase2Out" connectedTo="line73Phase2In line88Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus42Phase3Out" carrier="Electricity" name="Bus42Phase3Out" connectedTo="line73Phase3In line88Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line73" length="16.0" assetType="gplkh_4_6_curm_4_2p5" name="line73">
        <port xsi:type="esdl:InPort" id="line73Phase1In" carrier="Electricity" connectedTo="Bus42Phase1Out" name="line73Phase1In"/>
        <port xsi:type="esdl:InPort" id="line73Phase2In" carrier="Electricity" connectedTo="Bus42Phase2Out" name="line73Phase2In"/>
        <port xsi:type="esdl:InPort" id="line73Phase3In" carrier="Electricity" connectedTo="Bus42Phase3Out" name="line73Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line73Phase1Out" carrier="Electricity" name="line73Phase1Out" connectedTo="Bus4201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line73Phase2Out" carrier="Electricity" name="line73Phase2Out" connectedTo="Bus4201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line73Phase3Out" carrier="Electricity" name="line73Phase3Out" connectedTo="Bus4201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4201" name="Bus4201">
        <port xsi:type="esdl:InPort" id="Bus4201Phase1In" carrier="Electricity" connectedTo="line73Phase1Out" name="Bus4201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4201Phase2In" carrier="Electricity" connectedTo="line73Phase2Out" name="Bus4201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4201Phase3In" carrier="Electricity" connectedTo="line73Phase3Out"  name="Bus4201Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4201Phase1Out" carrier="Electricity" id="Bus4201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4201Phase2Out" carrier="Electricity" id="Bus4201Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4201Phase3Out" carrier="Electricity" name="Bus4201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line74" length="10.0" assetType="gplkh_4_50_cusvm_4_6" name="line74">
        <port xsi:type="esdl:InPort" id="line74Phase1In" carrier="Electricity" connectedTo="Bus39Phase1Out" name="line74Phase1In"/>
        <port xsi:type="esdl:InPort" id="line74Phase2In" carrier="Electricity" connectedTo="Bus39Phase2Out" name="line74Phase2In"/>
        <port xsi:type="esdl:InPort" id="line74Phase3In" carrier="Electricity" connectedTo="Bus39Phase3Out" name="line74Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line74Phase1Out" carrier="Electricity" name="line74Phase1Out" connectedTo="Bus43Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line74Phase2Out" carrier="Electricity" name="line74Phase2Out" connectedTo="Bus43Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line74Phase3Out" carrier="Electricity" name="line74Phase3Out" connectedTo="Bus43Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus43" name="Bus43">
        <port xsi:type="esdl:InPort" id="Bus43Phase1In" carrier="Electricity" connectedTo="line74Phase1Out" name="Bus43Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus43Phase2In" carrier="Electricity" connectedTo="line74Phase2Out" name="Bus43Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus43Phase3In" carrier="Electricity" connectedTo="line74Phase3Out" name="Bus43Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus43Phase1Out" carrier="Electricity" name="Bus43Phase1Out" connectedTo="line75Phase1In line76Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus43Phase2Out" carrier="Electricity" name="Bus43Phase2Out" connectedTo="line75Phase2In line76Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus43Phase3Out" carrier="Electricity" name="Bus43Phase3Out" connectedTo="line75Phase3In line76Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line75" length="7.0" assetType="gplkh_4_6_curm_4_2p5" name="line75">
        <port xsi:type="esdl:InPort" id="line75Phase1In" carrier="Electricity" connectedTo="Bus43Phase1Out" name="line75Phase1In"/>
        <port xsi:type="esdl:InPort" id="line75Phase2In" carrier="Electricity" connectedTo="Bus43Phase2Out" name="line75Phase2In"/>
        <port xsi:type="esdl:InPort" id="line75Phase3In" carrier="Electricity" connectedTo="Bus43Phase3Out" name="line75Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line75Phase1Out" carrier="Electricity" name="line75Phase1Out" connectedTo="Bus4301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line75Phase2Out" carrier="Electricity" name="line75Phase2Out" connectedTo="Bus4301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line75Phase3Out" carrier="Electricity" name="line75Phase3Out" connectedTo="Bus4301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4301" name="Bus4301">
        <port xsi:type="esdl:InPort" id="Bus4301Phase1In" carrier="Electricity" connectedTo="line75Phase1Out" name="Bus4301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4301Phase2In" carrier="Electricity" connectedTo="line75Phase2Out"  name="Bus4301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4301Phase3In" carrier="Electricity" connectedTo="line75Phase3Out" name="Bus4301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4301Phase1Out" carrier="Electricity" id="Bus4301Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4301Phase2Out" carrier="Electricity" name="Bus4301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4301Phase3Out" carrier="Electricity" id="Bus4301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line76" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line76">
        <port xsi:type="esdl:InPort" id="line76Phase1In" carrier="Electricity" connectedTo="Bus43Phase1Out" name="line76Phase1In"/>
        <port xsi:type="esdl:InPort" id="line76Phase2In" carrier="Electricity" connectedTo="Bus43Phase2Out" name="line76Phase2In"/>
        <port xsi:type="esdl:InPort" id="line76Phase3In" carrier="Electricity" connectedTo="Bus43Phase3Out" name="line76Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line76Phase1Out" carrier="Electricity" name="line76Phase1Out" connectedTo="Bus44Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line76Phase2Out" carrier="Electricity" name="line76Phase2Out" connectedTo="Bus44Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line76Phase3Out" carrier="Electricity" name="line76Phase3Out" connectedTo="Bus44Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus44" name="Bus44">
        <port xsi:type="esdl:InPort" id="Bus44Phase1In" carrier="Electricity" connectedTo="line76Phase1Out" name="Bus44Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus44Phase2In" carrier="Electricity" connectedTo="line76Phase2Out" name="Bus44Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus44Phase3In" carrier="Electricity" connectedTo="line76Phase3Out" name="Bus44Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus44Phase1Out" carrier="Electricity" name="Bus44Phase1Out" connectedTo="line77Phase1In line86Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus44Phase2Out" carrier="Electricity" name="Bus44Phase2Out" connectedTo="line77Phase2In line86Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus44Phase3Out" carrier="Electricity" name="Bus44Phase3Out" connectedTo="line77Phase3In line86Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line77" length="18.0" assetType="gplkh_4_6_curm_4_2p5" name="line77">
        <port xsi:type="esdl:InPort" id="line77Phase1In" carrier="Electricity" connectedTo="Bus44Phase1Out" name="line77Phase1In"/>
        <port xsi:type="esdl:InPort" id="line77Phase2In" carrier="Electricity" connectedTo="Bus44Phase2Out" name="line77Phase2In"/>
        <port xsi:type="esdl:InPort" id="line77Phase3In" carrier="Electricity" connectedTo="Bus44Phase3Out" name="line77Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line77Phase1Out" carrier="Electricity" name="line77Phase1Out" connectedTo="Bus4401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line77Phase2Out" carrier="Electricity" name="line77Phase2Out" connectedTo="Bus4401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line77Phase3Out" carrier="Electricity" name="line77Phase3Out" connectedTo="Bus4401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4401" name="Bus4401">
        <port xsi:type="esdl:InPort" id="Bus4401Phase1In" carrier="Electricity" connectedTo="line77Phase1Out" name="Bus4401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4401Phase2In" carrier="Electricity" connectedTo="line77Phase2Out" name="Bus4401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4401Phase3In" carrier="Electricity" connectedTo="line77Phase3Out"  name="Bus4401Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4401Phase1Out" carrier="Electricity" id="Bus4401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4401Phase2Out" carrier="Electricity" id="Bus4401Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4401Phase3Out" carrier="Electricity" name="Bus4401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line78" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line78">
        <port xsi:type="esdl:InPort" id="line78Phase1In" carrier="Electricity" connectedTo="Bus30Phase1Out" name="line78Phase1In"/>
        <port xsi:type="esdl:InPort" id="line78Phase2In" carrier="Electricity" connectedTo="Bus30Phase2Out" name="line78Phase2In"/>
        <port xsi:type="esdl:InPort" id="line78Phase3In" carrier="Electricity" connectedTo="Bus30Phase3Out" name="line78Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line78Phase1Out" carrier="Electricity" name="line78Phase1Out" connectedTo="Bus45Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line78Phase2Out" carrier="Electricity" name="line78Phase2Out" connectedTo="Bus45Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line78Phase3Out" carrier="Electricity" name="line78Phase3Out" connectedTo="Bus45Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus45" name="Bus45">
        <port xsi:type="esdl:InPort" id="Bus45Phase1In" carrier="Electricity" connectedTo="line78Phase1Out" name="Bus45Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus45Phase2In" carrier="Electricity" connectedTo="line78Phase2Out" name="Bus45Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus45Phase3In" carrier="Electricity" connectedTo="line78Phase3Out" name="Bus45Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus45Phase1Out" carrier="Electricity" name="Bus45Phase1Out" connectedTo="line79Phase1In line84Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus45Phase2Out" carrier="Electricity" name="Bus45Phase2Out" connectedTo="line79Phase2In line84Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus45Phase3Out" carrier="Electricity" name="Bus45Phase3Out" connectedTo="line79Phase3In line84Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line79" length="6.0" assetType="gplkh_4_6_curm_4_2p5" name="line79">
        <port xsi:type="esdl:InPort" id="line79Phase1In" carrier="Electricity" connectedTo="Bus45Phase1Out" name="line79Phase1In"/>
        <port xsi:type="esdl:InPort" id="line79Phase2In" carrier="Electricity" connectedTo="Bus45Phase2Out" name="line79Phase2In"/>
        <port xsi:type="esdl:InPort" id="line79Phase3In" carrier="Electricity" connectedTo="Bus45Phase3Out" name="line79Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line79Phase1Out" carrier="Electricity" name="line79Phase1Out" connectedTo="Bus4501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line79Phase2Out" carrier="Electricity" name="line79Phase2Out" connectedTo="Bus4501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line79Phase3Out" carrier="Electricity" name="line79Phase3Out" connectedTo="Bus4501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4501" name="Bus4501">
        <port xsi:type="esdl:InPort" id="Bus4501Phase1In" carrier="Electricity" connectedTo="line79Phase1Out" name="Bus4501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4501Phase2In" carrier="Electricity" connectedTo="line79Phase2Out"  name="Bus4501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4501Phase3In" carrier="Electricity" connectedTo="line79Phase3Out" name="Bus4501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4501Phase1Out" carrier="Electricity" id="Bus4501Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4501Phase2Out" carrier="Electricity" name="Bus4501Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4501Phase3Out" carrier="Electricity" id="Bus4501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line80" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line80">
        <port xsi:type="esdl:InPort" id="line80Phase1In" carrier="Electricity" connectedTo="Bus26Phase1Out" name="line80Phase1In"/>
        <port xsi:type="esdl:InPort" id="line80Phase2In" carrier="Electricity" connectedTo="Bus26Phase2Out" name="line80Phase2In"/>
        <port xsi:type="esdl:InPort" id="line80Phase3In" carrier="Electricity" connectedTo="Bus26Phase3Out" name="line80Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line80Phase1Out" carrier="Electricity" name="line80Phase1Out" connectedTo="Bus46Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line80Phase2Out" carrier="Electricity" name="line80Phase2Out" connectedTo="Bus46Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line80Phase3Out" carrier="Electricity" name="line80Phase3Out" connectedTo="Bus46Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus46" name="Bus46">
        <port xsi:type="esdl:InPort" id="Bus46Phase1In" carrier="Electricity" connectedTo="line80Phase1Out" name="Bus46Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus46Phase2In" carrier="Electricity" connectedTo="line80Phase2Out" name="Bus46Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus46Phase3In" carrier="Electricity" connectedTo="line80Phase3Out" name="Bus46Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus46Phase1Out" carrier="Electricity" name="Bus46Phase1Out" connectedTo="line81Phase1In line100Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus46Phase2Out" carrier="Electricity" name="Bus46Phase2Out" connectedTo="line81Phase2In line100Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus46Phase3Out" carrier="Electricity" name="Bus46Phase3Out" connectedTo="line81Phase3In line100Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line81" length="24.0" assetType="gplkh_4_6_curm_4_2p5" name="line81">
        <port xsi:type="esdl:InPort" id="line81Phase1In" carrier="Electricity" connectedTo="Bus46Phase1Out" name="line81Phase1In"/>
        <port xsi:type="esdl:InPort" id="line81Phase2In" carrier="Electricity" connectedTo="Bus46Phase2Out" name="line81Phase2In"/>
        <port xsi:type="esdl:InPort" id="line81Phase3In" carrier="Electricity" connectedTo="Bus46Phase3Out" name="line81Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line81Phase1Out" carrier="Electricity" name="line81Phase1Out" connectedTo="Bus4601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line81Phase2Out" carrier="Electricity" name="line81Phase2Out" connectedTo="Bus4601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line81Phase3Out" carrier="Electricity" name="line81Phase3Out" connectedTo="Bus4601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4601" name="Bus4601">
        <port xsi:type="esdl:InPort" id="Bus4601Phase1In" carrier="Electricity" connectedTo="line81Phase1Out"  name="Bus4601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4601Phase2In" carrier="Electricity" connectedTo="line81Phase2Out" name="Bus4601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4601Phase3In" carrier="Electricity" connectedTo="line81Phase3Out" name="Bus4601Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus4601Phase1Out" carrier="Electricity" name="Bus4601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4601Phase2Out" carrier="Electricity" id="Bus4601Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4601Phase3Out" carrier="Electricity" id="Bus4601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line82" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line82">
        <port xsi:type="esdl:InPort" id="line82Phase1In" carrier="Electricity" connectedTo="Bus38Phase1Out" name="line82Phase1In"/>
        <port xsi:type="esdl:InPort" id="line82Phase2In" carrier="Electricity" connectedTo="Bus38Phase2Out" name="line82Phase2In"/>
        <port xsi:type="esdl:InPort" id="line82Phase3In" carrier="Electricity" connectedTo="Bus38Phase3Out" name="line82Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line82Phase1Out" carrier="Electricity" name="line82Phase1Out" connectedTo="Bus47Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line82Phase2Out" carrier="Electricity" name="line82Phase2Out" connectedTo="Bus47Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line82Phase3Out" carrier="Electricity" name="line82Phase3Out" connectedTo="Bus47Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus47" name="Bus47">
        <port xsi:type="esdl:InPort" id="Bus47Phase1In" carrier="Electricity" connectedTo="line82Phase1Out" name="Bus47Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus47Phase2In" carrier="Electricity" connectedTo="line82Phase2Out" name="Bus47Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus47Phase3In" carrier="Electricity" connectedTo="line82Phase3Out" name="Bus47Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus47Phase1Out" carrier="Electricity" name="Bus47Phase1Out" connectedTo="line83Phase1In line90Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus47Phase2Out" carrier="Electricity" name="Bus47Phase2Out" connectedTo="line83Phase2In line90Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus47Phase3Out" carrier="Electricity" name="Bus47Phase3Out" connectedTo="line83Phase3In line90Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line83" length="33.0" assetType="gplkh_4_6_curm_4_2p5" name="line83">
        <port xsi:type="esdl:InPort" id="line83Phase1In" carrier="Electricity" connectedTo="Bus47Phase1Out" name="line83Phase1In"/>
        <port xsi:type="esdl:InPort" id="line83Phase2In" carrier="Electricity" connectedTo="Bus47Phase2Out" name="line83Phase2In"/>
        <port xsi:type="esdl:InPort" id="line83Phase3In" carrier="Electricity" connectedTo="Bus47Phase3Out" name="line83Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line83Phase1Out" carrier="Electricity" name="line83Phase1Out" connectedTo="Bus4701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line83Phase2Out" carrier="Electricity" name="line83Phase2Out" connectedTo="Bus4701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line83Phase3Out" carrier="Electricity" name="line83Phase3Out" connectedTo="Bus4701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4701" name="Bus4701">
        <port xsi:type="esdl:InPort" id="Bus4701Phase1In" carrier="Electricity" connectedTo="line83Phase1Out" name="Bus4701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4701Phase2In" carrier="Electricity" connectedTo="line83Phase2Out"  name="Bus4701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4701Phase3In" carrier="Electricity" connectedTo="line83Phase3Out" name="Bus4701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4701Phase1Out" carrier="Electricity" id="Bus4701Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4701Phase2Out" carrier="Electricity" name="Bus4701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4701Phase3Out" carrier="Electricity" id="Bus4701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line84" length="7.0" assetType="gplkh_4_50_cusvm_4_6" name="line84">
        <port xsi:type="esdl:InPort" id="line84Phase1In" carrier="Electricity" connectedTo="Bus45Phase1Out" name="line84Phase1In"/>
        <port xsi:type="esdl:InPort" id="line84Phase2In" carrier="Electricity" connectedTo="Bus45Phase2Out" name="line84Phase2In"/>
        <port xsi:type="esdl:InPort" id="line84Phase3In" carrier="Electricity" connectedTo="Bus45Phase3Out" name="line84Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line84Phase1Out" carrier="Electricity" name="line84Phase1Out" connectedTo="Bus48Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line84Phase2Out" carrier="Electricity" name="line84Phase2Out" connectedTo="Bus48Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line84Phase3Out" carrier="Electricity" name="line84Phase3Out" connectedTo="Bus48Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus48" name="Bus48">
        <port xsi:type="esdl:InPort" id="Bus48Phase1In" carrier="Electricity" connectedTo="line84Phase1Out" name="Bus48Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus48Phase2In" carrier="Electricity" connectedTo="line84Phase2Out" name="Bus48Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus48Phase3In" carrier="Electricity" connectedTo="line84Phase3Out" name="Bus48Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus48Phase1Out" carrier="Electricity" name="Bus48Phase1Out" connectedTo="line85Phase1In line110Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus48Phase2Out" carrier="Electricity" name="Bus48Phase2Out" connectedTo="line85Phase2In line110Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus48Phase3Out" carrier="Electricity" name="Bus48Phase3Out" connectedTo="line85Phase3In line110Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line85" length="31.0" assetType="gplkh_4_6_curm_4_2p5" name="line85">
        <port xsi:type="esdl:InPort" id="line85Phase1In" carrier="Electricity" connectedTo="Bus48Phase1Out" name="line85Phase1In"/>
        <port xsi:type="esdl:InPort" id="line85Phase2In" carrier="Electricity" connectedTo="Bus48Phase2Out" name="line85Phase2In"/>
        <port xsi:type="esdl:InPort" id="line85Phase3In" carrier="Electricity" connectedTo="Bus48Phase3Out" name="line85Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line85Phase1Out" carrier="Electricity" name="line85Phase1Out" connectedTo="Bus4801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line85Phase2Out" carrier="Electricity" name="line85Phase2Out" connectedTo="Bus4801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line85Phase3Out" carrier="Electricity" name="line85Phase3Out" connectedTo="Bus4801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4801" name="Bus4801">
        <port xsi:type="esdl:InPort" id="Bus4801Phase1In" carrier="Electricity" connectedTo="line85Phase1Out" name="Bus4801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4801Phase2In" carrier="Electricity" connectedTo="line85Phase2Out"  name="Bus4801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4801Phase3In" carrier="Electricity" connectedTo="line85Phase3Out" name="Bus4801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus4801Phase1Out" carrier="Electricity" id="Bus4801Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus4801Phase2Out" carrier="Electricity" name="Bus4801Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4801Phase3Out" carrier="Electricity" id="Bus4801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line86" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line86">
        <port xsi:type="esdl:InPort" id="line86Phase1In" carrier="Electricity" connectedTo="Bus44Phase1Out" name="line86Phase1In"/>
        <port xsi:type="esdl:InPort" id="line86Phase2In" carrier="Electricity" connectedTo="Bus44Phase2Out" name="line86Phase2In"/>
        <port xsi:type="esdl:InPort" id="line86Phase3In" carrier="Electricity" connectedTo="Bus44Phase3Out" name="line86Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line86Phase1Out" carrier="Electricity" name="line86Phase1Out" connectedTo="Bus49Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line86Phase2Out" carrier="Electricity" name="line86Phase2Out" connectedTo="Bus49Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line86Phase3Out" carrier="Electricity" name="line86Phase3Out" connectedTo="Bus49Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus49" name="Bus49">
        <port xsi:type="esdl:InPort" id="Bus49Phase1In" carrier="Electricity" connectedTo="line86Phase1Out" name="Bus49Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus49Phase2In" carrier="Electricity" connectedTo="line86Phase2Out" name="Bus49Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus49Phase3In" carrier="Electricity" connectedTo="line86Phase3Out" name="Bus49Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus49Phase1Out" carrier="Electricity" name="Bus49Phase1Out" connectedTo="line87Phase1In line92Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus49Phase2Out" carrier="Electricity" name="Bus49Phase2Out" connectedTo="line87Phase2In line92Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus49Phase3Out" carrier="Electricity" name="Bus49Phase3Out" connectedTo="line87Phase3In line92Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line87" length="40.0" assetType="gplkh_4_6_curm_4_2p5" name="line87">
        <port xsi:type="esdl:InPort" id="line87Phase1In" carrier="Electricity" connectedTo="Bus49Phase1Out" name="line87Phase1In"/>
        <port xsi:type="esdl:InPort" id="line87Phase2In" carrier="Electricity" connectedTo="Bus49Phase2Out" name="line87Phase2In"/>
        <port xsi:type="esdl:InPort" id="line87Phase3In" carrier="Electricity" connectedTo="Bus49Phase3Out" name="line87Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line87Phase1Out" carrier="Electricity" name="line87Phase1Out" connectedTo="Bus4901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line87Phase2Out" carrier="Electricity" name="line87Phase2Out" connectedTo="Bus4901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line87Phase3Out" carrier="Electricity" name="line87Phase3Out" connectedTo="Bus4901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus4901" name="Bus4901">
        <port xsi:type="esdl:InPort" id="Bus4901Phase1In" carrier="Electricity" connectedTo="line87Phase1Out"  name="Bus4901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus4901Phase2In" carrier="Electricity" connectedTo="line87Phase2Out" name="Bus4901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus4901Phase3In" carrier="Electricity" connectedTo="line87Phase3Out" name="Bus4901Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus4901Phase1Out" carrier="Electricity" name="Bus4901Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4901Phase2Out" carrier="Electricity" id="Bus4901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus4901Phase3Out" carrier="Electricity" id="Bus4901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line88" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line88">
        <port xsi:type="esdl:InPort" id="line88Phase1In" carrier="Electricity" connectedTo="Bus42Phase1Out" name="line88Phase1In"/>
        <port xsi:type="esdl:InPort" id="line88Phase2In" carrier="Electricity" connectedTo="Bus42Phase2Out" name="line88Phase2In"/>
        <port xsi:type="esdl:InPort" id="line88Phase3In" carrier="Electricity" connectedTo="Bus42Phase3Out" name="line88Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line88Phase1Out" carrier="Electricity" name="line88Phase1Out" connectedTo="Bus50Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line88Phase2Out" carrier="Electricity" name="line88Phase2Out" connectedTo="Bus50Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line88Phase3Out" carrier="Electricity" name="line88Phase3Out" connectedTo="Bus50Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus50" name="Bus50">
        <port xsi:type="esdl:InPort" id="Bus50Phase1In" carrier="Electricity" connectedTo="line88Phase1Out" name="Bus50Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus50Phase2In" carrier="Electricity" connectedTo="line88Phase2Out" name="Bus50Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus50Phase3In" carrier="Electricity" connectedTo="line88Phase3Out" name="Bus50Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus50Phase1Out" carrier="Electricity" name="Bus50Phase1Out" connectedTo="line89Phase1In line136Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus50Phase2Out" carrier="Electricity" name="Bus50Phase2Out" connectedTo="line89Phase2In line136Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus50Phase3Out" carrier="Electricity" name="Bus50Phase3Out" connectedTo="line89Phase3In line136Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line89" length="31.0" assetType="gplkh_4_6_curm_4_2p5" name="line89">
        <port xsi:type="esdl:InPort" id="line89Phase1In" carrier="Electricity" connectedTo="Bus50Phase1Out" name="line89Phase1In"/>
        <port xsi:type="esdl:InPort" id="line89Phase2In" carrier="Electricity" connectedTo="Bus50Phase2Out" name="line89Phase2In"/>
        <port xsi:type="esdl:InPort" id="line89Phase3In" carrier="Electricity" connectedTo="Bus50Phase3Out" name="line89Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line89Phase1Out" carrier="Electricity" name="line89Phase1Out" connectedTo="Bus5001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line89Phase2Out" carrier="Electricity" name="line89Phase2Out" connectedTo="Bus5001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line89Phase3Out" carrier="Electricity" name="line89Phase3Out" connectedTo="Bus5001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5001" name="Bus5001">
        <port xsi:type="esdl:InPort" id="Bus5001Phase1In" carrier="Electricity" connectedTo="line89Phase1Out" name="Bus5001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5001Phase2In" carrier="Electricity" connectedTo="line89Phase2Out" name="Bus5001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5001Phase3In" carrier="Electricity" connectedTo="line89Phase3Out"  name="Bus5001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5001Phase1Out" carrier="Electricity" id="Bus5001Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5001Phase2Out" carrier="Electricity" id="Bus5001Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5001Phase3Out" carrier="Electricity" name="Bus5001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line90" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line90">
        <port xsi:type="esdl:InPort" id="line90Phase1In" carrier="Electricity" connectedTo="Bus47Phase1Out" name="line90Phase1In"/>
        <port xsi:type="esdl:InPort" id="line90Phase2In" carrier="Electricity" connectedTo="Bus47Phase2Out" name="line90Phase2In"/>
        <port xsi:type="esdl:InPort" id="line90Phase3In" carrier="Electricity" connectedTo="Bus47Phase3Out" name="line90Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line90Phase1Out" carrier="Electricity" name="line90Phase1Out" connectedTo="Bus51Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line90Phase2Out" carrier="Electricity" name="line90Phase2Out" connectedTo="Bus51Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line90Phase3Out" carrier="Electricity" name="line90Phase3Out" connectedTo="Bus51Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus51" name="Bus51">
        <port xsi:type="esdl:InPort" id="Bus51Phase1In" carrier="Electricity" connectedTo="line90Phase1Out" name="Bus51Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus51Phase2In" carrier="Electricity" connectedTo="line90Phase2Out" name="Bus51Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus51Phase3In" carrier="Electricity" connectedTo="line90Phase3Out" name="Bus51Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus51Phase1Out" carrier="Electricity" name="Bus51Phase1Out" connectedTo="line91Phase1In line98Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus51Phase2Out" carrier="Electricity" name="Bus51Phase2Out" connectedTo="line91Phase2In line98Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus51Phase3Out" carrier="Electricity" name="Bus51Phase3Out" connectedTo="line91Phase3In line98Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line91" length="11.0" assetType="gplkh_4_6_curm_4_2p5" name="line91">
        <port xsi:type="esdl:InPort" id="line91Phase1In" carrier="Electricity" connectedTo="Bus51Phase1Out" name="line91Phase1In"/>
        <port xsi:type="esdl:InPort" id="line91Phase2In" carrier="Electricity" connectedTo="Bus51Phase2Out" name="line91Phase2In"/>
        <port xsi:type="esdl:InPort" id="line91Phase3In" carrier="Electricity" connectedTo="Bus51Phase3Out" name="line91Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line91Phase1Out" carrier="Electricity" name="line91Phase1Out" connectedTo="Bus5101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line91Phase2Out" carrier="Electricity" name="line91Phase2Out" connectedTo="Bus5101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line91Phase3Out" carrier="Electricity" name="line91Phase3Out" connectedTo="Bus5101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5101" name="Bus5101">
        <port xsi:type="esdl:InPort" id="Bus5101Phase1In" carrier="Electricity" connectedTo="line91Phase1Out" name="Bus5101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5101Phase2In" carrier="Electricity" connectedTo="line91Phase2Out"  name="Bus5101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5101Phase3In" carrier="Electricity" connectedTo="line91Phase3Out" name="Bus5101Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5101Phase1Out" carrier="Electricity" id="Bus5101Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5101Phase2Out" carrier="Electricity" name="Bus5101Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5101Phase3Out" carrier="Electricity" id="Bus5101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line92" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line92">
        <port xsi:type="esdl:InPort" id="line92Phase1In" carrier="Electricity" connectedTo="Bus49Phase1Out" name="line92Phase1In"/>
        <port xsi:type="esdl:InPort" id="line92Phase2In" carrier="Electricity" connectedTo="Bus49Phase2Out" name="line92Phase2In"/>
        <port xsi:type="esdl:InPort" id="line92Phase3In" carrier="Electricity" connectedTo="Bus49Phase3Out" name="line92Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line92Phase1Out" carrier="Electricity" name="line92Phase1Out" connectedTo="Bus52Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line92Phase2Out" carrier="Electricity" name="line92Phase2Out" connectedTo="Bus52Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line92Phase3Out" carrier="Electricity" name="line92Phase3Out" connectedTo="Bus52Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus52" name="Bus52">
        <port xsi:type="esdl:InPort" id="Bus52Phase1In" carrier="Electricity" connectedTo="line92Phase1Out" name="Bus52Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus52Phase2In" carrier="Electricity" connectedTo="line92Phase2Out" name="Bus52Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus52Phase3In" carrier="Electricity" connectedTo="line92Phase3Out" name="Bus52Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus52Phase1Out" carrier="Electricity" name="Bus52Phase1Out" connectedTo="line93Phase1In line94Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus52Phase2Out" carrier="Electricity" name="Bus52Phase2Out" connectedTo="line93Phase2In line94Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus52Phase3Out" carrier="Electricity" name="Bus52Phase3Out" connectedTo="line93Phase3In line94Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line93" length="31.0" assetType="gplkh_4_6_curm_4_2p5" name="line93">
        <port xsi:type="esdl:InPort" id="line93Phase1In" carrier="Electricity" connectedTo="Bus52Phase1Out" name="line93Phase1In"/>
        <port xsi:type="esdl:InPort" id="line93Phase2In" carrier="Electricity" connectedTo="Bus52Phase2Out" name="line93Phase2In"/>
        <port xsi:type="esdl:InPort" id="line93Phase3In" carrier="Electricity" connectedTo="Bus52Phase3Out" name="line93Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line93Phase1Out" carrier="Electricity" name="line93Phase1Out" connectedTo="Bus5201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line93Phase2Out" carrier="Electricity" name="line93Phase2Out" connectedTo="Bus5201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line93Phase3Out" carrier="Electricity" name="line93Phase3Out" connectedTo="Bus5201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5201" name="Bus5201">
        <port xsi:type="esdl:InPort" id="Bus5201Phase1In" carrier="Electricity" connectedTo="line93Phase1Out"  name="Bus5201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5201Phase2In" carrier="Electricity" connectedTo="line93Phase2Out" name="Bus5201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5201Phase3In" carrier="Electricity" connectedTo="line93Phase3Out" name="Bus5201Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus5201Phase1Out" carrier="Electricity" name="Bus5201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5201Phase2Out" carrier="Electricity" id="Bus5201Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5201Phase3Out" carrier="Electricity" id="Bus5201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line94" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line94">
        <port xsi:type="esdl:InPort" id="line94Phase1In" carrier="Electricity" connectedTo="Bus52Phase1Out" name="line94Phase1In"/>
        <port xsi:type="esdl:InPort" id="line94Phase2In" carrier="Electricity" connectedTo="Bus52Phase2Out" name="line94Phase2In"/>
        <port xsi:type="esdl:InPort" id="line94Phase3In" carrier="Electricity" connectedTo="Bus52Phase3Out" name="line94Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line94Phase1Out" carrier="Electricity" name="line94Phase1Out" connectedTo="Bus53Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line94Phase2Out" carrier="Electricity" name="line94Phase2Out" connectedTo="Bus53Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line94Phase3Out" carrier="Electricity" name="line94Phase3Out" connectedTo="Bus53Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus53" name="Bus53">
        <port xsi:type="esdl:InPort" id="Bus53Phase1In" carrier="Electricity" connectedTo="line94Phase1Out" name="Bus53Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus53Phase2In" carrier="Electricity" connectedTo="line94Phase2Out" name="Bus53Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus53Phase3In" carrier="Electricity" connectedTo="line94Phase3Out" name="Bus53Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus53Phase1Out" carrier="Electricity" name="Bus53Phase1Out" connectedTo="line95Phase1In line104Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus53Phase2Out" carrier="Electricity" name="Bus53Phase2Out" connectedTo="line95Phase2In line104Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus53Phase3Out" carrier="Electricity" name="Bus53Phase3Out" connectedTo="line95Phase3In line104Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line95" length="3.0" assetType="gplkh_4_6_curm_4_2p5" name="line95">
        <port xsi:type="esdl:InPort" id="line95Phase1In" carrier="Electricity" connectedTo="Bus53Phase1Out" name="line95Phase1In"/>
        <port xsi:type="esdl:InPort" id="line95Phase2In" carrier="Electricity" connectedTo="Bus53Phase2Out" name="line95Phase2In"/>
        <port xsi:type="esdl:InPort" id="line95Phase3In" carrier="Electricity" connectedTo="Bus53Phase3Out" name="line95Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line95Phase1Out" carrier="Electricity" name="line95Phase1Out" connectedTo="Bus5301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line95Phase2Out" carrier="Electricity" name="line95Phase2Out" connectedTo="Bus5301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line95Phase3Out" carrier="Electricity" name="line95Phase3Out" connectedTo="Bus5301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5301" name="Bus5301">
        <port xsi:type="esdl:InPort" id="Bus5301Phase1In" carrier="Electricity" connectedTo="line95Phase1Out" name="Bus5301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5301Phase2In" carrier="Electricity" connectedTo="line95Phase2Out"  name="Bus5301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5301Phase3In" carrier="Electricity" connectedTo="line95Phase3Out" name="Bus5301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5301Phase1Out" carrier="Electricity" id="Bus5301Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5301Phase2Out" carrier="Electricity" name="Bus5301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5301Phase3Out" carrier="Electricity" id="Bus5301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line96" length="10.0" assetType="gplkh_4_50_cusvm_4_6" name="line96">
        <port xsi:type="esdl:InPort" id="line96Phase1In" carrier="Electricity" connectedTo="Bus31Phase1Out" name="line96Phase1In"/>
        <port xsi:type="esdl:InPort" id="line96Phase2In" carrier="Electricity" connectedTo="Bus31Phase2Out" name="line96Phase2In"/>
        <port xsi:type="esdl:InPort" id="line96Phase3In" carrier="Electricity" connectedTo="Bus31Phase3Out" name="line96Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line96Phase1Out" carrier="Electricity" name="line96Phase1Out" connectedTo="Bus54Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line96Phase2Out" carrier="Electricity" name="line96Phase2Out" connectedTo="Bus54Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line96Phase3Out" carrier="Electricity" name="line96Phase3Out" connectedTo="Bus54Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus54" name="Bus54">
        <port xsi:type="esdl:InPort" id="Bus54Phase1In" carrier="Electricity" connectedTo="line96Phase1Out" name="Bus54Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus54Phase2In" carrier="Electricity" connectedTo="line96Phase2Out" name="Bus54Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus54Phase3In" carrier="Electricity" connectedTo="line96Phase3Out" name="Bus54Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus54Phase1Out" carrier="Electricity" name="Bus54Phase1Out" connectedTo="line97Phase1In line120Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus54Phase2Out" carrier="Electricity" name="Bus54Phase2Out" connectedTo="line97Phase2In line120Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus54Phase3Out" carrier="Electricity" name="Bus54Phase3Out" connectedTo="line97Phase3In line120Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line97" length="3.0" assetType="gplkh_4_10_curm_4_2p5" name="line97">
        <port xsi:type="esdl:InPort" id="line97Phase1In" carrier="Electricity" connectedTo="Bus54Phase1Out" name="line97Phase1In"/>
        <port xsi:type="esdl:InPort" id="line97Phase2In" carrier="Electricity" connectedTo="Bus54Phase2Out" name="line97Phase2In"/>
        <port xsi:type="esdl:InPort" id="line97Phase3In" carrier="Electricity" connectedTo="Bus54Phase3Out" name="line97Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line97Phase1Out" carrier="Electricity" name="line97Phase1Out" connectedTo="Bus5401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line97Phase2Out" carrier="Electricity" name="line97Phase2Out" connectedTo="Bus5401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line97Phase3Out" carrier="Electricity" name="line97Phase3Out" connectedTo="Bus5401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5401" name="Bus5401">
        <port xsi:type="esdl:InPort" id="Bus5401Phase1In" carrier="Electricity" connectedTo="line97Phase1Out"  name="Bus5401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5401Phase2In" carrier="Electricity" connectedTo="line97Phase2Out" name="Bus5401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5401Phase3In" carrier="Electricity" connectedTo="line97Phase3Out" name="Bus5401Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus5401Phase1Out" carrier="Electricity" name="Bus5401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5401Phase2Out" carrier="Electricity" id="Bus5401Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5401Phase3Out" carrier="Electricity" id="Bus5401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line98" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line98">
        <port xsi:type="esdl:InPort" id="line98Phase1In" carrier="Electricity" connectedTo="Bus51Phase1Out" name="line98Phase1In"/>
        <port xsi:type="esdl:InPort" id="line98Phase2In" carrier="Electricity" connectedTo="Bus51Phase2Out" name="line98Phase2In"/>
        <port xsi:type="esdl:InPort" id="line98Phase3In" carrier="Electricity" connectedTo="Bus51Phase3Out" name="line98Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line98Phase1Out" carrier="Electricity" name="line98Phase1Out" connectedTo="Bus55Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line98Phase2Out" carrier="Electricity" name="line98Phase2Out" connectedTo="Bus55Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line98Phase3Out" carrier="Electricity" name="line98Phase3Out" connectedTo="Bus55Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus55" name="Bus55">
        <port xsi:type="esdl:InPort" id="Bus55Phase1In" carrier="Electricity" connectedTo="line98Phase1Out" name="Bus55Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus55Phase2In" carrier="Electricity" connectedTo="line98Phase2Out" name="Bus55Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus55Phase3In" carrier="Electricity" connectedTo="line98Phase3Out" name="Bus55Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus55Phase1Out" carrier="Electricity" name="Bus55Phase1Out" connectedTo="line99Phase1In line118Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus55Phase2Out" carrier="Electricity" name="Bus55Phase2Out" connectedTo="line99Phase2In line118Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus55Phase3Out" carrier="Electricity" name="Bus55Phase3Out" connectedTo="line99Phase3In line118Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line99" length="37.0" assetType="gplkh_4_10_curm_4_2p5" name="line99">
        <port xsi:type="esdl:InPort" id="line99Phase1In" carrier="Electricity" connectedTo="Bus55Phase1Out" name="line99Phase1In"/>
        <port xsi:type="esdl:InPort" id="line99Phase2In" carrier="Electricity" connectedTo="Bus55Phase2Out" name="line99Phase2In"/>
        <port xsi:type="esdl:InPort" id="line99Phase3In" carrier="Electricity" connectedTo="Bus55Phase3Out" name="line99Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line99Phase1Out" carrier="Electricity" name="line99Phase1Out" connectedTo="Bus5501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line99Phase2Out" carrier="Electricity" name="line99Phase2Out" connectedTo="Bus5501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line99Phase3Out" carrier="Electricity" name="line99Phase3Out" connectedTo="Bus5501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5501" name="Bus5501">
        <port xsi:type="esdl:InPort" id="Bus5501Phase1In" carrier="Electricity" connectedTo="line99Phase1Out" name="Bus5501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5501Phase2In" carrier="Electricity" connectedTo="line99Phase2Out"  name="Bus5501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5501Phase3In" carrier="Electricity" connectedTo="line99Phase3Out" name="Bus5501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5501Phase1Out" carrier="Electricity" id="Bus5501Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5501Phase2Out" carrier="Electricity" name="Bus5501Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5501Phase3Out" carrier="Electricity" id="Bus5501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line100" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line100">
        <port xsi:type="esdl:InPort" id="line100Phase1In" carrier="Electricity" connectedTo="Bus46Phase1Out" name="line100Phase1In"/>
        <port xsi:type="esdl:InPort" id="line100Phase2In" carrier="Electricity" connectedTo="Bus46Phase2Out" name="line100Phase2In"/>
        <port xsi:type="esdl:InPort" id="line100Phase3In" carrier="Electricity" connectedTo="Bus46Phase3Out" name="line100Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line100Phase1Out" carrier="Electricity" name="line100Phase1Out" connectedTo="Bus56Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line100Phase2Out" carrier="Electricity" name="line100Phase2Out" connectedTo="Bus56Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line100Phase3Out" carrier="Electricity" name="line100Phase3Out" connectedTo="Bus56Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus56" name="Bus56">
        <port xsi:type="esdl:InPort" id="Bus56Phase1In" carrier="Electricity" connectedTo="line100Phase1Out" name="Bus56Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus56Phase2In" carrier="Electricity" connectedTo="line100Phase2Out" name="Bus56Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus56Phase3In" carrier="Electricity" connectedTo="line100Phase3Out" name="Bus56Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus56Phase1Out" carrier="Electricity" name="Bus56Phase1Out" connectedTo="line101Phase1In line106Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus56Phase2Out" carrier="Electricity" name="Bus56Phase2Out" connectedTo="line101Phase2In line106Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus56Phase3Out" carrier="Electricity" name="Bus56Phase3Out" connectedTo="line101Phase3In line106Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line101" length="6.0" assetType="gplkh_4_10_curm_4_2p5" name="line101">
        <port xsi:type="esdl:InPort" id="line101Phase1In" carrier="Electricity" connectedTo="Bus56Phase1Out" name="line101Phase1In"/>
        <port xsi:type="esdl:InPort" id="line101Phase2In" carrier="Electricity" connectedTo="Bus56Phase2Out" name="line101Phase2In"/>
        <port xsi:type="esdl:InPort" id="line101Phase3In" carrier="Electricity" connectedTo="Bus56Phase3Out" name="line101Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line101Phase1Out" carrier="Electricity" name="line101Phase1Out" connectedTo="Bus5601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line101Phase2Out" carrier="Electricity" name="line101Phase2Out" connectedTo="Bus5601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line101Phase3Out" carrier="Electricity" name="line101Phase3Out" connectedTo="Bus5601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5601" name="Bus5601">
        <port xsi:type="esdl:InPort" id="Bus5601Phase1In" carrier="Electricity" connectedTo="line101Phase1Out" name="Bus5601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5601Phase2In" carrier="Electricity" connectedTo="line101Phase2Out"  name="Bus5601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5601Phase3In" carrier="Electricity" connectedTo="line101Phase3Out" name="Bus5601Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5601Phase1Out" carrier="Electricity" id="Bus5601Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5601Phase2Out" carrier="Electricity" name="Bus5601Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5601Phase3Out" carrier="Electricity" id="Bus5601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line102" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line102">
        <port xsi:type="esdl:InPort" id="line102Phase1In" carrier="Electricity" connectedTo="Bus28Phase1Out" name="line102Phase1In"/>
        <port xsi:type="esdl:InPort" id="line102Phase2In" carrier="Electricity" connectedTo="Bus28Phase2Out" name="line102Phase2In"/>
        <port xsi:type="esdl:InPort" id="line102Phase3In" carrier="Electricity" connectedTo="Bus28Phase3Out" name="line102Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line102Phase1Out" carrier="Electricity" name="line102Phase1Out" connectedTo="Bus57Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line102Phase2Out" carrier="Electricity" name="line102Phase2Out" connectedTo="Bus57Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line102Phase3Out" carrier="Electricity" name="line102Phase3Out" connectedTo="Bus57Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus57" name="Bus57">
        <port xsi:type="esdl:InPort" id="Bus57Phase1In" carrier="Electricity" connectedTo="line102Phase1Out" name="Bus57Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus57Phase2In" carrier="Electricity" connectedTo="line102Phase2Out" name="Bus57Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus57Phase3In" carrier="Electricity" connectedTo="line102Phase3Out" name="Bus57Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus57Phase1Out" carrier="Electricity" name="Bus57Phase1Out" connectedTo="line103Phase1In line128Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus57Phase2Out" carrier="Electricity" name="Bus57Phase2Out" connectedTo="line103Phase2In line128Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus57Phase3Out" carrier="Electricity" name="Bus57Phase3Out" connectedTo="line103Phase3In line128Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line103" length="4.0" assetType="gplkh_4_10_curm_4_2p5" name="line103">
        <port xsi:type="esdl:InPort" id="line103Phase1In" carrier="Electricity" connectedTo="Bus57Phase1Out" name="line103Phase1In"/>
        <port xsi:type="esdl:InPort" id="line103Phase2In" carrier="Electricity" connectedTo="Bus57Phase2Out" name="line103Phase2In"/>
        <port xsi:type="esdl:InPort" id="line103Phase3In" carrier="Electricity" connectedTo="Bus57Phase3Out" name="line103Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line103Phase1Out" carrier="Electricity" name="line103Phase1Out" connectedTo="Bus5701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line103Phase2Out" carrier="Electricity" name="line103Phase2Out" connectedTo="Bus5701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line103Phase3Out" carrier="Electricity" name="line103Phase3Out" connectedTo="Bus5701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5701" name="Bus5701">
        <port xsi:type="esdl:InPort" id="Bus5701Phase1In" carrier="Electricity" connectedTo="line103Phase1Out" name="Bus5701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5701Phase2In" carrier="Electricity" connectedTo="line103Phase2Out"  name="Bus5701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5701Phase3In" carrier="Electricity" connectedTo="line103Phase3Out" name="Bus5701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5701Phase1Out" carrier="Electricity" id="Bus5701Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5701Phase2Out" carrier="Electricity" name="Bus5701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5701Phase3Out" carrier="Electricity" id="Bus5701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line104" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line104">
        <port xsi:type="esdl:InPort" id="line104Phase1In" carrier="Electricity" connectedTo="Bus53Phase1Out" name="line104Phase1In"/>
        <port xsi:type="esdl:InPort" id="line104Phase2In" carrier="Electricity" connectedTo="Bus53Phase2Out" name="line104Phase2In"/>
        <port xsi:type="esdl:InPort" id="line104Phase3In" carrier="Electricity" connectedTo="Bus53Phase3Out" name="line104Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line104Phase1Out" carrier="Electricity" name="line104Phase1Out" connectedTo="Bus58Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line104Phase2Out" carrier="Electricity" name="line104Phase2Out" connectedTo="Bus58Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line104Phase3Out" carrier="Electricity" name="line104Phase3Out" connectedTo="Bus58Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus58" name="Bus58">
        <port xsi:type="esdl:InPort" id="Bus58Phase1In" carrier="Electricity" connectedTo="line104Phase1Out" name="Bus58Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus58Phase2In" carrier="Electricity" connectedTo="line104Phase2Out" name="Bus58Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus58Phase3In" carrier="Electricity" connectedTo="line104Phase3Out" name="Bus58Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus58Phase1Out" carrier="Electricity" name="Bus58Phase1Out" connectedTo="line105Phase1In line132Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus58Phase2Out" carrier="Electricity" name="Bus58Phase2Out" connectedTo="line105Phase2In line132Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus58Phase3Out" carrier="Electricity" name="Bus58Phase3Out" connectedTo="line105Phase3In line132Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line105" length="33.0" assetType="gplkh_4_10_curm_4_2p5" name="line105">
        <port xsi:type="esdl:InPort" id="line105Phase1In" carrier="Electricity" connectedTo="Bus58Phase1Out" name="line105Phase1In"/>
        <port xsi:type="esdl:InPort" id="line105Phase2In" carrier="Electricity" connectedTo="Bus58Phase2Out" name="line105Phase2In"/>
        <port xsi:type="esdl:InPort" id="line105Phase3In" carrier="Electricity" connectedTo="Bus58Phase3Out" name="line105Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line105Phase1Out" carrier="Electricity" name="line105Phase1Out" connectedTo="Bus5801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line105Phase2Out" carrier="Electricity" name="line105Phase2Out" connectedTo="Bus5801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line105Phase3Out" carrier="Electricity" name="line105Phase3Out" connectedTo="Bus5801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5801" name="Bus5801">
        <port xsi:type="esdl:InPort" id="Bus5801Phase1In" carrier="Electricity" connectedTo="line105Phase1Out" name="Bus5801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5801Phase2In" carrier="Electricity" connectedTo="line105Phase2Out" name="Bus5801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5801Phase3In" carrier="Electricity" connectedTo="line105Phase3Out"  name="Bus5801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5801Phase1Out" carrier="Electricity" id="Bus5801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5801Phase2Out" carrier="Electricity" id="Bus5801Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5801Phase3Out" carrier="Electricity" name="Bus5801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line106" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line106">
        <port xsi:type="esdl:InPort" id="line106Phase1In" carrier="Electricity" connectedTo="Bus56Phase1Out" name="line106Phase1In"/>
        <port xsi:type="esdl:InPort" id="line106Phase2In" carrier="Electricity" connectedTo="Bus56Phase2Out" name="line106Phase2In"/>
        <port xsi:type="esdl:InPort" id="line106Phase3In" carrier="Electricity" connectedTo="Bus56Phase3Out" name="line106Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line106Phase1Out" carrier="Electricity" name="line106Phase1Out" connectedTo="Bus59Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line106Phase2Out" carrier="Electricity" name="line106Phase2Out" connectedTo="Bus59Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line106Phase3Out" carrier="Electricity" name="line106Phase3Out" connectedTo="Bus59Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus59" name="Bus59">
        <port xsi:type="esdl:InPort" id="Bus59Phase1In" carrier="Electricity" connectedTo="line106Phase1Out" name="Bus59Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus59Phase2In" carrier="Electricity" connectedTo="line106Phase2Out" name="Bus59Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus59Phase3In" carrier="Electricity" connectedTo="line106Phase3Out" name="Bus59Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus59Phase1Out" carrier="Electricity" name="Bus59Phase1Out" connectedTo="line107Phase1In line112Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus59Phase2Out" carrier="Electricity" name="Bus59Phase2Out" connectedTo="line107Phase2In line112Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus59Phase3Out" carrier="Electricity" name="Bus59Phase3Out" connectedTo="line107Phase3In line112Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line107" length="24.0" assetType="gplkh_4_10_curm_4_2p5" name="line107">
        <port xsi:type="esdl:InPort" id="line107Phase1In" carrier="Electricity" connectedTo="Bus59Phase1Out" name="line107Phase1In"/>
        <port xsi:type="esdl:InPort" id="line107Phase2In" carrier="Electricity" connectedTo="Bus59Phase2Out" name="line107Phase2In"/>
        <port xsi:type="esdl:InPort" id="line107Phase3In" carrier="Electricity" connectedTo="Bus59Phase3Out" name="line107Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line107Phase1Out" carrier="Electricity" name="line107Phase1Out" connectedTo="Bus5901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line107Phase2Out" carrier="Electricity" name="line107Phase2Out" connectedTo="Bus5901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line107Phase3Out" carrier="Electricity" name="line107Phase3Out" connectedTo="Bus5901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5901" name="Bus5901">
        <port xsi:type="esdl:InPort" id="Bus5901Phase1In" carrier="Electricity" connectedTo="line107Phase1Out" name="Bus5901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus5901Phase2In" carrier="Electricity" connectedTo="line107Phase2Out" name="Bus5901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus5901Phase3In" carrier="Electricity" connectedTo="line107Phase3Out"  name="Bus5901Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus5901Phase1Out" carrier="Electricity" id="Bus5901Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus5901Phase2Out" carrier="Electricity" id="Bus5901Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus5901Phase3Out" carrier="Electricity" name="Bus5901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line108" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line108">
        <port xsi:type="esdl:InPort" id="line108Phase1In" carrier="Electricity" connectedTo="Bus40Phase1Out" name="line108Phase1In"/>
        <port xsi:type="esdl:InPort" id="line108Phase2In" carrier="Electricity" connectedTo="Bus40Phase2Out" name="line108Phase2In"/>
        <port xsi:type="esdl:InPort" id="line108Phase3In" carrier="Electricity" connectedTo="Bus40Phase3Out" name="line108Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line108Phase1Out" carrier="Electricity" name="line108Phase1Out" connectedTo="Bus60Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line108Phase2Out" carrier="Electricity" name="line108Phase2Out" connectedTo="Bus60Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line108Phase3Out" carrier="Electricity" name="line108Phase3Out" connectedTo="Bus60Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus60" name="Bus60">
        <port xsi:type="esdl:InPort" id="Bus60Phase1In" carrier="Electricity" connectedTo="line108Phase1Out" name="Bus60Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus60Phase2In" carrier="Electricity" connectedTo="line108Phase2Out" name="Bus60Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus60Phase3In" carrier="Electricity" connectedTo="line108Phase3Out" name="Bus60Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus60Phase1Out" carrier="Electricity" name="Bus60Phase1Out" connectedTo="line109Phase1In line138Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus60Phase2Out" carrier="Electricity" name="Bus60Phase2Out" connectedTo="line109Phase2In line138Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus60Phase3Out" carrier="Electricity" name="Bus60Phase3Out" connectedTo="line109Phase3In line138Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line109" length="5.0" assetType="gplkh_4_10_curm_4_2p5" name="line109">
        <port xsi:type="esdl:InPort" id="line109Phase1In" carrier="Electricity" connectedTo="Bus60Phase1Out" name="line109Phase1In"/>
        <port xsi:type="esdl:InPort" id="line109Phase2In" carrier="Electricity" connectedTo="Bus60Phase2Out" name="line109Phase2In"/>
        <port xsi:type="esdl:InPort" id="line109Phase3In" carrier="Electricity" connectedTo="Bus60Phase3Out" name="line109Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line109Phase1Out" carrier="Electricity" name="line109Phase1Out" connectedTo="Bus6001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line109Phase2Out" carrier="Electricity" name="line109Phase2Out" connectedTo="Bus6001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line109Phase3Out" carrier="Electricity" name="line109Phase3Out" connectedTo="Bus6001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6001" name="Bus6001">
        <port xsi:type="esdl:InPort" id="Bus6001Phase1In" carrier="Electricity" connectedTo="line109Phase1Out" name="Bus6001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6001Phase2In" carrier="Electricity" connectedTo="line109Phase2Out"  name="Bus6001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6001Phase3In" carrier="Electricity" connectedTo="line109Phase3Out" name="Bus6001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6001Phase1Out" carrier="Electricity" id="Bus6001Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6001Phase2Out" carrier="Electricity" name="Bus6001Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6001Phase3Out" carrier="Electricity" id="Bus6001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line110" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line110">
        <port xsi:type="esdl:InPort" id="line110Phase1In" carrier="Electricity" connectedTo="Bus48Phase1Out" name="line110Phase1In"/>
        <port xsi:type="esdl:InPort" id="line110Phase2In" carrier="Electricity" connectedTo="Bus48Phase2Out" name="line110Phase2In"/>
        <port xsi:type="esdl:InPort" id="line110Phase3In" carrier="Electricity" connectedTo="Bus48Phase3Out" name="line110Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line110Phase1Out" carrier="Electricity" name="line110Phase1Out" connectedTo="Bus61Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line110Phase2Out" carrier="Electricity" name="line110Phase2Out" connectedTo="Bus61Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line110Phase3Out" carrier="Electricity" name="line110Phase3Out" connectedTo="Bus61Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus61" name="Bus61">
        <port xsi:type="esdl:InPort" id="Bus61Phase1In" carrier="Electricity" connectedTo="line110Phase1Out" name="Bus61Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus61Phase2In" carrier="Electricity" connectedTo="line110Phase2Out" name="Bus61Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus61Phase3In" carrier="Electricity" connectedTo="line110Phase3Out" name="Bus61Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus61Phase1Out" carrier="Electricity" name="Bus61Phase1Out" connectedTo="line111Phase1In line114Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus61Phase2Out" carrier="Electricity" name="Bus61Phase2Out" connectedTo="line111Phase2In line114Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus61Phase3Out" carrier="Electricity" name="Bus61Phase3Out" connectedTo="line111Phase3In line114Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line111" length="38.0" assetType="gplkh_4_6_curm_4_2p5" name="line111">
        <port xsi:type="esdl:InPort" id="line111Phase1In" carrier="Electricity" connectedTo="Bus61Phase1Out" name="line111Phase1In"/>
        <port xsi:type="esdl:InPort" id="line111Phase2In" carrier="Electricity" connectedTo="Bus61Phase2Out" name="line111Phase2In"/>
        <port xsi:type="esdl:InPort" id="line111Phase3In" carrier="Electricity" connectedTo="Bus61Phase3Out" name="line111Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line111Phase1Out" carrier="Electricity" name="line111Phase1Out" connectedTo="Bus6101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line111Phase2Out" carrier="Electricity" name="line111Phase2Out" connectedTo="Bus6101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line111Phase3Out" carrier="Electricity" name="line111Phase3Out" connectedTo="Bus6101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6101" name="Bus6101">
        <port xsi:type="esdl:InPort" id="Bus6101Phase1In" carrier="Electricity" connectedTo="line111Phase1Out" name="Bus6101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6101Phase2In" carrier="Electricity" connectedTo="line111Phase2Out" name="Bus6101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6101Phase3In" carrier="Electricity" connectedTo="line111Phase3Out"  name="Bus6101Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6101Phase1Out" carrier="Electricity" id="Bus6101Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6101Phase2Out" carrier="Electricity" id="Bus6101Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6101Phase3Out" carrier="Electricity" name="Bus6101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line112" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line112">
        <port xsi:type="esdl:InPort" id="line112Phase1In" carrier="Electricity" connectedTo="Bus59Phase1Out" name="line112Phase1In"/>
        <port xsi:type="esdl:InPort" id="line112Phase2In" carrier="Electricity" connectedTo="Bus59Phase2Out" name="line112Phase2In"/>
        <port xsi:type="esdl:InPort" id="line112Phase3In" carrier="Electricity" connectedTo="Bus59Phase3Out" name="line112Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line112Phase1Out" carrier="Electricity" name="line112Phase1Out" connectedTo="Bus62Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line112Phase2Out" carrier="Electricity" name="line112Phase2Out" connectedTo="Bus62Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line112Phase3Out" carrier="Electricity" name="line112Phase3Out" connectedTo="Bus62Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus62" name="Bus62">
        <port xsi:type="esdl:InPort" id="Bus62Phase1In" carrier="Electricity" connectedTo="line112Phase1Out" name="Bus62Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus62Phase2In" carrier="Electricity" connectedTo="line112Phase2Out" name="Bus62Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus62Phase3In" carrier="Electricity" connectedTo="line112Phase3Out" name="Bus62Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus62Phase1Out" carrier="Electricity" name="Bus62Phase1Out" connectedTo="line113Phase1In line130Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus62Phase2Out" carrier="Electricity" name="Bus62Phase2Out" connectedTo="line113Phase2In line130Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus62Phase3Out" carrier="Electricity" name="Bus62Phase3Out" connectedTo="line113Phase3In line130Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line113" length="9.0" assetType="gplkh_4_6_curm_4_2p5" name="line113">
        <port xsi:type="esdl:InPort" id="line113Phase1In" carrier="Electricity" connectedTo="Bus62Phase1Out" name="line113Phase1In"/>
        <port xsi:type="esdl:InPort" id="line113Phase2In" carrier="Electricity" connectedTo="Bus62Phase2Out" name="line113Phase2In"/>
        <port xsi:type="esdl:InPort" id="line113Phase3In" carrier="Electricity" connectedTo="Bus62Phase3Out" name="line113Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line113Phase1Out" carrier="Electricity" name="line113Phase1Out" connectedTo="Bus6201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line113Phase2Out" carrier="Electricity" name="line113Phase2Out" connectedTo="Bus6201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line113Phase3Out" carrier="Electricity" name="line113Phase3Out" connectedTo="Bus6201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6201" name="Bus6201">
        <port xsi:type="esdl:InPort" id="Bus6201Phase1In" carrier="Electricity" connectedTo="line113Phase1Out"  name="Bus6201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6201Phase2In" carrier="Electricity" connectedTo="line113Phase2Out" name="Bus6201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6201Phase3In" carrier="Electricity" connectedTo="line113Phase3Out" name="Bus6201Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus6201Phase1Out" carrier="Electricity" name="Bus6201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6201Phase2Out" carrier="Electricity" id="Bus6201Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6201Phase3Out" carrier="Electricity" id="Bus6201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line114" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line114">
        <port xsi:type="esdl:InPort" id="line114Phase1In" carrier="Electricity" connectedTo="Bus61Phase1Out" name="line114Phase1In"/>
        <port xsi:type="esdl:InPort" id="line114Phase2In" carrier="Electricity" connectedTo="Bus61Phase2Out" name="line114Phase2In"/>
        <port xsi:type="esdl:InPort" id="line114Phase3In" carrier="Electricity" connectedTo="Bus61Phase3Out" name="line114Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line114Phase1Out" carrier="Electricity" name="line114Phase1Out" connectedTo="Bus63Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line114Phase2Out" carrier="Electricity" name="line114Phase2Out" connectedTo="Bus63Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line114Phase3Out" carrier="Electricity" name="line114Phase3Out" connectedTo="Bus63Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus63" name="Bus63">
        <port xsi:type="esdl:InPort" id="Bus63Phase1In" carrier="Electricity" connectedTo="line114Phase1Out" name="Bus63Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus63Phase2In" carrier="Electricity" connectedTo="line114Phase2Out" name="Bus63Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus63Phase3In" carrier="Electricity" connectedTo="line114Phase3Out" name="Bus63Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus63Phase1Out" carrier="Electricity" name="Bus63Phase1Out" connectedTo="line115Phase1In line116Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus63Phase2Out" carrier="Electricity" name="Bus63Phase2Out" connectedTo="line115Phase2In line116Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus63Phase3Out" carrier="Electricity" name="Bus63Phase3Out" connectedTo="line115Phase3In line116Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line115" length="32.0" assetType="gplkh_4_6_curm_4_2p5" name="line115">
        <port xsi:type="esdl:InPort" id="line115Phase1In" carrier="Electricity" connectedTo="Bus63Phase1Out" name="line115Phase1In"/>
        <port xsi:type="esdl:InPort" id="line115Phase2In" carrier="Electricity" connectedTo="Bus63Phase2Out" name="line115Phase2In"/>
        <port xsi:type="esdl:InPort" id="line115Phase3In" carrier="Electricity" connectedTo="Bus63Phase3Out" name="line115Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line115Phase1Out" carrier="Electricity" name="line115Phase1Out" connectedTo="Bus6301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line115Phase2Out" carrier="Electricity" name="line115Phase2Out" connectedTo="Bus6301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line115Phase3Out" carrier="Electricity" name="line115Phase3Out" connectedTo="Bus6301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6301" name="Bus6301">
        <port xsi:type="esdl:InPort" id="Bus6301Phase1In" carrier="Electricity" connectedTo="line115Phase1Out" name="Bus6301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6301Phase2In" carrier="Electricity" connectedTo="line115Phase2Out"  name="Bus6301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6301Phase3In" carrier="Electricity" connectedTo="line115Phase3Out" name="Bus6301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6301Phase1Out" carrier="Electricity" id="Bus6301Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6301Phase2Out" carrier="Electricity" name="Bus6301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6301Phase3Out" carrier="Electricity" id="Bus6301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line116" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line116">
        <port xsi:type="esdl:InPort" id="line116Phase1In" carrier="Electricity" connectedTo="Bus63Phase1Out" name="line116Phase1In"/>
        <port xsi:type="esdl:InPort" id="line116Phase2In" carrier="Electricity" connectedTo="Bus63Phase2Out" name="line116Phase2In"/>
        <port xsi:type="esdl:InPort" id="line116Phase3In" carrier="Electricity" connectedTo="Bus63Phase3Out" name="line116Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line116Phase1Out" carrier="Electricity" name="line116Phase1Out" connectedTo="Bus64Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line116Phase2Out" carrier="Electricity" name="line116Phase2Out" connectedTo="Bus64Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line116Phase3Out" carrier="Electricity" name="line116Phase3Out" connectedTo="Bus64Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus64" name="Bus64">
        <port xsi:type="esdl:InPort" id="Bus64Phase1In" carrier="Electricity" connectedTo="line116Phase1Out" name="Bus64Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus64Phase2In" carrier="Electricity" connectedTo="line116Phase2Out" name="Bus64Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus64Phase3In" carrier="Electricity" connectedTo="line116Phase3Out" name="Bus64Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus64Phase1Out" carrier="Electricity" name="Bus64Phase1Out" connectedTo="line117Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus64Phase2Out" carrier="Electricity" name="Bus64Phase2Out" connectedTo="line117Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus64Phase3Out" carrier="Electricity" name="Bus64Phase3Out" connectedTo="line117Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line117" length="12.0" assetType="gplkh_4_6_curm_4_2p5" name="line117">
        <port xsi:type="esdl:InPort" id="line117Phase1In" carrier="Electricity" connectedTo="Bus64Phase1Out" name="line117Phase1In"/>
        <port xsi:type="esdl:InPort" id="line117Phase2In" carrier="Electricity" connectedTo="Bus64Phase2Out" name="line117Phase2In"/>
        <port xsi:type="esdl:InPort" id="line117Phase3In" carrier="Electricity" connectedTo="Bus64Phase3Out" name="line117Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line117Phase1Out" carrier="Electricity" name="line117Phase1Out" connectedTo="Bus6401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line117Phase2Out" carrier="Electricity" name="line117Phase2Out" connectedTo="Bus6401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line117Phase3Out" carrier="Electricity" name="line117Phase3Out" connectedTo="Bus6401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6401" name="Bus6401">
        <port xsi:type="esdl:InPort" id="Bus6401Phase1In" carrier="Electricity" connectedTo="line117Phase1Out" name="Bus6401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6401Phase2In" carrier="Electricity" connectedTo="line117Phase2Out" name="Bus6401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6401Phase3In" carrier="Electricity" connectedTo="line117Phase3Out"  name="Bus6401Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6401Phase1Out" carrier="Electricity" id="Bus6401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6401Phase2Out" carrier="Electricity" id="Bus6401Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6401Phase3Out" carrier="Electricity" name="Bus6401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line118" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line118">
        <port xsi:type="esdl:InPort" id="line118Phase1In" carrier="Electricity" connectedTo="Bus55Phase1Out" name="line118Phase1In"/>
        <port xsi:type="esdl:InPort" id="line118Phase2In" carrier="Electricity" connectedTo="Bus55Phase2Out" name="line118Phase2In"/>
        <port xsi:type="esdl:InPort" id="line118Phase3In" carrier="Electricity" connectedTo="Bus55Phase3Out" name="line118Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line118Phase1Out" carrier="Electricity" name="line118Phase1Out" connectedTo="Bus65Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line118Phase2Out" carrier="Electricity" name="line118Phase2Out" connectedTo="Bus65Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line118Phase3Out" carrier="Electricity" name="line118Phase3Out" connectedTo="Bus65Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus65" name="Bus65">
        <port xsi:type="esdl:InPort" id="Bus65Phase1In" carrier="Electricity" connectedTo="line118Phase1Out" name="Bus65Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus65Phase2In" carrier="Electricity" connectedTo="line118Phase2Out" name="Bus65Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus65Phase3In" carrier="Electricity" connectedTo="line118Phase3Out" name="Bus65Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus65Phase1Out" carrier="Electricity" name="Bus65Phase1Out" connectedTo="line119Phase1In line172Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus65Phase2Out" carrier="Electricity" name="Bus65Phase2Out" connectedTo="line119Phase2In line172Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus65Phase3Out" carrier="Electricity" name="Bus65Phase3Out" connectedTo="line119Phase3In line172Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line119" length="35.0" assetType="gplkh_4_6_curm_4_2p5" name="line119">
        <port xsi:type="esdl:InPort" id="line119Phase1In" carrier="Electricity" connectedTo="Bus65Phase1Out" name="line119Phase1In"/>
        <port xsi:type="esdl:InPort" id="line119Phase2In" carrier="Electricity" connectedTo="Bus65Phase2Out" name="line119Phase2In"/>
        <port xsi:type="esdl:InPort" id="line119Phase3In" carrier="Electricity" connectedTo="Bus65Phase3Out" name="line119Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line119Phase1Out" carrier="Electricity" name="line119Phase1Out" connectedTo="Bus6501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line119Phase2Out" carrier="Electricity" name="line119Phase2Out" connectedTo="Bus6501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line119Phase3Out" carrier="Electricity" name="line119Phase3Out" connectedTo="Bus6501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6501" name="Bus6501">
        <port xsi:type="esdl:InPort" id="Bus6501Phase1In" carrier="Electricity" connectedTo="line119Phase1Out"  name="Bus6501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6501Phase2In" carrier="Electricity" connectedTo="line119Phase2Out" name="Bus6501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6501Phase3In" carrier="Electricity" connectedTo="line119Phase3Out" name="Bus6501Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus6501Phase1Out" carrier="Electricity" name="Bus6501Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6501Phase2Out" carrier="Electricity" id="Bus6501Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6501Phase3Out" carrier="Electricity" id="Bus6501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line120" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line120">
        <port xsi:type="esdl:InPort" id="line120Phase1In" carrier="Electricity" connectedTo="Bus54Phase1Out" name="line120Phase1In"/>
        <port xsi:type="esdl:InPort" id="line120Phase2In" carrier="Electricity" connectedTo="Bus54Phase2Out" name="line120Phase2In"/>
        <port xsi:type="esdl:InPort" id="line120Phase3In" carrier="Electricity" connectedTo="Bus54Phase3Out" name="line120Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line120Phase1Out" carrier="Electricity" name="line120Phase1Out" connectedTo="Bus66Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line120Phase2Out" carrier="Electricity" name="line120Phase2Out" connectedTo="Bus66Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line120Phase3Out" carrier="Electricity" name="line120Phase3Out" connectedTo="Bus66Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus66" name="Bus66">
        <port xsi:type="esdl:InPort" id="Bus66Phase1In" carrier="Electricity" connectedTo="line120Phase1Out" name="Bus66Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus66Phase2In" carrier="Electricity" connectedTo="line120Phase2Out" name="Bus66Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus66Phase3In" carrier="Electricity" connectedTo="line120Phase3Out" name="Bus66Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus66Phase1Out" carrier="Electricity" name="Bus66Phase1Out" connectedTo="line121Phase1In line122Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus66Phase2Out" carrier="Electricity" name="Bus66Phase2Out" connectedTo="line121Phase2In line122Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus66Phase3Out" carrier="Electricity" name="Bus66Phase3Out" connectedTo="line121Phase3In line122Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line121" length="34.0" assetType="gplkh_4_6_curm_4_2p5" name="line121">
        <port xsi:type="esdl:InPort" id="line121Phase1In" carrier="Electricity" connectedTo="Bus66Phase1Out" name="line121Phase1In"/>
        <port xsi:type="esdl:InPort" id="line121Phase2In" carrier="Electricity" connectedTo="Bus66Phase2Out" name="line121Phase2In"/>
        <port xsi:type="esdl:InPort" id="line121Phase3In" carrier="Electricity" connectedTo="Bus66Phase3Out" name="line121Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line121Phase1Out" carrier="Electricity" name="line121Phase1Out" connectedTo="Bus6601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line121Phase2Out" carrier="Electricity" name="line121Phase2Out" connectedTo="Bus6601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line121Phase3Out" carrier="Electricity" name="line121Phase3Out" connectedTo="Bus6601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6601" name="Bus6601">
        <port xsi:type="esdl:InPort" id="Bus6601Phase1In" carrier="Electricity" connectedTo="line121Phase1Out" name="Bus6601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6601Phase2In" carrier="Electricity" connectedTo="line121Phase2Out" name="Bus6601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6601Phase3In" carrier="Electricity" connectedTo="line121Phase3Out"  name="Bus6601Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6601Phase1Out" carrier="Electricity" id="Bus6601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6601Phase2Out" carrier="Electricity" id="Bus6601Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6601Phase3Out" carrier="Electricity" name="Bus6601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line122" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line122">
        <port xsi:type="esdl:InPort" id="line122Phase1In" carrier="Electricity" connectedTo="Bus66Phase1Out" name="line122Phase1In"/>
        <port xsi:type="esdl:InPort" id="line122Phase2In" carrier="Electricity" connectedTo="Bus66Phase2Out" name="line122Phase2In"/>
        <port xsi:type="esdl:InPort" id="line122Phase3In" carrier="Electricity" connectedTo="Bus66Phase3Out" name="line122Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line122Phase1Out" carrier="Electricity" name="line122Phase1Out" connectedTo="Bus67Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line122Phase2Out" carrier="Electricity" name="line122Phase2Out" connectedTo="Bus67Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line122Phase3Out" carrier="Electricity" name="line122Phase3Out" connectedTo="Bus67Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus67" name="Bus67">
        <port xsi:type="esdl:InPort" id="Bus67Phase1In" carrier="Electricity" connectedTo="line122Phase1Out" name="Bus67Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus67Phase2In" carrier="Electricity" connectedTo="line122Phase2Out" name="Bus67Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus67Phase3In" carrier="Electricity" connectedTo="line122Phase3Out" name="Bus67Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus67Phase1Out" carrier="Electricity" name="Bus67Phase1Out" connectedTo="line123Phase1In line124Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus67Phase2Out" carrier="Electricity" name="Bus67Phase2Out" connectedTo="line123Phase2In line124Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus67Phase3Out" carrier="Electricity" name="Bus67Phase3Out" connectedTo="line123Phase3In line124Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line123" length="12.0" assetType="gplkh_4_6_curm_4_2p5" name="line123">
        <port xsi:type="esdl:InPort" id="line123Phase1In" carrier="Electricity" connectedTo="Bus67Phase1Out" name="line123Phase1In"/>
        <port xsi:type="esdl:InPort" id="line123Phase2In" carrier="Electricity" connectedTo="Bus67Phase2Out" name="line123Phase2In"/>
        <port xsi:type="esdl:InPort" id="line123Phase3In" carrier="Electricity" connectedTo="Bus67Phase3Out" name="line123Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line123Phase1Out" carrier="Electricity" name="line123Phase1Out" connectedTo="Bus6701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line123Phase2Out" carrier="Electricity" name="line123Phase2Out" connectedTo="Bus6701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line123Phase3Out" carrier="Electricity" name="line123Phase3Out" connectedTo="Bus6701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6701" name="Bus6701">
        <port xsi:type="esdl:InPort" id="Bus6701Phase1In" carrier="Electricity" connectedTo="line123Phase1Out" name="Bus6701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6701Phase2In" carrier="Electricity" connectedTo="line123Phase2Out" name="Bus6701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6701Phase3In" carrier="Electricity" connectedTo="line123Phase3Out"  name="Bus6701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6701Phase1Out" carrier="Electricity" id="Bus6701Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6701Phase2Out" carrier="Electricity" id="Bus6701Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6701Phase3Out" carrier="Electricity" name="Bus6701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line124" length="10.0" assetType="gplkh_4_50_cusvm_4_6" name="line124">
        <port xsi:type="esdl:InPort" id="line124Phase1In" carrier="Electricity" connectedTo="Bus67Phase1Out" name="line124Phase1In"/>
        <port xsi:type="esdl:InPort" id="line124Phase2In" carrier="Electricity" connectedTo="Bus67Phase2Out" name="line124Phase2In"/>
        <port xsi:type="esdl:InPort" id="line124Phase3In" carrier="Electricity" connectedTo="Bus67Phase3Out" name="line124Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line124Phase1Out" carrier="Electricity" name="line124Phase1Out" connectedTo="Bus68Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line124Phase2Out" carrier="Electricity" name="line124Phase2Out" connectedTo="Bus68Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line124Phase3Out" carrier="Electricity" name="line124Phase3Out" connectedTo="Bus68Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus68" name="Bus68">
        <port xsi:type="esdl:InPort" id="Bus68Phase1In" carrier="Electricity" connectedTo="line124Phase1Out" name="Bus68Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus68Phase2In" carrier="Electricity" connectedTo="line124Phase2Out" name="Bus68Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus68Phase3In" carrier="Electricity" connectedTo="line124Phase3Out" name="Bus68Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus68Phase1Out" carrier="Electricity" name="Bus68Phase1Out" connectedTo="line125Phase1In line126Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus68Phase2Out" carrier="Electricity" name="Bus68Phase2Out" connectedTo="line125Phase2In line126Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus68Phase3Out" carrier="Electricity" name="Bus68Phase3Out" connectedTo="line125Phase3In line126Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line125" length="31.0" assetType="gplkh_4_6_curm_4_2p5" name="line125">
        <port xsi:type="esdl:InPort" id="line125Phase1In" carrier="Electricity" connectedTo="Bus68Phase1Out" name="line125Phase1In"/>
        <port xsi:type="esdl:InPort" id="line125Phase2In" carrier="Electricity" connectedTo="Bus68Phase2Out" name="line125Phase2In"/>
        <port xsi:type="esdl:InPort" id="line125Phase3In" carrier="Electricity" connectedTo="Bus68Phase3Out" name="line125Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line125Phase1Out" carrier="Electricity" name="line125Phase1Out" connectedTo="Bus6801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line125Phase2Out" carrier="Electricity" name="line125Phase2Out" connectedTo="Bus6801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line125Phase3Out" carrier="Electricity" name="line125Phase3Out" connectedTo="Bus6801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6801" name="Bus6801">
        <port xsi:type="esdl:InPort" id="Bus6801Phase1In" carrier="Electricity" connectedTo="line125Phase1Out" name="Bus6801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6801Phase2In" carrier="Electricity" connectedTo="line125Phase2Out" name="Bus6801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6801Phase3In" carrier="Electricity" connectedTo="line125Phase3Out"  name="Bus6801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6801Phase1Out" carrier="Electricity" id="Bus6801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6801Phase2Out" carrier="Electricity" id="Bus6801Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6801Phase3Out" carrier="Electricity" name="Bus6801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line126" length="10.0" assetType="gplkh_4_50_cusvm_4_6" name="line126">
        <port xsi:type="esdl:InPort" id="line126Phase1In" carrier="Electricity" connectedTo="Bus68Phase1Out" name="line126Phase1In"/>
        <port xsi:type="esdl:InPort" id="line126Phase2In" carrier="Electricity" connectedTo="Bus68Phase2Out" name="line126Phase2In"/>
        <port xsi:type="esdl:InPort" id="line126Phase3In" carrier="Electricity" connectedTo="Bus68Phase3Out" name="line126Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line126Phase1Out" carrier="Electricity" name="line126Phase1Out" connectedTo="Bus69Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line126Phase2Out" carrier="Electricity" name="line126Phase2Out" connectedTo="Bus69Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line126Phase3Out" carrier="Electricity" name="line126Phase3Out" connectedTo="Bus69Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus69" name="Bus69">
        <port xsi:type="esdl:InPort" id="Bus69Phase1In" carrier="Electricity" connectedTo="line126Phase1Out" name="Bus69Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus69Phase2In" carrier="Electricity" connectedTo="line126Phase2Out" name="Bus69Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus69Phase3In" carrier="Electricity" connectedTo="line126Phase3Out" name="Bus69Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus69Phase1Out" carrier="Electricity" name="Bus69Phase1Out" connectedTo="line127Phase1In line134Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus69Phase2Out" carrier="Electricity" name="Bus69Phase2Out" connectedTo="line127Phase2In line134Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus69Phase3Out" carrier="Electricity" name="Bus69Phase3Out" connectedTo="line127Phase3In line134Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line127" length="15.0" assetType="gplkh_4_6_curm_4_2p5" name="line127">
        <port xsi:type="esdl:InPort" id="line127Phase1In" carrier="Electricity" connectedTo="Bus69Phase1Out" name="line127Phase1In"/>
        <port xsi:type="esdl:InPort" id="line127Phase2In" carrier="Electricity" connectedTo="Bus69Phase2Out" name="line127Phase2In"/>
        <port xsi:type="esdl:InPort" id="line127Phase3In" carrier="Electricity" connectedTo="Bus69Phase3Out" name="line127Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line127Phase1Out" carrier="Electricity" name="line127Phase1Out" connectedTo="Bus6901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line127Phase2Out" carrier="Electricity" name="line127Phase2Out" connectedTo="Bus6901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line127Phase3Out" carrier="Electricity" name="line127Phase3Out" connectedTo="Bus6901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus6901" name="Bus6901">
        <port xsi:type="esdl:InPort" id="Bus6901Phase1In" carrier="Electricity" connectedTo="line127Phase1Out" name="Bus6901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus6901Phase2In" carrier="Electricity" connectedTo="line127Phase2Out"  name="Bus6901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus6901Phase3In" carrier="Electricity" connectedTo="line127Phase3Out" name="Bus6901Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus6901Phase1Out" carrier="Electricity" id="Bus6901Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus6901Phase2Out" carrier="Electricity" name="Bus6901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus6901Phase3Out" carrier="Electricity" id="Bus6901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line128" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line128">
        <port xsi:type="esdl:InPort" id="line128Phase1In" carrier="Electricity" connectedTo="Bus57Phase1Out" name="line128Phase1In"/>
        <port xsi:type="esdl:InPort" id="line128Phase2In" carrier="Electricity" connectedTo="Bus57Phase2Out" name="line128Phase2In"/>
        <port xsi:type="esdl:InPort" id="line128Phase3In" carrier="Electricity" connectedTo="Bus57Phase3Out" name="line128Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line128Phase1Out" carrier="Electricity" name="line128Phase1Out" connectedTo="Bus70Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line128Phase2Out" carrier="Electricity" name="line128Phase2Out" connectedTo="Bus70Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line128Phase3Out" carrier="Electricity" name="line128Phase3Out" connectedTo="Bus70Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus70" name="Bus70">
        <port xsi:type="esdl:InPort" id="Bus70Phase1In" carrier="Electricity" connectedTo="line128Phase1Out" name="Bus70Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus70Phase2In" carrier="Electricity" connectedTo="line128Phase2Out" name="Bus70Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus70Phase3In" carrier="Electricity" connectedTo="line128Phase3Out" name="Bus70Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus70Phase1Out" carrier="Electricity" name="Bus70Phase1Out" connectedTo="line129Phase1In line140Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus70Phase2Out" carrier="Electricity" name="Bus70Phase2Out" connectedTo="line129Phase2In line140Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus70Phase3Out" carrier="Electricity" name="Bus70Phase3Out" connectedTo="line129Phase3In line140Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line129" length="21.0" assetType="gplkh_4_6_curm_4_2p5" name="line129">
        <port xsi:type="esdl:InPort" id="line129Phase1In" carrier="Electricity" connectedTo="Bus70Phase1Out" name="line129Phase1In"/>
        <port xsi:type="esdl:InPort" id="line129Phase2In" carrier="Electricity" connectedTo="Bus70Phase2Out" name="line129Phase2In"/>
        <port xsi:type="esdl:InPort" id="line129Phase3In" carrier="Electricity" connectedTo="Bus70Phase3Out" name="line129Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line129Phase1Out" carrier="Electricity" name="line129Phase1Out" connectedTo="Bus7001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line129Phase2Out" carrier="Electricity" name="line129Phase2Out" connectedTo="Bus7001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line129Phase3Out" carrier="Electricity" name="line129Phase3Out" connectedTo="Bus7001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7001" name="Bus7001">
        <port xsi:type="esdl:InPort" id="Bus7001Phase1In" carrier="Electricity" connectedTo="line129Phase1Out" name="Bus7001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7001Phase2In" carrier="Electricity" connectedTo="line129Phase2Out" name="Bus7001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7001Phase3In" carrier="Electricity" connectedTo="line129Phase3Out"  name="Bus7001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus7001Phase1Out" carrier="Electricity" id="Bus7001Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7001Phase2Out" carrier="Electricity" id="Bus7001Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus7001Phase3Out" carrier="Electricity" name="Bus7001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line130" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line130">
        <port xsi:type="esdl:InPort" id="line130Phase1In" carrier="Electricity" connectedTo="Bus62Phase1Out" name="line130Phase1In"/>
        <port xsi:type="esdl:InPort" id="line130Phase2In" carrier="Electricity" connectedTo="Bus62Phase2Out" name="line130Phase2In"/>
        <port xsi:type="esdl:InPort" id="line130Phase3In" carrier="Electricity" connectedTo="Bus62Phase3Out" name="line130Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line130Phase1Out" carrier="Electricity" name="line130Phase1Out" connectedTo="Bus71Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line130Phase2Out" carrier="Electricity" name="line130Phase2Out" connectedTo="Bus71Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line130Phase3Out" carrier="Electricity" name="line130Phase3Out" connectedTo="Bus71Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus71" name="Bus71">
        <port xsi:type="esdl:InPort" id="Bus71Phase1In" carrier="Electricity" connectedTo="line130Phase1Out" name="Bus71Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus71Phase2In" carrier="Electricity" connectedTo="line130Phase2Out" name="Bus71Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus71Phase3In" carrier="Electricity" connectedTo="line130Phase3Out" name="Bus71Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus71Phase1Out" carrier="Electricity" name="Bus71Phase1Out" connectedTo="line131Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus71Phase2Out" carrier="Electricity" name="Bus71Phase2Out" connectedTo="line131Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus71Phase3Out" carrier="Electricity" name="Bus71Phase3Out" connectedTo="line131Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line131" length="22.0" assetType="gplkh_4_6_curm_4_2p5" name="line131">
        <port xsi:type="esdl:InPort" id="line131Phase1In" carrier="Electricity" connectedTo="Bus71Phase1Out" name="line131Phase1In"/>
        <port xsi:type="esdl:InPort" id="line131Phase2In" carrier="Electricity" connectedTo="Bus71Phase2Out" name="line131Phase2In"/>
        <port xsi:type="esdl:InPort" id="line131Phase3In" carrier="Electricity" connectedTo="Bus71Phase3Out" name="line131Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line131Phase1Out" carrier="Electricity" name="line131Phase1Out" connectedTo="Bus7101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line131Phase2Out" carrier="Electricity" name="line131Phase2Out" connectedTo="Bus7101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line131Phase3Out" carrier="Electricity" name="line131Phase3Out" connectedTo="Bus7101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7101" name="Bus7101">
        <port xsi:type="esdl:InPort" id="Bus7101Phase1In" carrier="Electricity" connectedTo="line131Phase1Out" name="Bus7101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7101Phase2In" carrier="Electricity" connectedTo="line131Phase2Out"  name="Bus7101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7101Phase3In" carrier="Electricity" connectedTo="line131Phase3Out" name="Bus7101Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus7101Phase1Out" carrier="Electricity" id="Bus7101Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus7101Phase2Out" carrier="Electricity" name="Bus7101Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7101Phase3Out" carrier="Electricity" id="Bus7101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line132" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line132">
        <port xsi:type="esdl:InPort" id="line132Phase1In" carrier="Electricity" connectedTo="Bus58Phase1Out" name="line132Phase1In"/>
        <port xsi:type="esdl:InPort" id="line132Phase2In" carrier="Electricity" connectedTo="Bus58Phase2Out" name="line132Phase2In"/>
        <port xsi:type="esdl:InPort" id="line132Phase3In" carrier="Electricity" connectedTo="Bus58Phase3Out" name="line132Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line132Phase1Out" carrier="Electricity" name="line132Phase1Out" connectedTo="Bus72Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line132Phase2Out" carrier="Electricity" name="line132Phase2Out" connectedTo="Bus72Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line132Phase3Out" carrier="Electricity" name="line132Phase3Out" connectedTo="Bus72Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus72" name="Bus72">
        <port xsi:type="esdl:InPort" id="Bus72Phase1In" carrier="Electricity" connectedTo="line132Phase1Out" name="Bus72Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus72Phase2In" carrier="Electricity" connectedTo="line132Phase2Out" name="Bus72Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus72Phase3In" carrier="Electricity" connectedTo="line132Phase3Out" name="Bus72Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus72Phase1Out" carrier="Electricity" name="Bus72Phase1Out" connectedTo="line133Phase1In line148Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus72Phase2Out" carrier="Electricity" name="Bus72Phase2Out" connectedTo="line133Phase2In line148Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus72Phase3Out" carrier="Electricity" name="Bus72Phase3Out" connectedTo="line133Phase3In line148Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line133" length="37.0" assetType="gplkh_4_6_curm_4_2p5" name="line133">
        <port xsi:type="esdl:InPort" id="line133Phase1In" carrier="Electricity" connectedTo="Bus72Phase1Out" name="line133Phase1In"/>
        <port xsi:type="esdl:InPort" id="line133Phase2In" carrier="Electricity" connectedTo="Bus72Phase2Out" name="line133Phase2In"/>
        <port xsi:type="esdl:InPort" id="line133Phase3In" carrier="Electricity" connectedTo="Bus72Phase3Out" name="line133Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line133Phase1Out" carrier="Electricity" name="line133Phase1Out" connectedTo="Bus7201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line133Phase2Out" carrier="Electricity" name="line133Phase2Out" connectedTo="Bus7201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line133Phase3Out" carrier="Electricity" name="line133Phase3Out" connectedTo="Bus7201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7201" name="Bus7201">
        <port xsi:type="esdl:InPort" id="Bus7201Phase1In" carrier="Electricity" connectedTo="line133Phase1Out"  name="Bus7201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7201Phase2In" carrier="Electricity" connectedTo="line133Phase2Out" name="Bus7201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7201Phase3In" carrier="Electricity" connectedTo="line133Phase3Out" name="Bus7201Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus7201Phase1Out" carrier="Electricity" name="Bus7201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7201Phase2Out" carrier="Electricity" id="Bus7201Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7201Phase3Out" carrier="Electricity" id="Bus7201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line134" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line134">
        <port xsi:type="esdl:InPort" id="line134Phase1In" carrier="Electricity" connectedTo="Bus69Phase1Out" name="line134Phase1In"/>
        <port xsi:type="esdl:InPort" id="line134Phase2In" carrier="Electricity" connectedTo="Bus69Phase2Out" name="line134Phase2In"/>
        <port xsi:type="esdl:InPort" id="line134Phase3In" carrier="Electricity" connectedTo="Bus69Phase3Out" name="line134Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line134Phase1Out" carrier="Electricity" name="line134Phase1Out" connectedTo="Bus73Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line134Phase2Out" carrier="Electricity" name="line134Phase2Out" connectedTo="Bus73Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line134Phase3Out" carrier="Electricity" name="line134Phase3Out" connectedTo="Bus73Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus73" name="Bus73">
        <port xsi:type="esdl:InPort" id="Bus73Phase1In" carrier="Electricity" connectedTo="line134Phase1Out" name="Bus73Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus73Phase2In" carrier="Electricity" connectedTo="line134Phase2Out" name="Bus73Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus73Phase3In" carrier="Electricity" connectedTo="line134Phase3Out" name="Bus73Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus73Phase1Out" carrier="Electricity" name="Bus73Phase1Out" connectedTo="line135Phase1In line150Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus73Phase2Out" carrier="Electricity" name="Bus73Phase2Out" connectedTo="line135Phase2In line150Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus73Phase3Out" carrier="Electricity" name="Bus73Phase3Out" connectedTo="line135Phase3In line150Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line135" length="21.0" assetType="gplkh_4_6_curm_4_2p5" name="line135">
        <port xsi:type="esdl:InPort" id="line135Phase1In" carrier="Electricity" connectedTo="Bus73Phase1Out" name="line135Phase1In"/>
        <port xsi:type="esdl:InPort" id="line135Phase2In" carrier="Electricity" connectedTo="Bus73Phase2Out" name="line135Phase2In"/>
        <port xsi:type="esdl:InPort" id="line135Phase3In" carrier="Electricity" connectedTo="Bus73Phase3Out" name="line135Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line135Phase1Out" carrier="Electricity" name="line135Phase1Out" connectedTo="Bus7301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line135Phase2Out" carrier="Electricity" name="line135Phase2Out" connectedTo="Bus7301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line135Phase3Out" carrier="Electricity" name="line135Phase3Out" connectedTo="Bus7301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7301" name="Bus7301">
        <port xsi:type="esdl:InPort" id="Bus7301Phase1In" carrier="Electricity" connectedTo="line135Phase1Out" name="Bus7301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7301Phase2In" carrier="Electricity" connectedTo="line135Phase2Out"  name="Bus7301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7301Phase3In" carrier="Electricity" connectedTo="line135Phase3Out" name="Bus7301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus7301Phase1Out" carrier="Electricity" id="Bus7301Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus7301Phase2Out" carrier="Electricity" name="Bus7301Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7301Phase3Out" carrier="Electricity" id="Bus7301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line136" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line136">
        <port xsi:type="esdl:InPort" id="line136Phase1In" carrier="Electricity" connectedTo="Bus50Phase1Out" name="line136Phase1In"/>
        <port xsi:type="esdl:InPort" id="line136Phase2In" carrier="Electricity" connectedTo="Bus50Phase2Out" name="line136Phase2In"/>
        <port xsi:type="esdl:InPort" id="line136Phase3In" carrier="Electricity" connectedTo="Bus50Phase3Out" name="line136Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line136Phase1Out" carrier="Electricity" name="line136Phase1Out" connectedTo="Bus74Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line136Phase2Out" carrier="Electricity" name="line136Phase2Out" connectedTo="Bus74Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line136Phase3Out" carrier="Electricity" name="line136Phase3Out" connectedTo="Bus74Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus74" name="Bus74">
        <port xsi:type="esdl:InPort" id="Bus74Phase1In" carrier="Electricity" connectedTo="line136Phase1Out" name="Bus74Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus74Phase2In" carrier="Electricity" connectedTo="line136Phase2Out" name="Bus74Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus74Phase3In" carrier="Electricity" connectedTo="line136Phase3Out" name="Bus74Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus74Phase1Out" carrier="Electricity" name="Bus74Phase1Out" connectedTo="line137Phase1In line144Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus74Phase2Out" carrier="Electricity" name="Bus74Phase2Out" connectedTo="line137Phase2In line144Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus74Phase3Out" carrier="Electricity" name="Bus74Phase3Out" connectedTo="line137Phase3In line144Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line137" length="38.0" assetType="gplkh_4_10_curm_4_2p5" name="line137">
        <port xsi:type="esdl:InPort" id="line137Phase1In" carrier="Electricity" connectedTo="Bus74Phase1Out" name="line137Phase1In"/>
        <port xsi:type="esdl:InPort" id="line137Phase2In" carrier="Electricity" connectedTo="Bus74Phase2Out" name="line137Phase2In"/>
        <port xsi:type="esdl:InPort" id="line137Phase3In" carrier="Electricity" connectedTo="Bus74Phase3Out" name="line137Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line137Phase1Out" carrier="Electricity" name="line137Phase1Out" connectedTo="Bus7401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line137Phase2Out" carrier="Electricity" name="line137Phase2Out" connectedTo="Bus7401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line137Phase3Out" carrier="Electricity" name="line137Phase3Out" connectedTo="Bus7401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7401" name="Bus7401">
        <port xsi:type="esdl:InPort" id="Bus7401Phase1In" carrier="Electricity" connectedTo="line137Phase1Out"  name="Bus7401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7401Phase2In" carrier="Electricity" connectedTo="line137Phase2Out" name="Bus7401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7401Phase3In" carrier="Electricity" connectedTo="line137Phase3Out" name="Bus7401Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus7401Phase1Out" carrier="Electricity" name="Bus7401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7401Phase2Out" carrier="Electricity" id="Bus7401Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7401Phase3Out" carrier="Electricity" id="Bus7401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line138" length="8.0" assetType="gplkh_4_50_cusvm_4_6" name="line138">
        <port xsi:type="esdl:InPort" id="line138Phase1In" carrier="Electricity" connectedTo="Bus60Phase1Out" name="line138Phase1In"/>
        <port xsi:type="esdl:InPort" id="line138Phase2In" carrier="Electricity" connectedTo="Bus60Phase2Out" name="line138Phase2In"/>
        <port xsi:type="esdl:InPort" id="line138Phase3In" carrier="Electricity" connectedTo="Bus60Phase3Out" name="line138Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line138Phase1Out" carrier="Electricity" name="line138Phase1Out" connectedTo="Bus75Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line138Phase2Out" carrier="Electricity" name="line138Phase2Out" connectedTo="Bus75Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line138Phase3Out" carrier="Electricity" name="line138Phase3Out" connectedTo="Bus75Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus75" name="Bus75">
        <port xsi:type="esdl:InPort" id="Bus75Phase1In" carrier="Electricity" connectedTo="line138Phase1Out" name="Bus75Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus75Phase2In" carrier="Electricity" connectedTo="line138Phase2Out" name="Bus75Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus75Phase3In" carrier="Electricity" connectedTo="line138Phase3Out" name="Bus75Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus75Phase1Out" carrier="Electricity" name="Bus75Phase1Out" connectedTo="line139Phase1In line166Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus75Phase2Out" carrier="Electricity" name="Bus75Phase2Out" connectedTo="line139Phase2In line166Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus75Phase3Out" carrier="Electricity" name="Bus75Phase3Out" connectedTo="line139Phase3In line166Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line139" length="29.0" assetType="gplkh_4_10_curm_4_2p5" name="line139">
        <port xsi:type="esdl:InPort" id="line139Phase1In" carrier="Electricity" connectedTo="Bus75Phase1Out" name="line139Phase1In"/>
        <port xsi:type="esdl:InPort" id="line139Phase2In" carrier="Electricity" connectedTo="Bus75Phase2Out" name="line139Phase2In"/>
        <port xsi:type="esdl:InPort" id="line139Phase3In" carrier="Electricity" connectedTo="Bus75Phase3Out" name="line139Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line139Phase1Out" carrier="Electricity" name="line139Phase1Out" connectedTo="Bus7501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line139Phase2Out" carrier="Electricity" name="line139Phase2Out" connectedTo="Bus7501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line139Phase3Out" carrier="Electricity" name="line139Phase3Out" connectedTo="Bus7501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7501" name="Bus7501">
        <port xsi:type="esdl:InPort" id="Bus7501Phase1In" carrier="Electricity" connectedTo="line139Phase1Out" name="Bus7501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7501Phase2In" carrier="Electricity" connectedTo="line139Phase2Out" name="Bus7501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7501Phase3In" carrier="Electricity" connectedTo="line139Phase3Out"  name="Bus7501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus7501Phase1Out" carrier="Electricity" id="Bus7501Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7501Phase2Out" carrier="Electricity" id="Bus7501Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus7501Phase3Out" carrier="Electricity" name="Bus7501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line140" length="4.0" assetType="gplkh_4_50_cusvm_4_6" name="line140">
        <port xsi:type="esdl:InPort" id="line140Phase1In" carrier="Electricity" connectedTo="Bus70Phase1Out" name="line140Phase1In"/>
        <port xsi:type="esdl:InPort" id="line140Phase2In" carrier="Electricity" connectedTo="Bus70Phase2Out" name="line140Phase2In"/>
        <port xsi:type="esdl:InPort" id="line140Phase3In" carrier="Electricity" connectedTo="Bus70Phase3Out" name="line140Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line140Phase1Out" carrier="Electricity" name="line140Phase1Out" connectedTo="Bus76Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line140Phase2Out" carrier="Electricity" name="line140Phase2Out" connectedTo="Bus76Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line140Phase3Out" carrier="Electricity" name="line140Phase3Out" connectedTo="Bus76Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus76" name="Bus76">
        <port xsi:type="esdl:InPort" id="Bus76Phase1In" carrier="Electricity" connectedTo="line140Phase1Out" name="Bus76Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus76Phase2In" carrier="Electricity" connectedTo="line140Phase2Out" name="Bus76Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus76Phase3In" carrier="Electricity" connectedTo="line140Phase3Out" name="Bus76Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus76Phase1Out" carrier="Electricity" name="Bus76Phase1Out" connectedTo="line141Phase1In line146Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus76Phase2Out" carrier="Electricity" name="Bus76Phase2Out" connectedTo="line141Phase2In line146Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus76Phase3Out" carrier="Electricity" name="Bus76Phase3Out" connectedTo="line141Phase3In line146Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line141" length="28.0" assetType="gplkh_4_10_curm_4_2p5" name="line141">
        <port xsi:type="esdl:InPort" id="line141Phase1In" carrier="Electricity" connectedTo="Bus76Phase1Out" name="line141Phase1In"/>
        <port xsi:type="esdl:InPort" id="line141Phase2In" carrier="Electricity" connectedTo="Bus76Phase2Out" name="line141Phase2In"/>
        <port xsi:type="esdl:InPort" id="line141Phase3In" carrier="Electricity" connectedTo="Bus76Phase3Out" name="line141Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line141Phase1Out" carrier="Electricity" name="line141Phase1Out" connectedTo="Bus7601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line141Phase2Out" carrier="Electricity" name="line141Phase2Out" connectedTo="Bus7601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line141Phase3Out" carrier="Electricity" name="line141Phase3Out" connectedTo="Bus7601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7601" name="Bus7601">
        <port xsi:type="esdl:InPort" id="Bus7601Phase1In" carrier="Electricity" connectedTo="line141Phase1Out"  name="Bus7601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7601Phase2In" carrier="Electricity" connectedTo="line141Phase2Out" name="Bus7601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7601Phase3In" carrier="Electricity" connectedTo="line141Phase3Out" name="Bus7601Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus7601Phase1Out" carrier="Electricity" name="Bus7601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7601Phase2Out" carrier="Electricity" id="Bus7601Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7601Phase3Out" carrier="Electricity" id="Bus7601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line142" length="7.0" assetType="gplkh_4_50_cusvm_4_6" name="line142">
        <port xsi:type="esdl:InPort" id="line142Phase1In" carrier="Electricity" connectedTo="Bus3Phase1Out" name="line142Phase1In"/>
        <port xsi:type="esdl:InPort" id="line142Phase2In" carrier="Electricity" connectedTo="Bus3Phase2Out" name="line142Phase2In"/>
        <port xsi:type="esdl:InPort" id="line142Phase3In" carrier="Electricity" connectedTo="Bus3Phase3Out" name="line142Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line142Phase1Out" carrier="Electricity" name="line142Phase1Out" connectedTo="Bus77Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line142Phase2Out" carrier="Electricity" name="line142Phase2Out" connectedTo="Bus77Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line142Phase3Out" carrier="Electricity" name="line142Phase3Out" connectedTo="Bus77Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus77" name="Bus77">
        <port xsi:type="esdl:InPort" id="Bus77Phase1In" carrier="Electricity" connectedTo="line142Phase1Out" name="Bus77Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus77Phase2In" carrier="Electricity" connectedTo="line142Phase2Out" name="Bus77Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus77Phase3In" carrier="Electricity" connectedTo="line142Phase3Out" name="Bus77Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus77Phase1Out" carrier="Electricity" name="Bus77Phase1Out" connectedTo="line143Phase1In line170Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus77Phase2Out" carrier="Electricity" name="Bus77Phase2Out" connectedTo="line143Phase2In line170Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus77Phase3Out" carrier="Electricity" name="Bus77Phase3Out" connectedTo="line143Phase3In line170Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line143" length="25.0" assetType="gplkh_4_10_curm_4_2p5" name="line143">
        <port xsi:type="esdl:InPort" id="line143Phase1In" carrier="Electricity" connectedTo="Bus77Phase1Out" name="line143Phase1In"/>
        <port xsi:type="esdl:InPort" id="line143Phase2In" carrier="Electricity" connectedTo="Bus77Phase2Out" name="line143Phase2In"/>
        <port xsi:type="esdl:InPort" id="line143Phase3In" carrier="Electricity" connectedTo="Bus77Phase3Out" name="line143Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line143Phase1Out" carrier="Electricity" name="line143Phase1Out" connectedTo="Bus7701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line143Phase2Out" carrier="Electricity" name="line143Phase2Out" connectedTo="Bus7701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line143Phase3Out" carrier="Electricity" name="line143Phase3Out" connectedTo="Bus7701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7701" name="Bus7701">
        <port xsi:type="esdl:InPort" id="Bus7701Phase1In" carrier="Electricity" connectedTo="line143Phase1Out" name="Bus7701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7701Phase2In" carrier="Electricity" connectedTo="line143Phase2Out"  name="Bus7701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7701Phase3In" carrier="Electricity" connectedTo="line143Phase3Out" name="Bus7701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus7701Phase1Out" carrier="Electricity" id="Bus7701Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus7701Phase2Out" carrier="Electricity" name="Bus7701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7701Phase3Out" carrier="Electricity" id="Bus7701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line144" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line144">
        <port xsi:type="esdl:InPort" id="line144Phase1In" carrier="Electricity" connectedTo="Bus74Phase1Out" name="line144Phase1In"/>
        <port xsi:type="esdl:InPort" id="line144Phase2In" carrier="Electricity" connectedTo="Bus74Phase2Out" name="line144Phase2In"/>
        <port xsi:type="esdl:InPort" id="line144Phase3In" carrier="Electricity" connectedTo="Bus74Phase3Out" name="line144Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line144Phase1Out" carrier="Electricity" name="line144Phase1Out" connectedTo="Bus78Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line144Phase2Out" carrier="Electricity" name="line144Phase2Out" connectedTo="Bus78Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line144Phase3Out" carrier="Electricity" name="line144Phase3Out" connectedTo="Bus78Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus78" name="Bus78">
        <port xsi:type="esdl:InPort" id="Bus78Phase1In" carrier="Electricity" connectedTo="line144Phase1Out" name="Bus78Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus78Phase2In" carrier="Electricity" connectedTo="line144Phase2Out" name="Bus78Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus78Phase3In" carrier="Electricity" connectedTo="line144Phase3Out" name="Bus78Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus78Phase1Out" carrier="Electricity" name="Bus78Phase1Out" connectedTo="line145Phase1In line152Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus78Phase2Out" carrier="Electricity" name="Bus78Phase2Out" connectedTo="line145Phase2In line152Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus78Phase3Out" carrier="Electricity" name="Bus78Phase3Out" connectedTo="line145Phase3In line152Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line145" length="6.0" assetType="gplkh_4_10_curm_4_2p5" name="line145">
        <port xsi:type="esdl:InPort" id="line145Phase1In" carrier="Electricity" connectedTo="Bus78Phase1Out" name="line145Phase1In"/>
        <port xsi:type="esdl:InPort" id="line145Phase2In" carrier="Electricity" connectedTo="Bus78Phase2Out" name="line145Phase2In"/>
        <port xsi:type="esdl:InPort" id="line145Phase3In" carrier="Electricity" connectedTo="Bus78Phase3Out" name="line145Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line145Phase1Out" carrier="Electricity" name="line145Phase1Out" connectedTo="Bus7801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line145Phase2Out" carrier="Electricity" name="line145Phase2Out" connectedTo="Bus7801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line145Phase3Out" carrier="Electricity" name="line145Phase3Out" connectedTo="Bus7801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7801" name="Bus7801">
        <port xsi:type="esdl:InPort" id="Bus7801Phase1In" carrier="Electricity" connectedTo="line145Phase1Out" name="Bus7801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7801Phase2In" carrier="Electricity" connectedTo="line145Phase2Out"  name="Bus7801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7801Phase3In" carrier="Electricity" connectedTo="line145Phase3Out" name="Bus7801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus7801Phase1Out" carrier="Electricity" id="Bus7801Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus7801Phase2Out" carrier="Electricity" name="Bus7801Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7801Phase3Out" carrier="Electricity" id="Bus7801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line146" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line146">
        <port xsi:type="esdl:InPort" id="line146Phase1In" carrier="Electricity" connectedTo="Bus76Phase1Out" name="line146Phase1In"/>
        <port xsi:type="esdl:InPort" id="line146Phase2In" carrier="Electricity" connectedTo="Bus76Phase2Out" name="line146Phase2In"/>
        <port xsi:type="esdl:InPort" id="line146Phase3In" carrier="Electricity" connectedTo="Bus76Phase3Out" name="line146Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line146Phase1Out" carrier="Electricity" name="line146Phase1Out" connectedTo="Bus79Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line146Phase2Out" carrier="Electricity" name="line146Phase2Out" connectedTo="Bus79Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line146Phase3Out" carrier="Electricity" name="line146Phase3Out" connectedTo="Bus79Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus79" name="Bus79">
        <port xsi:type="esdl:InPort" id="Bus79Phase1In" carrier="Electricity" connectedTo="line146Phase1Out" name="Bus79Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus79Phase2In" carrier="Electricity" connectedTo="line146Phase2Out" name="Bus79Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus79Phase3In" carrier="Electricity" connectedTo="line146Phase3Out" name="Bus79Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus79Phase1Out" carrier="Electricity" name="Bus79Phase1Out" connectedTo="line147Phase1In line168Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus79Phase2Out" carrier="Electricity" name="Bus79Phase2Out" connectedTo="line147Phase2In line168Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus79Phase3Out" carrier="Electricity" name="Bus79Phase3Out" connectedTo="line147Phase3In line168Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line147" length="2.0" assetType="gplkh_4_10_curm_4_2p5" name="line147">
        <port xsi:type="esdl:InPort" id="line147Phase1In" carrier="Electricity" connectedTo="Bus79Phase1Out" name="line147Phase1In"/>
        <port xsi:type="esdl:InPort" id="line147Phase2In" carrier="Electricity" connectedTo="Bus79Phase2Out" name="line147Phase2In"/>
        <port xsi:type="esdl:InPort" id="line147Phase3In" carrier="Electricity" connectedTo="Bus79Phase3Out" name="line147Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line147Phase1Out" carrier="Electricity" name="line147Phase1Out" connectedTo="Bus7901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line147Phase2Out" carrier="Electricity" name="line147Phase2Out" connectedTo="Bus7901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line147Phase3Out" carrier="Electricity" name="line147Phase3Out" connectedTo="Bus7901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7901" name="Bus7901">
        <port xsi:type="esdl:InPort" id="Bus7901Phase1In" carrier="Electricity" connectedTo="line147Phase1Out"  name="Bus7901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus7901Phase2In" carrier="Electricity" connectedTo="line147Phase2Out" name="Bus7901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus7901Phase3In" carrier="Electricity" connectedTo="line147Phase3Out" name="Bus7901Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus7901Phase1Out" carrier="Electricity" name="Bus7901Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7901Phase2Out" carrier="Electricity" id="Bus7901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus7901Phase3Out" carrier="Electricity" id="Bus7901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line148" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line148">
        <port xsi:type="esdl:InPort" id="line148Phase1In" carrier="Electricity" connectedTo="Bus72Phase1Out" name="line148Phase1In"/>
        <port xsi:type="esdl:InPort" id="line148Phase2In" carrier="Electricity" connectedTo="Bus72Phase2Out" name="line148Phase2In"/>
        <port xsi:type="esdl:InPort" id="line148Phase3In" carrier="Electricity" connectedTo="Bus72Phase3Out" name="line148Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line148Phase1Out" carrier="Electricity" name="line148Phase1Out" connectedTo="Bus80Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line148Phase2Out" carrier="Electricity" name="line148Phase2Out" connectedTo="Bus80Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line148Phase3Out" carrier="Electricity" name="line148Phase3Out" connectedTo="Bus80Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus80" name="Bus80">
        <port xsi:type="esdl:InPort" id="Bus80Phase1In" carrier="Electricity" connectedTo="line148Phase1Out" name="Bus80Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus80Phase2In" carrier="Electricity" connectedTo="line148Phase2Out" name="Bus80Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus80Phase3In" carrier="Electricity" connectedTo="line148Phase3Out" name="Bus80Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus80Phase1Out" carrier="Electricity" name="Bus80Phase1Out" connectedTo="line149Phase1In line178Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus80Phase2Out" carrier="Electricity" name="Bus80Phase2Out" connectedTo="line149Phase2In line178Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus80Phase3Out" carrier="Electricity" name="Bus80Phase3Out" connectedTo="line149Phase3In line178Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line149" length="11.0" assetType="gplkh_4_10_curm_4_2p5" name="line149">
        <port xsi:type="esdl:InPort" id="line149Phase1In" carrier="Electricity" connectedTo="Bus80Phase1Out" name="line149Phase1In"/>
        <port xsi:type="esdl:InPort" id="line149Phase2In" carrier="Electricity" connectedTo="Bus80Phase2Out" name="line149Phase2In"/>
        <port xsi:type="esdl:InPort" id="line149Phase3In" carrier="Electricity" connectedTo="Bus80Phase3Out" name="line149Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line149Phase1Out" carrier="Electricity" name="line149Phase1Out" connectedTo="Bus8001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line149Phase2Out" carrier="Electricity" name="line149Phase2Out" connectedTo="Bus8001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line149Phase3Out" carrier="Electricity" name="line149Phase3Out" connectedTo="Bus8001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8001" name="Bus8001">
        <port xsi:type="esdl:InPort" id="Bus8001Phase1In" carrier="Electricity" connectedTo="line149Phase1Out" name="Bus8001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8001Phase2In" carrier="Electricity" connectedTo="line149Phase2Out"  name="Bus8001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8001Phase3In" carrier="Electricity" connectedTo="line149Phase3Out" name="Bus8001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus8001Phase1Out" carrier="Electricity" id="Bus8001Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus8001Phase2Out" carrier="Electricity" name="Bus8001Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8001Phase3Out" carrier="Electricity" id="Bus8001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line150" length="6.0" assetType="gplkh_4_50_cusvm_4_6" name="line150">
        <port xsi:type="esdl:InPort" id="line150Phase1In" carrier="Electricity" connectedTo="Bus73Phase1Out" name="line150Phase1In"/>
        <port xsi:type="esdl:InPort" id="line150Phase2In" carrier="Electricity" connectedTo="Bus73Phase2Out" name="line150Phase2In"/>
        <port xsi:type="esdl:InPort" id="line150Phase3In" carrier="Electricity" connectedTo="Bus73Phase3Out" name="line150Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line150Phase1Out" carrier="Electricity" name="line150Phase1Out" connectedTo="Bus81Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line150Phase2Out" carrier="Electricity" name="line150Phase2Out" connectedTo="Bus81Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line150Phase3Out" carrier="Electricity" name="line150Phase3Out" connectedTo="Bus81Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus81" name="Bus81">
        <port xsi:type="esdl:InPort" id="Bus81Phase1In" carrier="Electricity" connectedTo="line150Phase1Out" name="Bus81Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus81Phase2In" carrier="Electricity" connectedTo="line150Phase2Out" name="Bus81Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus81Phase3In" carrier="Electricity" connectedTo="line150Phase3Out" name="Bus81Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus81Phase1Out" carrier="Electricity" name="Bus81Phase1Out" connectedTo="line151Phase1In line156Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus81Phase2Out" carrier="Electricity" name="Bus81Phase2Out" connectedTo="line151Phase2In line156Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus81Phase3Out" carrier="Electricity" name="Bus81Phase3Out" connectedTo="line151Phase3In line156Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line151" length="34.0" assetType="gplkh_4_10_curm_4_2p5" name="line151">
        <port xsi:type="esdl:InPort" id="line151Phase1In" carrier="Electricity" connectedTo="Bus81Phase1Out" name="line151Phase1In"/>
        <port xsi:type="esdl:InPort" id="line151Phase2In" carrier="Electricity" connectedTo="Bus81Phase2Out" name="line151Phase2In"/>
        <port xsi:type="esdl:InPort" id="line151Phase3In" carrier="Electricity" connectedTo="Bus81Phase3Out" name="line151Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line151Phase1Out" carrier="Electricity" name="line151Phase1Out" connectedTo="Bus8101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line151Phase2Out" carrier="Electricity" name="line151Phase2Out" connectedTo="Bus8101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line151Phase3Out" carrier="Electricity" name="line151Phase3Out" connectedTo="Bus8101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8101" name="Bus8101">
        <port xsi:type="esdl:InPort" id="Bus8101Phase1In" carrier="Electricity" connectedTo="line151Phase1Out"  name="Bus8101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8101Phase2In" carrier="Electricity" connectedTo="line151Phase2Out" name="Bus8101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8101Phase3In" carrier="Electricity" connectedTo="line151Phase3Out" name="Bus8101Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus8101Phase1Out" carrier="Electricity" name="Bus8101Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8101Phase2Out" carrier="Electricity" id="Bus8101Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8101Phase3Out" carrier="Electricity" id="Bus8101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line152" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line152">
        <port xsi:type="esdl:InPort" id="line152Phase1In" carrier="Electricity" connectedTo="Bus78Phase1Out" name="line152Phase1In"/>
        <port xsi:type="esdl:InPort" id="line152Phase2In" carrier="Electricity" connectedTo="Bus78Phase2Out" name="line152Phase2In"/>
        <port xsi:type="esdl:InPort" id="line152Phase3In" carrier="Electricity" connectedTo="Bus78Phase3Out" name="line152Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line152Phase1Out" carrier="Electricity" name="line152Phase1Out" connectedTo="Bus82Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line152Phase2Out" carrier="Electricity" name="line152Phase2Out" connectedTo="Bus82Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line152Phase3Out" carrier="Electricity" name="line152Phase3Out" connectedTo="Bus82Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus82" name="Bus82">
        <port xsi:type="esdl:InPort" id="Bus82Phase1In" carrier="Electricity" connectedTo="line152Phase1Out" name="Bus82Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus82Phase2In" carrier="Electricity" connectedTo="line152Phase2Out" name="Bus82Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus82Phase3In" carrier="Electricity" connectedTo="line152Phase3Out" name="Bus82Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus82Phase1Out" carrier="Electricity" name="Bus82Phase1Out" connectedTo="line153Phase1In line154Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus82Phase2Out" carrier="Electricity" name="Bus82Phase2Out" connectedTo="line153Phase2In line154Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus82Phase3Out" carrier="Electricity" name="Bus82Phase3Out" connectedTo="line153Phase3In line154Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line153" length="35.0" assetType="gplkh_4_10_curm_4_2p5" name="line153">
        <port xsi:type="esdl:InPort" id="line153Phase1In" carrier="Electricity" connectedTo="Bus82Phase1Out" name="line153Phase1In"/>
        <port xsi:type="esdl:InPort" id="line153Phase2In" carrier="Electricity" connectedTo="Bus82Phase2Out" name="line153Phase2In"/>
        <port xsi:type="esdl:InPort" id="line153Phase3In" carrier="Electricity" connectedTo="Bus82Phase3Out" name="line153Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line153Phase1Out" carrier="Electricity" name="line153Phase1Out" connectedTo="Bus8201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line153Phase2Out" carrier="Electricity" name="line153Phase2Out" connectedTo="Bus8201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line153Phase3Out" carrier="Electricity" name="line153Phase3Out" connectedTo="Bus8201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8201" name="Bus8201">
        <port xsi:type="esdl:InPort" id="Bus8201Phase1In" carrier="Electricity" connectedTo="line153Phase1Out" name="Bus8201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8201Phase2In" carrier="Electricity" connectedTo="line153Phase2Out" name="Bus8201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8201Phase3In" carrier="Electricity" connectedTo="line153Phase3Out"  name="Bus8201Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus8201Phase1Out" carrier="Electricity" id="Bus8201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8201Phase2Out" carrier="Electricity" id="Bus8201Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus8201Phase3Out" carrier="Electricity" name="Bus8201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line154" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line154">
        <port xsi:type="esdl:InPort" id="line154Phase1In" carrier="Electricity" connectedTo="Bus82Phase1Out" name="line154Phase1In"/>
        <port xsi:type="esdl:InPort" id="line154Phase2In" carrier="Electricity" connectedTo="Bus82Phase2Out" name="line154Phase2In"/>
        <port xsi:type="esdl:InPort" id="line154Phase3In" carrier="Electricity" connectedTo="Bus82Phase3Out" name="line154Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line154Phase1Out" carrier="Electricity" name="line154Phase1Out" connectedTo="Bus83Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line154Phase2Out" carrier="Electricity" name="line154Phase2Out" connectedTo="Bus83Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line154Phase3Out" carrier="Electricity" name="line154Phase3Out" connectedTo="Bus83Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus83" name="Bus83">
        <port xsi:type="esdl:InPort" id="Bus83Phase1In" carrier="Electricity" connectedTo="line154Phase1Out" name="Bus83Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus83Phase2In" carrier="Electricity" connectedTo="line154Phase2Out" name="Bus83Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus83Phase3In" carrier="Electricity" connectedTo="line154Phase3Out" name="Bus83Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus83Phase1Out" carrier="Electricity" name="Bus83Phase1Out" connectedTo="line155Phase1In line158Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus83Phase2Out" carrier="Electricity" name="Bus83Phase2Out" connectedTo="line155Phase2In line158Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus83Phase3Out" carrier="Electricity" name="Bus83Phase3Out" connectedTo="line155Phase3In line158Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line155" length="31.0" assetType="gplkh_4_10_curm_4_2p5" name="line155">
        <port xsi:type="esdl:InPort" id="line155Phase1In" carrier="Electricity" connectedTo="Bus83Phase1Out" name="line155Phase1In"/>
        <port xsi:type="esdl:InPort" id="line155Phase2In" carrier="Electricity" connectedTo="Bus83Phase2Out" name="line155Phase2In"/>
        <port xsi:type="esdl:InPort" id="line155Phase3In" carrier="Electricity" connectedTo="Bus83Phase3Out" name="line155Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line155Phase1Out" carrier="Electricity" name="line155Phase1Out" connectedTo="Bus8301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line155Phase2Out" carrier="Electricity" name="line155Phase2Out" connectedTo="Bus8301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line155Phase3Out" carrier="Electricity" name="line155Phase3Out" connectedTo="Bus8301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8301" name="Bus8301">
        <port xsi:type="esdl:InPort" id="Bus8301Phase1In" carrier="Electricity" connectedTo="line155Phase1Out" name="Bus8301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8301Phase2In" carrier="Electricity" connectedTo="line155Phase2Out" name="Bus8301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8301Phase3In" carrier="Electricity" connectedTo="line155Phase3Out"  name="Bus8301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus8301Phase1Out" carrier="Electricity" id="Bus8301Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8301Phase2Out" carrier="Electricity" id="Bus8301Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus8301Phase3Out" carrier="Electricity" name="Bus8301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line156" length="10.0" assetType="gplkh_4_50_cusvm_4_6" name="line156">
        <port xsi:type="esdl:InPort" id="line156Phase1In" carrier="Electricity" connectedTo="Bus81Phase1Out" name="line156Phase1In"/>
        <port xsi:type="esdl:InPort" id="line156Phase2In" carrier="Electricity" connectedTo="Bus81Phase2Out" name="line156Phase2In"/>
        <port xsi:type="esdl:InPort" id="line156Phase3In" carrier="Electricity" connectedTo="Bus81Phase3Out" name="line156Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line156Phase1Out" carrier="Electricity" name="line156Phase1Out" connectedTo="Bus84Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line156Phase2Out" carrier="Electricity" name="line156Phase2Out" connectedTo="Bus84Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line156Phase3Out" carrier="Electricity" name="line156Phase3Out" connectedTo="Bus84Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus84" name="Bus84">
        <port xsi:type="esdl:InPort" id="Bus84Phase1In" carrier="Electricity" connectedTo="line156Phase1Out" name="Bus84Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus84Phase2In" carrier="Electricity" connectedTo="line156Phase2Out" name="Bus84Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus84Phase3In" carrier="Electricity" connectedTo="line156Phase3Out" name="Bus84Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus84Phase1Out" carrier="Electricity" name="Bus84Phase1Out" connectedTo="line157Phase1In line160Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus84Phase2Out" carrier="Electricity" name="Bus84Phase2Out" connectedTo="line157Phase2In line160Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus84Phase3Out" carrier="Electricity" name="Bus84Phase3Out" connectedTo="line157Phase3In line160Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line157" length="13.0" assetType="gplkh_4_10_curm_4_2p5" name="line157">
        <port xsi:type="esdl:InPort" id="line157Phase1In" carrier="Electricity" connectedTo="Bus84Phase1Out" name="line157Phase1In"/>
        <port xsi:type="esdl:InPort" id="line157Phase2In" carrier="Electricity" connectedTo="Bus84Phase2Out" name="line157Phase2In"/>
        <port xsi:type="esdl:InPort" id="line157Phase3In" carrier="Electricity" connectedTo="Bus84Phase3Out" name="line157Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line157Phase1Out" carrier="Electricity" name="line157Phase1Out" connectedTo="Bus8401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line157Phase2Out" carrier="Electricity" name="line157Phase2Out" connectedTo="Bus8401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line157Phase3Out" carrier="Electricity" name="line157Phase3Out" connectedTo="Bus8401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8401" name="Bus8401">
        <port xsi:type="esdl:InPort" id="Bus8401Phase1In" carrier="Electricity" connectedTo="line157Phase1Out" name="Bus8401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8401Phase2In" carrier="Electricity" connectedTo="line157Phase2Out" name="Bus8401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8401Phase3In" carrier="Electricity" connectedTo="line157Phase3Out"  name="Bus8401Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus8401Phase1Out" carrier="Electricity" id="Bus8401Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8401Phase2Out" carrier="Electricity" id="Bus8401Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus8401Phase3Out" carrier="Electricity" name="Bus8401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line158" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line158">
        <port xsi:type="esdl:InPort" id="line158Phase1In" carrier="Electricity" connectedTo="Bus83Phase1Out" name="line158Phase1In"/>
        <port xsi:type="esdl:InPort" id="line158Phase2In" carrier="Electricity" connectedTo="Bus83Phase2Out" name="line158Phase2In"/>
        <port xsi:type="esdl:InPort" id="line158Phase3In" carrier="Electricity" connectedTo="Bus83Phase3Out" name="line158Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line158Phase1Out" carrier="Electricity" name="line158Phase1Out" connectedTo="Bus85Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line158Phase2Out" carrier="Electricity" name="line158Phase2Out" connectedTo="Bus85Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line158Phase3Out" carrier="Electricity" name="line158Phase3Out" connectedTo="Bus85Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus85" name="Bus85">
        <port xsi:type="esdl:InPort" id="Bus85Phase1In" carrier="Electricity" connectedTo="line158Phase1Out" name="Bus85Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus85Phase2In" carrier="Electricity" connectedTo="line158Phase2Out" name="Bus85Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus85Phase3In" carrier="Electricity" connectedTo="line158Phase3Out" name="Bus85Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus85Phase1Out" carrier="Electricity" name="Bus85Phase1Out" connectedTo="line159Phase1In line162Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus85Phase2Out" carrier="Electricity" name="Bus85Phase2Out" connectedTo="line159Phase2In line162Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus85Phase3Out" carrier="Electricity" name="Bus85Phase3Out" connectedTo="line159Phase3In line162Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line159" length="24.0" assetType="gplkh_4_10_curm_4_2p5" name="line159">
        <port xsi:type="esdl:InPort" id="line159Phase1In" carrier="Electricity" connectedTo="Bus85Phase1Out" name="line159Phase1In"/>
        <port xsi:type="esdl:InPort" id="line159Phase2In" carrier="Electricity" connectedTo="Bus85Phase2Out" name="line159Phase2In"/>
        <port xsi:type="esdl:InPort" id="line159Phase3In" carrier="Electricity" connectedTo="Bus85Phase3Out" name="line159Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line159Phase1Out" carrier="Electricity" name="line159Phase1Out" connectedTo="Bus8501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line159Phase2Out" carrier="Electricity" name="line159Phase2Out" connectedTo="Bus8501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line159Phase3Out" carrier="Electricity" name="line159Phase3Out" connectedTo="Bus8501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8501" name="Bus8501">
        <port xsi:type="esdl:InPort" id="Bus8501Phase1In" carrier="Electricity" connectedTo="line159Phase1Out"  name="Bus8501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8501Phase2In" carrier="Electricity" connectedTo="line159Phase2Out" name="Bus8501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8501Phase3In" carrier="Electricity" connectedTo="line159Phase3Out" name="Bus8501Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus8501Phase1Out" carrier="Electricity" name="Bus8501Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8501Phase2Out" carrier="Electricity" id="Bus8501Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8501Phase3Out" carrier="Electricity" id="Bus8501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line160" length="10.0" assetType="gplkh_4_50_cusvm_4_6" name="line160">
        <port xsi:type="esdl:InPort" id="line160Phase1In" carrier="Electricity" connectedTo="Bus84Phase1Out" name="line160Phase1In"/>
        <port xsi:type="esdl:InPort" id="line160Phase2In" carrier="Electricity" connectedTo="Bus84Phase2Out" name="line160Phase2In"/>
        <port xsi:type="esdl:InPort" id="line160Phase3In" carrier="Electricity" connectedTo="Bus84Phase3Out" name="line160Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line160Phase1Out" carrier="Electricity" name="line160Phase1Out" connectedTo="Bus86Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line160Phase2Out" carrier="Electricity" name="line160Phase2Out" connectedTo="Bus86Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line160Phase3Out" carrier="Electricity" name="line160Phase3Out" connectedTo="Bus86Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus86" name="Bus86">
        <port xsi:type="esdl:InPort" id="Bus86Phase1In" carrier="Electricity" connectedTo="line160Phase1Out" name="Bus86Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus86Phase2In" carrier="Electricity" connectedTo="line160Phase2Out" name="Bus86Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus86Phase3In" carrier="Electricity" connectedTo="line160Phase3Out" name="Bus86Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus86Phase1Out" carrier="Electricity" name="Bus86Phase1Out" connectedTo="line161Phase1In line174Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus86Phase2Out" carrier="Electricity" name="Bus86Phase2Out" connectedTo="line161Phase2In line174Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus86Phase3Out" carrier="Electricity" name="Bus86Phase3Out" connectedTo="line161Phase3In line174Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line161" length="31.0" assetType="gplkh_4_10_curm_4_2p5" name="line161">
        <port xsi:type="esdl:InPort" id="line161Phase1In" carrier="Electricity" connectedTo="Bus86Phase1Out" name="line161Phase1In"/>
        <port xsi:type="esdl:InPort" id="line161Phase2In" carrier="Electricity" connectedTo="Bus86Phase2Out" name="line161Phase2In"/>
        <port xsi:type="esdl:InPort" id="line161Phase3In" carrier="Electricity" connectedTo="Bus86Phase3Out" name="line161Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line161Phase1Out" carrier="Electricity" name="line161Phase1Out" connectedTo="Bus8601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line161Phase2Out" carrier="Electricity" name="line161Phase2Out" connectedTo="Bus8601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line161Phase3Out" carrier="Electricity" name="line161Phase3Out" connectedTo="Bus8601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8601" name="Bus8601">
        <port xsi:type="esdl:InPort" id="Bus8601Phase1In" carrier="Electricity" connectedTo="line161Phase1Out" name="Bus8601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8601Phase2In" carrier="Electricity" connectedTo="line161Phase2Out" name="Bus8601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8601Phase3In" carrier="Electricity" connectedTo="line161Phase3Out"  name="Bus8601Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus8601Phase1Out" carrier="Electricity" id="Bus8601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8601Phase2Out" carrier="Electricity" id="Bus8601Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus8601Phase3Out" carrier="Electricity" name="Bus8601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line162" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line162">
        <port xsi:type="esdl:InPort" id="line162Phase1In" carrier="Electricity" connectedTo="Bus85Phase1Out" name="line162Phase1In"/>
        <port xsi:type="esdl:InPort" id="line162Phase2In" carrier="Electricity" connectedTo="Bus85Phase2Out" name="line162Phase2In"/>
        <port xsi:type="esdl:InPort" id="line162Phase3In" carrier="Electricity" connectedTo="Bus85Phase3Out" name="line162Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line162Phase1Out" carrier="Electricity" name="line162Phase1Out" connectedTo="Bus87Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line162Phase2Out" carrier="Electricity" name="line162Phase2Out" connectedTo="Bus87Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line162Phase3Out" carrier="Electricity" name="line162Phase3Out" connectedTo="Bus87Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus87" name="Bus87">
        <port xsi:type="esdl:InPort" id="Bus87Phase1In" carrier="Electricity" connectedTo="line162Phase1Out" name="Bus87Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus87Phase2In" carrier="Electricity" connectedTo="line162Phase2Out" name="Bus87Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus87Phase3In" carrier="Electricity" connectedTo="line162Phase3Out" name="Bus87Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus87Phase1Out" carrier="Electricity" name="Bus87Phase1Out" connectedTo="line163Phase1In line164Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus87Phase2Out" carrier="Electricity" name="Bus87Phase2Out" connectedTo="line163Phase2In line164Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus87Phase3Out" carrier="Electricity" name="Bus87Phase3Out" connectedTo="line163Phase3In line164Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line163" length="24.0" assetType="gplkh_4_10_curm_4_2p5" name="line163">
        <port xsi:type="esdl:InPort" id="line163Phase1In" carrier="Electricity" connectedTo="Bus87Phase1Out" name="line163Phase1In"/>
        <port xsi:type="esdl:InPort" id="line163Phase2In" carrier="Electricity" connectedTo="Bus87Phase2Out" name="line163Phase2In"/>
        <port xsi:type="esdl:InPort" id="line163Phase3In" carrier="Electricity" connectedTo="Bus87Phase3Out" name="line163Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line163Phase1Out" carrier="Electricity" name="line163Phase1Out" connectedTo="Bus8701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line163Phase2Out" carrier="Electricity" name="line163Phase2Out" connectedTo="Bus8701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line163Phase3Out" carrier="Electricity" name="line163Phase3Out" connectedTo="Bus8701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8701" name="Bus8701">
        <port xsi:type="esdl:InPort" id="Bus8701Phase1In" carrier="Electricity" connectedTo="line163Phase1Out"  name="Bus8701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8701Phase2In" carrier="Electricity" connectedTo="line163Phase2Out" name="Bus8701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8701Phase3In" carrier="Electricity" connectedTo="line163Phase3Out" name="Bus8701Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus8701Phase1Out" carrier="Electricity" name="Bus8701Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8701Phase2Out" carrier="Electricity" id="Bus8701Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8701Phase3Out" carrier="Electricity" id="Bus8701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line164" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line164">
        <port xsi:type="esdl:InPort" id="line164Phase1In" carrier="Electricity" connectedTo="Bus87Phase1Out" name="line164Phase1In"/>
        <port xsi:type="esdl:InPort" id="line164Phase2In" carrier="Electricity" connectedTo="Bus87Phase2Out" name="line164Phase2In"/>
        <port xsi:type="esdl:InPort" id="line164Phase3In" carrier="Electricity" connectedTo="Bus87Phase3Out" name="line164Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line164Phase1Out" carrier="Electricity" name="line164Phase1Out" connectedTo="Bus88Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line164Phase2Out" carrier="Electricity" name="line164Phase2Out" connectedTo="Bus88Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line164Phase3Out" carrier="Electricity" name="line164Phase3Out" connectedTo="Bus88Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus88" name="Bus88">
        <port xsi:type="esdl:InPort" id="Bus88Phase1In" carrier="Electricity" connectedTo="line164Phase1Out" name="Bus88Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus88Phase2In" carrier="Electricity" connectedTo="line164Phase2Out" name="Bus88Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus88Phase3In" carrier="Electricity" connectedTo="line164Phase3Out" name="Bus88Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus88Phase1Out" carrier="Electricity" name="Bus88Phase1Out" connectedTo="line165Phase1In line182Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus88Phase2Out" carrier="Electricity" name="Bus88Phase2Out" connectedTo="line165Phase2In line182Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus88Phase3Out" carrier="Electricity" name="Bus88Phase3Out" connectedTo="line165Phase3In line182Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line165" length="17.0" assetType="gplkh_4_10_curm_4_2p5" name="line165">
        <port xsi:type="esdl:InPort" id="line165Phase1In" carrier="Electricity" connectedTo="Bus88Phase1Out" name="line165Phase1In"/>
        <port xsi:type="esdl:InPort" id="line165Phase2In" carrier="Electricity" connectedTo="Bus88Phase2Out" name="line165Phase2In"/>
        <port xsi:type="esdl:InPort" id="line165Phase3In" carrier="Electricity" connectedTo="Bus88Phase3Out" name="line165Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line165Phase1Out" carrier="Electricity" name="line165Phase1Out" connectedTo="Bus8801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line165Phase2Out" carrier="Electricity" name="line165Phase2Out" connectedTo="Bus8801Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line165Phase3Out" carrier="Electricity" name="line165Phase3Out" connectedTo="Bus8801Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8801" name="Bus8801">
        <port xsi:type="esdl:InPort" id="Bus8801Phase1In" carrier="Electricity" connectedTo="line165Phase1Out" name="Bus8801Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8801Phase2In" carrier="Electricity" connectedTo="line165Phase2Out" name="Bus8801Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8801Phase3In" carrier="Electricity" connectedTo="line165Phase3Out"  name="Bus8801Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus8801Phase1Out" carrier="Electricity" id="Bus8801Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8801Phase2Out" carrier="Electricity" id="Bus8801Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus8801Phase3Out" carrier="Electricity" name="Bus8801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line166" length="2.0" assetType="gplkh_4_50_cusvm_4_6" name="line166">
        <port xsi:type="esdl:InPort" id="line166Phase1In" carrier="Electricity" connectedTo="Bus75Phase1Out" name="line166Phase1In"/>
        <port xsi:type="esdl:InPort" id="line166Phase2In" carrier="Electricity" connectedTo="Bus75Phase2Out" name="line166Phase2In"/>
        <port xsi:type="esdl:InPort" id="line166Phase3In" carrier="Electricity" connectedTo="Bus75Phase3Out" name="line166Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line166Phase1Out" carrier="Electricity" name="line166Phase1Out" connectedTo="Bus89Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line166Phase2Out" carrier="Electricity" name="line166Phase2Out" connectedTo="Bus89Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line166Phase3Out" carrier="Electricity" name="line166Phase3Out" connectedTo="Bus89Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus89" name="Bus89">
        <port xsi:type="esdl:InPort" id="Bus89Phase1In" carrier="Electricity" connectedTo="line166Phase1Out" name="Bus89Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus89Phase2In" carrier="Electricity" connectedTo="line166Phase2Out" name="Bus89Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus89Phase3In" carrier="Electricity" connectedTo="line166Phase3Out" name="Bus89Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus89Phase1Out" carrier="Electricity" name="Bus89Phase1Out" connectedTo="line167Phase1In line176Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus89Phase2Out" carrier="Electricity" name="Bus89Phase2Out" connectedTo="line167Phase2In line176Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus89Phase3Out" carrier="Electricity" name="Bus89Phase3Out" connectedTo="line167Phase3In line176Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line167" length="6.0" assetType="gplkh_4_10_curm_4_2p5" name="line167">
        <port xsi:type="esdl:InPort" id="line167Phase1In" carrier="Electricity" connectedTo="Bus89Phase1Out" name="line167Phase1In"/>
        <port xsi:type="esdl:InPort" id="line167Phase2In" carrier="Electricity" connectedTo="Bus89Phase2Out" name="line167Phase2In"/>
        <port xsi:type="esdl:InPort" id="line167Phase3In" carrier="Electricity" connectedTo="Bus89Phase3Out" name="line167Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line167Phase1Out" carrier="Electricity" name="line167Phase1Out" connectedTo="Bus8901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line167Phase2Out" carrier="Electricity" name="line167Phase2Out" connectedTo="Bus8901Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line167Phase3Out" carrier="Electricity" name="line167Phase3Out" connectedTo="Bus8901Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus8901" name="Bus8901">
        <port xsi:type="esdl:InPort" id="Bus8901Phase1In" carrier="Electricity" connectedTo="line167Phase1Out"  name="Bus8901Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus8901Phase2In" carrier="Electricity" connectedTo="line167Phase2Out" name="Bus8901Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus8901Phase3In" carrier="Electricity" connectedTo="line167Phase3Out" name="Bus8901Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus8901Phase1Out" carrier="Electricity" name="Bus8901Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8901Phase2Out" carrier="Electricity" id="Bus8901Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus8901Phase3Out" carrier="Electricity" id="Bus8901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line168" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line168">
        <port xsi:type="esdl:InPort" id="line168Phase1In" carrier="Electricity" connectedTo="Bus79Phase1Out" name="line168Phase1In"/>
        <port xsi:type="esdl:InPort" id="line168Phase2In" carrier="Electricity" connectedTo="Bus79Phase2Out" name="line168Phase2In"/>
        <port xsi:type="esdl:InPort" id="line168Phase3In" carrier="Electricity" connectedTo="Bus79Phase3Out" name="line168Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line168Phase1Out" carrier="Electricity" name="line168Phase1Out" connectedTo="Bus90Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line168Phase2Out" carrier="Electricity" name="line168Phase2Out" connectedTo="Bus90Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line168Phase3Out" carrier="Electricity" name="line168Phase3Out" connectedTo="Bus90Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus90" name="Bus90">
        <port xsi:type="esdl:InPort" id="Bus90Phase1In" carrier="Electricity" connectedTo="line168Phase1Out" name="Bus90Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus90Phase2In" carrier="Electricity" connectedTo="line168Phase2Out" name="Bus90Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus90Phase3In" carrier="Electricity" connectedTo="line168Phase3Out" name="Bus90Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus90Phase1Out" carrier="Electricity" name="Bus90Phase1Out" connectedTo="line169Phase1In line180Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus90Phase2Out" carrier="Electricity" name="Bus90Phase2Out" connectedTo="line169Phase2In line180Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus90Phase3Out" carrier="Electricity" name="Bus90Phase3Out" connectedTo="line169Phase3In line180Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line169" length="40.0" assetType="gplkh_4_10_curm_4_2p5" name="line169">
        <port xsi:type="esdl:InPort" id="line169Phase1In" carrier="Electricity" connectedTo="Bus90Phase1Out" name="line169Phase1In"/>
        <port xsi:type="esdl:InPort" id="line169Phase2In" carrier="Electricity" connectedTo="Bus90Phase2Out" name="line169Phase2In"/>
        <port xsi:type="esdl:InPort" id="line169Phase3In" carrier="Electricity" connectedTo="Bus90Phase3Out" name="line169Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line169Phase1Out" carrier="Electricity" name="line169Phase1Out" connectedTo="Bus9001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line169Phase2Out" carrier="Electricity" name="line169Phase2Out" connectedTo="Bus9001Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line169Phase3Out" carrier="Electricity" name="line169Phase3Out" connectedTo="Bus9001Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9001" name="Bus9001">
        <port xsi:type="esdl:InPort" id="Bus9001Phase1In" carrier="Electricity" connectedTo="line169Phase1Out" name="Bus9001Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9001Phase2In" carrier="Electricity" connectedTo="line169Phase2Out"  name="Bus9001Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9001Phase3In" carrier="Electricity" connectedTo="line169Phase3Out" name="Bus9001Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus9001Phase1Out" carrier="Electricity" id="Bus9001Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus9001Phase2Out" carrier="Electricity" name="Bus9001Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9001Phase3Out" carrier="Electricity" id="Bus9001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line170" length="12.0" assetType="gplkh_4_50_cusvm_4_6" name="line170">
        <port xsi:type="esdl:InPort" id="line170Phase1In" carrier="Electricity" connectedTo="Bus77Phase1Out" name="line170Phase1In"/>
        <port xsi:type="esdl:InPort" id="line170Phase2In" carrier="Electricity" connectedTo="Bus77Phase2Out" name="line170Phase2In"/>
        <port xsi:type="esdl:InPort" id="line170Phase3In" carrier="Electricity" connectedTo="Bus77Phase3Out" name="line170Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line170Phase1Out" carrier="Electricity" name="line170Phase1Out" connectedTo="Bus91Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line170Phase2Out" carrier="Electricity" name="line170Phase2Out" connectedTo="Bus91Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line170Phase3Out" carrier="Electricity" name="line170Phase3Out" connectedTo="Bus91Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus91" name="Bus91">
        <port xsi:type="esdl:InPort" id="Bus91Phase1In" carrier="Electricity" connectedTo="line170Phase1Out" name="Bus91Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus91Phase2In" carrier="Electricity" connectedTo="line170Phase2Out" name="Bus91Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus91Phase3In" carrier="Electricity" connectedTo="line170Phase3Out" name="Bus91Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus91Phase1Out" carrier="Electricity" name="Bus91Phase1Out" connectedTo="line171Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus91Phase2Out" carrier="Electricity" name="Bus91Phase2Out" connectedTo="line171Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus91Phase3Out" carrier="Electricity" name="Bus91Phase3Out" connectedTo="line171Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line171" length="19.0" assetType="gplkh_4_10_curm_4_2p5" name="line171">
        <port xsi:type="esdl:InPort" id="line171Phase1In" carrier="Electricity" connectedTo="Bus91Phase1Out" name="line171Phase1In"/>
        <port xsi:type="esdl:InPort" id="line171Phase2In" carrier="Electricity" connectedTo="Bus91Phase2Out" name="line171Phase2In"/>
        <port xsi:type="esdl:InPort" id="line171Phase3In" carrier="Electricity" connectedTo="Bus91Phase3Out" name="line171Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line171Phase1Out" carrier="Electricity" name="line171Phase1Out" connectedTo="Bus9101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line171Phase2Out" carrier="Electricity" name="line171Phase2Out" connectedTo="Bus9101Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line171Phase3Out" carrier="Electricity" name="line171Phase3Out" connectedTo="Bus9101Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9101" name="Bus9101">
        <port xsi:type="esdl:InPort" id="Bus9101Phase1In" carrier="Electricity" connectedTo="line171Phase1Out"  name="Bus9101Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9101Phase2In" carrier="Electricity" connectedTo="line171Phase2Out" name="Bus9101Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9101Phase3In" carrier="Electricity" connectedTo="line171Phase3Out" name="Bus9101Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus9101Phase1Out" carrier="Electricity" name="Bus9101Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9101Phase2Out" carrier="Electricity" id="Bus9101Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9101Phase3Out" carrier="Electricity" id="Bus9101Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line172" length="9.0" assetType="gplkh_4_50_cusvm_4_6" name="line172">
        <port xsi:type="esdl:InPort" id="line172Phase1In" carrier="Electricity" connectedTo="Bus65Phase1Out" name="line172Phase1In"/>
        <port xsi:type="esdl:InPort" id="line172Phase2In" carrier="Electricity" connectedTo="Bus65Phase2Out" name="line172Phase2In"/>
        <port xsi:type="esdl:InPort" id="line172Phase3In" carrier="Electricity" connectedTo="Bus65Phase3Out" name="line172Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line172Phase1Out" carrier="Electricity" name="line172Phase1Out" connectedTo="Bus92Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line172Phase2Out" carrier="Electricity" name="line172Phase2Out" connectedTo="Bus92Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line172Phase3Out" carrier="Electricity" name="line172Phase3Out" connectedTo="Bus92Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus92" name="Bus92">
        <port xsi:type="esdl:InPort" id="Bus92Phase1In" carrier="Electricity" connectedTo="line172Phase1Out" name="Bus92Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus92Phase2In" carrier="Electricity" connectedTo="line172Phase2Out" name="Bus92Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus92Phase3In" carrier="Electricity" connectedTo="line172Phase3Out" name="Bus92Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus92Phase1Out" carrier="Electricity" name="Bus92Phase1Out" connectedTo="line173Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus92Phase2Out" carrier="Electricity" name="Bus92Phase2Out" connectedTo="line173Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus92Phase3Out" carrier="Electricity" name="Bus92Phase3Out" connectedTo="line173Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line173" length="29.0" assetType="gplkh_4_10_curm_4_2p5" name="line173">
        <port xsi:type="esdl:InPort" id="line173Phase1In" carrier="Electricity" connectedTo="Bus92Phase1Out" name="line173Phase1In"/>
        <port xsi:type="esdl:InPort" id="line173Phase2In" carrier="Electricity" connectedTo="Bus92Phase2Out" name="line173Phase2In"/>
        <port xsi:type="esdl:InPort" id="line173Phase3In" carrier="Electricity" connectedTo="Bus92Phase3Out" name="line173Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line173Phase1Out" carrier="Electricity" name="line173Phase1Out" connectedTo="Bus9201Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line173Phase2Out" carrier="Electricity" name="line173Phase2Out" connectedTo="Bus9201Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line173Phase3Out" carrier="Electricity" name="line173Phase3Out" connectedTo="Bus9201Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9201" name="Bus9201">
        <port xsi:type="esdl:InPort" id="Bus9201Phase1In" carrier="Electricity" connectedTo="line173Phase1Out"  name="Bus9201Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9201Phase2In" carrier="Electricity" connectedTo="line173Phase2Out" name="Bus9201Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9201Phase3In" carrier="Electricity" connectedTo="line173Phase3Out" name="Bus9201Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus9201Phase1Out" carrier="Electricity" name="Bus9201Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9201Phase2Out" carrier="Electricity" id="Bus9201Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9201Phase3Out" carrier="Electricity" id="Bus9201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line174" length="5.0" assetType="gplkh_4_50_cusvm_4_6" name="line174">
        <port xsi:type="esdl:InPort" id="line174Phase1In" carrier="Electricity" connectedTo="Bus86Phase1Out" name="line174Phase1In"/>
        <port xsi:type="esdl:InPort" id="line174Phase2In" carrier="Electricity" connectedTo="Bus86Phase2Out" name="line174Phase2In"/>
        <port xsi:type="esdl:InPort" id="line174Phase3In" carrier="Electricity" connectedTo="Bus86Phase3Out" name="line174Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line174Phase1Out" carrier="Electricity" name="line174Phase1Out" connectedTo="Bus93Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line174Phase2Out" carrier="Electricity" name="line174Phase2Out" connectedTo="Bus93Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line174Phase3Out" carrier="Electricity" name="line174Phase3Out" connectedTo="Bus93Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus93" name="Bus93">
        <port xsi:type="esdl:InPort" id="Bus93Phase1In" carrier="Electricity" connectedTo="line174Phase1Out" name="Bus93Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus93Phase2In" carrier="Electricity" connectedTo="line174Phase2Out" name="Bus93Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus93Phase3In" carrier="Electricity" connectedTo="line174Phase3Out" name="Bus93Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus93Phase1Out" carrier="Electricity" name="Bus93Phase1Out" connectedTo="line175Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus93Phase2Out" carrier="Electricity" name="Bus93Phase2Out" connectedTo="line175Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus93Phase3Out" carrier="Electricity" name="Bus93Phase3Out" connectedTo="line175Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line175" length="29.0" assetType="gplkh_4_10_curm_4_2p5" name="line175">
        <port xsi:type="esdl:InPort" id="line175Phase1In" carrier="Electricity" connectedTo="Bus93Phase1Out" name="line175Phase1In"/>
        <port xsi:type="esdl:InPort" id="line175Phase2In" carrier="Electricity" connectedTo="Bus93Phase2Out" name="line175Phase2In"/>
        <port xsi:type="esdl:InPort" id="line175Phase3In" carrier="Electricity" connectedTo="Bus93Phase3Out" name="line175Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line175Phase1Out" carrier="Electricity" name="line175Phase1Out" connectedTo="Bus9301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line175Phase2Out" carrier="Electricity" name="line175Phase2Out" connectedTo="Bus9301Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line175Phase3Out" carrier="Electricity" name="line175Phase3Out" connectedTo="Bus9301Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9301" name="Bus9301">
        <port xsi:type="esdl:InPort" id="Bus9301Phase1In" carrier="Electricity" connectedTo="line175Phase1Out" name="Bus9301Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9301Phase2In" carrier="Electricity" connectedTo="line175Phase2Out" name="Bus9301Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9301Phase3In" carrier="Electricity" connectedTo="line175Phase3Out"  name="Bus9301Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus9301Phase1Out" carrier="Electricity" id="Bus9301Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9301Phase2Out" carrier="Electricity" id="Bus9301Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus9301Phase3Out" carrier="Electricity" name="Bus9301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line176" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line176">
        <port xsi:type="esdl:InPort" id="line176Phase1In" carrier="Electricity" connectedTo="Bus89Phase1Out" name="line176Phase1In"/>
        <port xsi:type="esdl:InPort" id="line176Phase2In" carrier="Electricity" connectedTo="Bus89Phase2Out" name="line176Phase2In"/>
        <port xsi:type="esdl:InPort" id="line176Phase3In" carrier="Electricity" connectedTo="Bus89Phase3Out" name="line176Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line176Phase1Out" carrier="Electricity" name="line176Phase1Out" connectedTo="Bus94Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line176Phase2Out" carrier="Electricity" name="line176Phase2Out" connectedTo="Bus94Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line176Phase3Out" carrier="Electricity" name="line176Phase3Out" connectedTo="Bus94Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus94" name="Bus94">
        <port xsi:type="esdl:InPort" id="Bus94Phase1In" carrier="Electricity" connectedTo="line176Phase1Out" name="Bus94Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus94Phase2In" carrier="Electricity" connectedTo="line176Phase2Out" name="Bus94Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus94Phase3In" carrier="Electricity" connectedTo="line176Phase3Out" name="Bus94Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus94Phase1Out" carrier="Electricity" name="Bus94Phase1Out" connectedTo="line177Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus94Phase2Out" carrier="Electricity" name="Bus94Phase2Out" connectedTo="line177Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus94Phase3Out" carrier="Electricity" name="Bus94Phase3Out" connectedTo="line177Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line177" length="10.0" assetType="gplkh_4_10_curm_4_2p5" name="line177">
        <port xsi:type="esdl:InPort" id="line177Phase1In" carrier="Electricity" connectedTo="Bus94Phase1Out" name="line177Phase1In"/>
        <port xsi:type="esdl:InPort" id="line177Phase2In" carrier="Electricity" connectedTo="Bus94Phase2Out" name="line177Phase2In"/>
        <port xsi:type="esdl:InPort" id="line177Phase3In" carrier="Electricity" connectedTo="Bus94Phase3Out" name="line177Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line177Phase1Out" carrier="Electricity" name="line177Phase1Out" connectedTo="Bus9401Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line177Phase2Out" carrier="Electricity" name="line177Phase2Out" connectedTo="Bus9401Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line177Phase3Out" carrier="Electricity" name="line177Phase3Out" connectedTo="Bus9401Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9401" name="Bus9401">
        <port xsi:type="esdl:InPort" id="Bus9401Phase1In" carrier="Electricity" connectedTo="line177Phase1Out" name="Bus9401Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9401Phase2In" carrier="Electricity" connectedTo="line177Phase2Out"  name="Bus9401Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9401Phase3In" carrier="Electricity" connectedTo="line177Phase3Out" name="Bus9401Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus9401Phase1Out" carrier="Electricity" id="Bus9401Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus9401Phase2Out" carrier="Electricity" name="Bus9401Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9401Phase3Out" carrier="Electricity" id="Bus9401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line178" length="1.0" assetType="gplkh_4_50_cusvm_4_6" name="line178">
        <port xsi:type="esdl:InPort" id="line178Phase1In" carrier="Electricity" connectedTo="Bus80Phase1Out" name="line178Phase1In"/>
        <port xsi:type="esdl:InPort" id="line178Phase2In" carrier="Electricity" connectedTo="Bus80Phase2Out" name="line178Phase2In"/>
        <port xsi:type="esdl:InPort" id="line178Phase3In" carrier="Electricity" connectedTo="Bus80Phase3Out" name="line178Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line178Phase1Out" carrier="Electricity" name="line178Phase1Out" connectedTo="Bus95Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line178Phase2Out" carrier="Electricity" name="line178Phase2Out" connectedTo="Bus95Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line178Phase3Out" carrier="Electricity" name="line178Phase3Out" connectedTo="Bus95Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus95" name="Bus95">
        <port xsi:type="esdl:InPort" id="Bus95Phase1In" carrier="Electricity" connectedTo="line178Phase1Out" name="Bus95Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus95Phase2In" carrier="Electricity" connectedTo="line178Phase2Out" name="Bus95Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus95Phase3In" carrier="Electricity" connectedTo="line178Phase3Out" name="Bus95Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus95Phase1Out" carrier="Electricity" name="Bus95Phase1Out" connectedTo="line179Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus95Phase2Out" carrier="Electricity" name="Bus95Phase2Out" connectedTo="line179Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus95Phase3Out" carrier="Electricity" name="Bus95Phase3Out" connectedTo="line179Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line179" length="31.0" assetType="gplkh_4_10_curm_4_2p5" name="line179">
        <port xsi:type="esdl:InPort" id="line179Phase1In" carrier="Electricity" connectedTo="Bus95Phase1Out" name="line179Phase1In"/>
        <port xsi:type="esdl:InPort" id="line179Phase2In" carrier="Electricity" connectedTo="Bus95Phase2Out" name="line179Phase2In"/>
        <port xsi:type="esdl:InPort" id="line179Phase3In" carrier="Electricity" connectedTo="Bus95Phase3Out" name="line179Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line179Phase1Out" carrier="Electricity" name="line179Phase1Out" connectedTo="Bus9501Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line179Phase2Out" carrier="Electricity" name="line179Phase2Out" connectedTo="Bus9501Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line179Phase3Out" carrier="Electricity" name="line179Phase3Out" connectedTo="Bus9501Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9501" name="Bus9501">
        <port xsi:type="esdl:InPort" id="Bus9501Phase1In" carrier="Electricity" connectedTo="line179Phase1Out" name="Bus9501Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9501Phase2In" carrier="Electricity" connectedTo="line179Phase2Out"  name="Bus9501Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9501Phase3In" carrier="Electricity" connectedTo="line179Phase3Out" name="Bus9501Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus9501Phase1Out" carrier="Electricity" id="Bus9501Phase1Out"/>
        <port xsi:type="esdl:OutPort" id="Bus9501Phase2Out" carrier="Electricity" name="Bus9501Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9501Phase3Out" carrier="Electricity" id="Bus9501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line180" length="14.0" assetType="gplkh_4_50_cusvm_4_6" name="line180">
        <port xsi:type="esdl:InPort" id="line180Phase1In" carrier="Electricity" connectedTo="Bus90Phase1Out" name="line180Phase1In"/>
        <port xsi:type="esdl:InPort" id="line180Phase2In" carrier="Electricity" connectedTo="Bus90Phase2Out" name="line180Phase2In"/>
        <port xsi:type="esdl:InPort" id="line180Phase3In" carrier="Electricity" connectedTo="Bus90Phase3Out" name="line180Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line180Phase1Out" carrier="Electricity" name="line180Phase1Out" connectedTo="Bus96Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line180Phase2Out" carrier="Electricity" name="line180Phase2Out" connectedTo="Bus96Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line180Phase3Out" carrier="Electricity" name="line180Phase3Out" connectedTo="Bus96Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus96" name="Bus96">
        <port xsi:type="esdl:InPort" id="Bus96Phase1In" carrier="Electricity" connectedTo="line180Phase1Out" name="Bus96Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus96Phase2In" carrier="Electricity" connectedTo="line180Phase2Out" name="Bus96Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus96Phase3In" carrier="Electricity" connectedTo="line180Phase3Out" name="Bus96Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus96Phase1Out" carrier="Electricity" name="Bus96Phase1Out" connectedTo="line181Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus96Phase2Out" carrier="Electricity" name="Bus96Phase2Out" connectedTo="line181Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus96Phase3Out" carrier="Electricity" name="Bus96Phase3Out" connectedTo="line181Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line181" length="10.0" assetType="gplkh_4_10_curm_4_2p5" name="line181">
        <port xsi:type="esdl:InPort" id="line181Phase1In" carrier="Electricity" connectedTo="Bus96Phase1Out" name="line181Phase1In"/>
        <port xsi:type="esdl:InPort" id="line181Phase2In" carrier="Electricity" connectedTo="Bus96Phase2Out" name="line181Phase2In"/>
        <port xsi:type="esdl:InPort" id="line181Phase3In" carrier="Electricity" connectedTo="Bus96Phase3Out" name="line181Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line181Phase1Out" carrier="Electricity" name="line181Phase1Out" connectedTo="Bus9601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line181Phase2Out" carrier="Electricity" name="line181Phase2Out" connectedTo="Bus9601Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line181Phase3Out" carrier="Electricity" name="line181Phase3Out" connectedTo="Bus9601Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9601" name="Bus9601">
        <port xsi:type="esdl:InPort" id="Bus9601Phase1In" carrier="Electricity" connectedTo="line181Phase1Out"  name="Bus9601Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9601Phase2In" carrier="Electricity" connectedTo="line181Phase2Out" name="Bus9601Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9601Phase3In" carrier="Electricity" connectedTo="line181Phase3Out" name="Bus9601Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus9601Phase1Out" carrier="Electricity" name="Bus9601Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9601Phase2Out" carrier="Electricity" id="Bus9601Phase2Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9601Phase3Out" carrier="Electricity" id="Bus9601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line182" length="3.0" assetType="gplkh_4_50_cusvm_4_6" name="line182">
        <port xsi:type="esdl:InPort" id="line182Phase1In" carrier="Electricity" connectedTo="Bus88Phase1Out" name="line182Phase1In"/>
        <port xsi:type="esdl:InPort" id="line182Phase2In" carrier="Electricity" connectedTo="Bus88Phase2Out" name="line182Phase2In"/>
        <port xsi:type="esdl:InPort" id="line182Phase3In" carrier="Electricity" connectedTo="Bus88Phase3Out" name="line182Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line182Phase1Out" carrier="Electricity" name="line182Phase1Out" connectedTo="Bus97Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line182Phase2Out" carrier="Electricity" name="line182Phase2Out" connectedTo="Bus97Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line182Phase3Out" carrier="Electricity" name="line182Phase3Out" connectedTo="Bus97Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus97" name="Bus97">
        <port xsi:type="esdl:InPort" id="Bus97Phase1In" carrier="Electricity" connectedTo="line182Phase1Out" name="Bus97Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus97Phase2In" carrier="Electricity" connectedTo="line182Phase2Out" name="Bus97Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus97Phase3In" carrier="Electricity" connectedTo="line182Phase3Out" name="Bus97Phase3In"/>
        <port xsi:type="esdl:OutPort" id="Bus97Phase1Out" carrier="Electricity" name="Bus97Phase1Out" connectedTo="line183Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus97Phase2Out" carrier="Electricity" name="Bus97Phase2Out" connectedTo="line183Phase2In"/>
        <port xsi:type="esdl:OutPort" id="Bus97Phase3Out" carrier="Electricity" name="Bus97Phase3Out" connectedTo="line183Phase3In"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line183" length="25.0" assetType="gplkh_4_10_curm_4_2p5" name="line183">
        <port xsi:type="esdl:InPort" id="line183Phase1In" carrier="Electricity" connectedTo="Bus97Phase1Out" name="line183Phase1In"/>
        <port xsi:type="esdl:InPort" id="line183Phase2In" carrier="Electricity" connectedTo="Bus97Phase2Out" name="line183Phase2In"/>
        <port xsi:type="esdl:InPort" id="line183Phase3In" carrier="Electricity" connectedTo="Bus97Phase3Out" name="line183Phase3In"/>
        <port xsi:type="esdl:OutPort" id="line183Phase1Out" carrier="Electricity" name="line183Phase1Out" connectedTo="Bus9701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line183Phase2Out" carrier="Electricity" name="line183Phase2Out" connectedTo="Bus9701Phase2In"/>
        <port xsi:type="esdl:OutPort" id="line183Phase3Out" carrier="Electricity" name="line183Phase3Out" connectedTo="Bus9701Phase3In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9701" name="Bus9701">
        <port xsi:type="esdl:InPort" id="Bus9701Phase1In" carrier="Electricity" connectedTo="line183Phase1Out" name="Bus9701Phase1In"/>
        <port xsi:type="esdl:InPort" id="Bus9701Phase2In" carrier="Electricity" connectedTo="line183Phase2Out" name="Bus9701Phase2In"/>
        <port xsi:type="esdl:InPort" id="Bus9701Phase3In" carrier="Electricity" connectedTo="line183Phase3Out"  name="Bus9701Phase3In"/>
        <port xsi:type="esdl:OutPort" name="Bus9701Phase1Out" carrier="Electricity" id="Bus9701Phase1Out"/>
        <port xsi:type="esdl:OutPort" name="Bus9701Phase2Out" carrier="Electricity" id="Bus9701Phase2Out"/>
        <port xsi:type="esdl:OutPort" id="Bus9701Phase3Out" carrier="Electricity" name="Bus9701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:Transformer" id="transformer1" capacity="800.0" name="transformer1">
        <port xsi:type="esdl:InPort" id="transformer1In" carrier="Electricity" connectedTo="BussourcebusOut" name="transformer1In"/>
        <port xsi:type="esdl:OutPort" id="transformer1Out" carrier="Electricity" name="transformer1Out" connectedTo="Bus1Phase1In"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bussourcebus" name="Bussourcebus">
        <port xsi:type="esdl:InPort" id="BussourcebusIn" carrier="Electricity" name="BussourcebusIn" connectedTo="GenProducerOut"/>
        <port xsi:type="esdl:OutPort" id="BussourcebusOut" carrier="Electricity" name="BussourcebusOut" connectedTo="transformer1In"/>
      </asset>
	  <asset xsi:type="esdl:GenericProducer" name="Electricity production Provincie" power="1000000000.0" id="GenericElectricityProducer" prodType="FOSSIL">
        <port xsi:type="esdl:OutPort" name="GenProducerOut" connectedTo="BussourcebusIn" carrier="Electricity" id="GenProducerOut"/>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
