<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="dutch_feeder" name="dutch_feeder" esdlVersion="v2207" version="6">
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser5CHP" id="DrivenByDemandUser5CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser9CHP" id="DrivenByDemandUser9CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser13CHP" id="DrivenByDemandUser13CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser15CHP" id="DrivenByDemandUser15CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser17CHP" id="DrivenByDemandUser17CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser19CHP" id="DrivenByDemandUser19CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser52CHP" id="DrivenByDemandUser52CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser55CHP" id="DrivenByDemandUser55CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser59CHP" id="DrivenByDemandUser59CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser61CHP" id="DrivenByDemandUser61CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser67CHP" id="DrivenByDemandUser67CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser68CHP" id="DrivenByDemandUser68CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser74CHP" id="DrivenByDemandUser74CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser78CHP" id="DrivenByDemandUser78CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser79CHP" id="DrivenByDemandUser79CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser84CHP" id="DrivenByDemandUser84CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser5GH" id="DrivenByDemandUser5GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser9GH" id="DrivenByDemandUser9GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser13GH" id="DrivenByDemandUser13GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser15GH" id="DrivenByDemandUser15GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser17GH" id="DrivenByDemandUser17GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser19GH" id="DrivenByDemandUser19GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser52GH" id="DrivenByDemandUser52GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser55GH" id="DrivenByDemandUser55GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser59GH" id="DrivenByDemandUser59GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser61GH" id="DrivenByDemandUser61GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser67GH" id="DrivenByDemandUser67GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser68GH" id="DrivenByDemandUser68GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser74GH" id="DrivenByDemandUser74GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser78GH" id="DrivenByDemandUser78GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser79GH" id="DrivenByDemandUser79GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser84GH" id="DrivenByDemandUser84GH"/>
  </services>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="ESI">
    <carriers xsi:type="esdl:Carriers" id="Carriers">
      <carrier xsi:type="esdl:ElectricityCommodity" id="Electricity" voltage="240.0" name="Electricity"/>
      <carrier xsi:type="esdl:GasCommodity" id="Gas" name="Gas"/>
      <carrier xsi:type="esdl:HeatCommodity" id="Heat" name="Heat"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="dutch_feederInstance" name="dutch_feederInstance">
    <area xsi:type="esdl:Area" id="TestArea" name="Area">
      <asset xsi:type="esdl:Bus" name="Bus1" id="Bus1">
        <geometry xsi:type="esdl:Point" lat="52.04269403" lon="6.605515616000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="transformer1Out" name="Bus1Phase1In" id="Bus1Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line15Phase1In" name="Bus1Phase1Out" id="Bus1Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="line15" assetType="gplkh_4_50_cusvm_4_6" id="line15" length="6.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0427034" lon="6.60610646"/>
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus1Phase1Out" name="line15Phase1In" id="line15Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus13Phase1In" name="line15Phase1Out" id="line15Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus13" id="Bus13">
        <geometry xsi:type="esdl:Point" lat="52.042769740000004" lon="6.6061486170000006" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line15Phase1Out" name="Bus13Phase1In" id="Bus13Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line16Phase1In line30Phase1In" name="Bus13Phase1Out" id="Bus13Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="line16" assetType="gplkh_4_25_curm_4_2p5" id="line16" length="2.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
          <point xsi:type="esdl:Point" lat="52.04264222" lon="6.606229842"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus13Phase1Out" name="line16Phase1In" id="line16Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus1301Phase1In" name="line16Phase1Out" id="line16Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus1301" id="Bus1301">
        <geometry xsi:type="esdl:Point" lat="52.04269222" lon="6.6061298420000005" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line16Phase1Out" name="Bus1301Phase1In" id="Bus1301Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser4Phase2In" name="Bus1301Phase2Out" id="Bus1301Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="line30" assetType="gplkh_4_50_cusvm_4_6" id="line30" length="4.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
          <point xsi:type="esdl:Point" lat="52.04272139" lon="6.606355906"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus13Phase1Out" name="line30Phase1In" id="line30Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus21Phase1In" name="line30Phase1Out" id="line30Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus21" id="Bus21">
        <geometry xsi:type="esdl:Point" lat="52.04277139" lon="6.606255906" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line30Phase1Out" name="Bus21Phase1In" id="Bus21Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line31Phase1In" name="Bus21Phase1Out" id="Bus21Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="line31" assetType="gplkh_4_6_curm_4_2p5" id="line31" length="3.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272139" lon="6.606355906"/>
          <point xsi:type="esdl:Point" lat="52.04264222" lon="6.6063264010000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus21Phase1Out" name="line31Phase1In" id="line31Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2101Phase1In" name="line31Phase1Out" id="line31Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2101" id="Bus2101">
        <geometry xsi:type="esdl:Point" lat="52.04269222" lon="6.606226401000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line31Phase1Out" name="Bus2101Phase1In" id="Bus2101Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser11Phase2Inuser11Phase2In" name="Bus2101Phase2Out" id="Bus2101Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:Transformer" name="transformer1" id="transformer1" capacity="800000.0">
        <geometry xsi:type="esdl:Point" lat="52.04256757283102" lon="6.605487406286557"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="BussourcebusOut" name="transformer1In" id="transformer1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus1Phase1In" name="transformer1Out" id="transformer1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bussourcebus" id="Bussourcebus">
        <geometry xsi:type="esdl:Point" lat="52.042455533466146" lon="6.605462193456334"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="GenProducerOut" name="BussourcebusIn" id="BussourcebusIn"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="transformer1In" name="BussourcebusOut" id="BussourcebusOut"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" prodType="FOSSIL" name="Electricity production Provincie" id="GenericElectricityProducer" power="1000000000.0">
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="0fd72c70-fd6e-470e-83d1-f9d9a2f29e7a" value="0.7" name="GenericProducer_f09b-MarginalCosts"/>
        </costInformation>
        <geometry xsi:type="esdl:Point" lat="52.04220026445083" lon="6.605390310287476"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="BussourcebusIn" name="GenProducerOut" id="GenProducerOut"/>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_4" id="Building_4">
        <geometry xsi:type="esdl:Point" lat="52.04264222" lon="6.606229842" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus1301" id="user4">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus1301Phase2Out" name="Inuser4Phase2In" id="EconnInuser4Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser4Phase2In" name="Outuser4Phase2In" id="EconnOutuser4Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user4EDemand" id="user4EDemand">
          <geometry xsi:type="esdl:Point" lat="164.0" lon="304.0"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser4Phase2In" name="Inuser4Phase2In" id="EDemandInuser4Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" multiplier="1.5" measurement="elec_profiles" filters="" id="EDemand_user4" database="SEMData" field="User_4" port="8086" host="http://10.30.2.1"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_11" id="Building_11">
        <geometry xsi:type="esdl:Point" lat="52.04264222" lon="6.6063264010000005" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2101" id="user11">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2101Phase2Out" name="Inuser11Phase2Inuser11Phase2In" id="EConnInuser11Phase2Inuser11Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser11Phase2In" name="EConnOutuser11Phase2In" id="EConnOutuser11Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user11EDemand" id="user11EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser11Phase2In" name="EDemandInuser11Phase2In" id="EDemandInuser11Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" multiplier="1.5" measurement="elec_profiles" filters="" id="EDemand_user11" database="SEMData" field="User_11" port="8086" host="http://10.30.2.1"/>
          </port>
        </asset>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
