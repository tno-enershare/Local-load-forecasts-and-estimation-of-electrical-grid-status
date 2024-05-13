<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="dutch_feeder" id="dutch_feeder" esdlVersion="v2211" version="8">
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser5CHP" id="DrivenByDemandUser5CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser13CHP" id="DrivenByDemandUser13CHP"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="CHPEOutuser15Phase3In" name="DrivenByDemandUser15CHP" energyAsset="user15CHP" id="DrivenByDemandUser15CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser19CHP" id="DrivenByDemandUser19CHP"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="CHPEOutuser52Phase1In" name="DrivenByDemandUser52CHP" energyAsset="user52CHP" id="DrivenByDemandUser52CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser55CHP" id="DrivenByDemandUser55CHP"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="CHPEOutuser59Phase2In" name="DrivenByDemandUser59CHP" energyAsset="user59CHP" id="DrivenByDemandUser59CHP"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="CHPEOutuser61Phase2In" name="DrivenByDemandUser61CHP" energyAsset="user61CHP" id="DrivenByDemandUser61CHP"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="CHPEOutuser74Phase3In" name="DrivenByDemandUser74CHP" energyAsset="user74CHP" id="DrivenByDemandUser74CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser79CHP" id="DrivenByDemandUser79CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser84CHP" id="DrivenByDemandUser84CHP"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser5GH" id="DrivenByDemandUser5GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser13GH" id="DrivenByDemandUser13GH"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="GHHOutuser15" name="DrivenByDemandUser15GH" energyAsset="user15GH" id="DrivenByDemandUser15GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser19GH" id="DrivenByDemandUser19GH"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="GHHOutuser52" name="DrivenByDemandUser52GH" energyAsset="user52GH" id="DrivenByDemandUser52GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser55GH" id="DrivenByDemandUser55GH"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="GHHOutuser59" name="DrivenByDemandUser59GH" energyAsset="user59GH" id="DrivenByDemandUser59GH"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="GHHOutuser61" name="DrivenByDemandUser61GH" energyAsset="user61GH" id="DrivenByDemandUser61GH"/>
    <service xsi:type="esdl:DrivenByDemand" outPort="GHHOutuser74" name="DrivenByDemandUser74GH" energyAsset="user74GH" id="DrivenByDemandUser74GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser79GH" id="DrivenByDemandUser79GH"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemandUser84GH" id="DrivenByDemandUser84GH"/>
  </services>
  <instance xsi:type="esdl:Instance" id="dutch_feederInstance" name="dutch_feederInstance">
    <area xsi:type="esdl:Area" id="TestArea" name="Area">
      <asset xsi:type="esdl:ElectricityCable" length="17.0" name="line1" id="line1" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04264403" lon="6.605615616000001"/>
          <point xsi:type="esdl:Point" lat="52.04275944" lon="6.605806052999999"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus1Phase1Out" name="line1Phase1In" id="line1Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="c8671a17-c2c8-448f-a94f-22d76a7e4cb7" name="line1Phase1Out" id="line1Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus1" id="Bus1">
        <geometry xsi:type="esdl:Point" lat="52.04269403" lon="6.605515616000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="transformer1Out" name="Bus1Phase1In" id="Bus1Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line1Phase1In" name="Bus1Phase1Out" id="Bus1Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="9.0" name="line2" id="line2" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04275944" lon="6.605806052999999"/>
          <point xsi:type="esdl:Point" lat="52.04264728" lon="6.605749726"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line2Phase1In" id="line2Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus3Phase1In" name="line2Phase1Out" id="line2Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus3" id="Bus3">
        <geometry xsi:type="esdl:Point" lat="52.04269728" lon="6.605649726" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line2Phase1Out" name="Bus3Phase1In" id="Bus3Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line3Phase1In line142Phase1In" name="Bus3Phase1Out" id="Bus3Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="23.0" name="line3" id="line3" assetType="gplkh_4_25_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04264728" lon="6.605749726"/>
          <point xsi:type="esdl:Point" lat="52.04263409" lon="6.60587579"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus3Phase1Out" name="line3Phase1In" id="line3Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus301Phase1In" name="line3Phase1Out" id="line3Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus301" id="Bus301">
        <geometry xsi:type="esdl:Point" lat="52.04268409" lon="6.60577579" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line3Phase1Out" name="Bus301Phase1In" id="Bus301Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser1Phase1Inuser1Phase1In" name="Bus301Phase1Out" id="Bus301Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line5" id="line5" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04275944" lon="6.605806052999999"/>
          <point xsi:type="esdl:Point" lat="52.04274129" lon="6.605671942000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line5Phase1In" id="line5Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line5Phase1Out" id="line5Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line7" id="line7" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04274129" lon="6.605671942000001"/>
          <point xsi:type="esdl:Point" lat="52.04267532" lon="6.605347395"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line7Phase1In" id="line7Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line7Phase1Out" id="line7Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line9" id="line9" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04267532" lon="6.605347395"/>
          <point xsi:type="esdl:Point" lat="52.04265553" lon="6.60509795"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line9Phase1In" id="line9Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line9Phase1Out" id="line9Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus10" id="Bus10">
        <geometry xsi:type="esdl:Point" lat="52.042684040000005" lon="6.604748504" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="Bus10Phase1In" id="Bus10Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="Bus10Phase1Out" id="Bus10Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus12" id="Bus12">
        <geometry xsi:type="esdl:Point" lat="52.0427534" lon="6.606006460000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="Bus12Phase1In" id="Bus12Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line15Phase1In line21Phase1In" name="Bus12Phase1Out" id="Bus12Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line15" id="line15" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0427034" lon="6.60610646"/>
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus12Phase1Out" name="line15Phase1In" id="line15Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus13Phase1In" name="line15Phase1Out" id="line15Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus13" id="Bus13">
        <geometry xsi:type="esdl:Point" lat="52.042769740000004" lon="6.6061486170000006" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line15Phase1Out" name="Bus13Phase1In" id="Bus13Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line16Phase1In line30Phase1In" name="Bus13Phase1Out" id="Bus13Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line16" id="line16" assetType="gplkh_4_25_curm_4_2p5">
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
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line21" id="line21" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0427034" lon="6.60610646"/>
          <point xsi:type="esdl:Point" lat="52.04260939" lon="6.60603404"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus12Phase1Out 93168144-5d22-4d1c-bffa-bd95064205d9" name="line21Phase1In" id="line21Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus16Phase1In" name="line21Phase1Out" id="line21Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus16" id="Bus16">
        <geometry xsi:type="esdl:Point" lat="52.042659390000004" lon="6.60593404" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line21Phase1Out" name="Bus16Phase1In" id="Bus16Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line28Phase1In" name="Bus16Phase1Out" id="Bus16Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line26" id="line26" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04265553" lon="6.60509795"/>
          <point xsi:type="esdl:Point" lat="52.04258447" lon="6.604985297000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line26Phase1In" id="line26Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus19Phase1In" name="line26Phase1Out" id="line26Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus19" id="Bus19">
        <geometry xsi:type="esdl:Point" lat="52.04263447" lon="6.604885297000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line26Phase1Out" name="Bus19Phase1In" id="Bus19Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line27Phase1In line32Phase1In" name="Bus19Phase1Out" id="Bus19Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="15.0" name="line27" id="line27" assetType="gplkh_4_25_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04258447" lon="6.604985297000001"/>
          <point xsi:type="esdl:Point" lat="52.04249211" lon="6.605060399"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus19Phase1Out" name="line27Phase1In" id="line27Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus1901Phase1In" name="line27Phase1Out" id="line27Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus1901" id="Bus1901">
        <geometry xsi:type="esdl:Point" lat="52.04288002744346" lon="6.604746613661755"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line27Phase1Out" name="Bus1901Phase1In" id="Bus1901Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser9Phase1In" name="Bus1901Phase1Out" id="Bus1901Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="7.0" name="line28" id="line28" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04260939" lon="6.60603404"/>
          <point xsi:type="esdl:Point" lat="52.04254011" lon="6.605991125"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus16Phase1Out" name="line28Phase1In" id="line28Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus20Phase1In" name="line28Phase1Out" id="line28Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus20" id="Bus20">
        <geometry xsi:type="esdl:Point" lat="52.04259011" lon="6.605891125" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line28Phase1Out" name="Bus20Phase1In" id="Bus20Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line29Phase1In line44Phase1In" name="Bus20Phase1Out" id="Bus20Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="37.0" name="line29" id="line29" assetType="gplkh_4_25_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04254011" lon="6.605991125"/>
          <point xsi:type="esdl:Point" lat="52.04252362" lon="6.606114507000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus20Phase1Out" name="line29Phase1In" id="line29Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2001Phase1In" name="line29Phase1Out" id="line29Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2001" id="Bus2001">
        <geometry xsi:type="esdl:Point" lat="52.04257362" lon="6.606014507000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line29Phase1Out" name="Bus2001Phase1In" id="Bus2001Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser10Phase3Inuser10Phase3In" name="Bus2001Phase3Out" id="Bus2001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line30" id="line30" assetType="gplkh_4_50_cusvm_4_6">
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
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line31Phase1In line38Phase1In" name="Bus21Phase1Out" id="Bus21Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line31" id="line31" assetType="gplkh_4_6_curm_4_2p5">
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
      <asset xsi:type="esdl:ElectricityCable" length="7.0" name="line32" id="line32" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04258447" lon="6.604985297000001"/>
          <point xsi:type="esdl:Point" lat="52.04256798" lon="6.604899466"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus19Phase1Out" name="line32Phase1In" id="line32Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus22Phase1In" name="line32Phase1Out" id="line32Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus22" id="Bus22">
        <geometry xsi:type="esdl:Point" lat="52.04261798" lon="6.604799466" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line32Phase1Out" name="Bus22Phase1In" id="Bus22Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line33Phase1In line42Phase1In" name="Bus22Phase1Out" id="Bus22Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="5.0" name="line33" id="line33" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04256798" lon="6.604899466"/>
          <point xsi:type="esdl:Point" lat="52.04247727" lon="6.604942382000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus22Phase1Out" name="line33Phase1In" id="line33Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2201Phase1In" name="line33Phase1Out" id="line33Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2201" id="Bus2201">
        <geometry xsi:type="esdl:Point" lat="52.04252727" lon="6.604842382000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line33Phase1Out" name="Bus2201Phase1In" id="Bus2201Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser12Phase2Inuser12Phase2In" name="Bus2201Phase2Out" id="Bus2201Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line38" id="line38" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272139" lon="6.606355906"/>
          <point xsi:type="esdl:Point" lat="52.04272799" lon="6.6065087920000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus21Phase1Out" name="line38Phase1In" id="line38Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus25Phase1In" name="line38Phase1Out" id="line38Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus25" id="Bus25">
        <geometry xsi:type="esdl:Point" lat="52.042777990000005" lon="6.606408792000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line38Phase1Out" name="Bus25Phase1In" id="Bus25Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line39Phase1In line40Phase1In" name="Bus25Phase1Out" id="Bus25Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="30.0" name="line39" id="line39" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272799" lon="6.6065087920000005"/>
          <point xsi:type="esdl:Point" lat="52.04265212" lon="6.606503427000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus25Phase1Out" name="line39Phase1In" id="line39Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2501Phase1In" name="line39Phase1Out" id="line39Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2501" id="Bus2501">
        <geometry xsi:type="esdl:Point" lat="52.04270212" lon="6.606403427000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line39Phase1Out" name="Bus2501Phase1In" id="Bus2501Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser15Phase3In" name="Bus2501Phase3Out" id="Bus2501Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line40" id="line40" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272799" lon="6.6065087920000005"/>
          <point xsi:type="esdl:Point" lat="52.04272634" lon="6.606626809"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus25Phase1Out" name="line40Phase1In" id="line40Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus26Phase1In" name="line40Phase1Out" id="line40Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus26" id="Bus26">
        <geometry xsi:type="esdl:Point" lat="52.04277634" lon="6.606526809" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line40Phase1Out" name="Bus26Phase1In" id="Bus26Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line41Phase1In line80Phase1In" name="Bus26Phase1Out" id="Bus26Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="35.0" name="line41" id="line41" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272634" lon="6.606626809"/>
          <point xsi:type="esdl:Point" lat="52.04264552" lon="6.6066107160000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus26Phase1Out" name="line41Phase1In" id="line41Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2601Phase1In" name="line41Phase1Out" id="line41Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2601" id="Bus2601">
        <geometry xsi:type="esdl:Point" lat="52.04269552" lon="6.606510716000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line41Phase1Out" name="Bus2601Phase1In" id="Bus2601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser16Phase3Inuser16Phase3In" name="Bus2601Phase3Out" id="Bus2601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="5.0" name="line42" id="line42" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04256798" lon="6.604899466"/>
          <point xsi:type="esdl:Point" lat="52.04253994" lon="6.604722441"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus22Phase1Out" name="line42Phase1In" id="line42Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus27Phase1In" name="line42Phase1Out" id="line42Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus27" id="Bus27">
        <geometry xsi:type="esdl:Point" lat="52.04258994" lon="6.604622441" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line42Phase1Out" name="Bus27Phase1In" id="Bus27Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line43Phase1In line54Phase1In" name="Bus27Phase1Out" id="Bus27Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="14.0" name="line43" id="line43" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04253994" lon="6.604722441"/>
          <point xsi:type="esdl:Point" lat="52.04244923" lon="6.604786814"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus27Phase1Out" name="line43Phase1In" id="line43Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2701Phase1In" name="line43Phase1Out" id="line43Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2701" id="Bus2701">
        <geometry xsi:type="esdl:Point" lat="52.042499230000004" lon="6.604686814" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line43Phase1Out" name="Bus2701Phase1In" id="Bus2701Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser17Phase2In" name="Bus2701Phase2Out" id="Bus2701Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="1.0" name="line44" id="line44" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04254011" lon="6.605991125"/>
          <point xsi:type="esdl:Point" lat="52.04245765" lon="6.60597235"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus20Phase1Out" name="line44Phase1In" id="line44Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus28Phase1In" name="line44Phase1Out" id="line44Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus28" id="Bus28">
        <geometry xsi:type="esdl:Point" lat="52.042507650000005" lon="6.60587235" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line44Phase1Out" name="Bus28Phase1In" id="Bus28Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line45Phase1In line102Phase1In" name="Bus28Phase1Out" id="Bus28Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="40.0" name="line45" id="line45" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04245765" lon="6.60597235"/>
          <point xsi:type="esdl:Point" lat="52.04245105" lon="6.606076956"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus28Phase1Out" name="line45Phase1In" id="line45Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus2801Phase1In" name="line45Phase1Out" id="line45Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus2801" id="Bus2801">
        <geometry xsi:type="esdl:Point" lat="52.04250105" lon="6.605976956" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line45Phase1Out" name="Bus2801Phase1In" id="Bus2801Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser18Phase3Inuser18Phase3In" name="Bus2801Phase3Out" id="Bus2801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line54" id="line54" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04253994" lon="6.604722441"/>
          <point xsi:type="esdl:Point" lat="52.0425251" lon="6.6046258810000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus27Phase1Out" name="line54Phase1In" id="line54Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus33Phase1In" name="line54Phase1Out" id="line54Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus33" id="Bus33">
        <geometry xsi:type="esdl:Point" lat="52.0425751" lon="6.604525881000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line54Phase1Out" name="Bus33Phase1In" id="Bus33Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line55Phase1In line60Phase1In" name="Bus33Phase1Out" id="Bus33Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="35.0" name="line55" id="line55" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0425251" lon="6.6046258810000005"/>
          <point xsi:type="esdl:Point" lat="52.04243109" lon="6.604682207000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus33Phase1Out" name="line55Phase1In" id="line55Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus3301Phase1In" name="line55Phase1Out" id="line55Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus3301" id="Bus3301">
        <geometry xsi:type="esdl:Point" lat="52.04248109" lon="6.604582207000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line55Phase1Out" name="Bus3301Phase1In" id="Bus3301Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser23Phase3Inuser23Phase3In" name="Bus3301Phase3Out" id="Bus3301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="8.0" name="line60" id="line60" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0425251" lon="6.6046258810000005"/>
          <point xsi:type="esdl:Point" lat="52.04249046" lon="6.604456902000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus33Phase1Out" name="line60Phase1In" id="line60Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus36Phase1In" name="line60Phase1Out" id="line60Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus36" id="Bus36">
        <geometry xsi:type="esdl:Point" lat="52.042540460000005" lon="6.604356902000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line60Phase1Out" name="Bus36Phase1In" id="Bus36Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line61Phase1In line70Phase1In" name="Bus36Phase1Out" id="Bus36Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="15.0" name="line61" id="line61" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04249046" lon="6.604456902000001"/>
          <point xsi:type="esdl:Point" lat="52.042408" lon="6.604518593"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus36Phase1Out" name="line61Phase1In" id="line61Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus3601Phase1In" name="line61Phase1Out" id="line61Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus3601" id="Bus3601">
        <geometry xsi:type="esdl:Point" lat="52.042458" lon="6.604418593" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line61Phase1Out" name="Bus3601Phase1In" id="Bus3601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser26Phase1Inuser26Phase1In" name="Bus3601Phase1Out" id="Bus3601Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="1.0" name="line70" id="line70" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04249046" lon="6.604456902000001"/>
          <point xsi:type="esdl:Point" lat="52.04246902" lon="6.6043603420000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus36Phase1Out" name="line70Phase1In" id="line70Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus41Phase1In" name="line70Phase1Out" id="line70Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus41" id="Bus41">
        <geometry xsi:type="esdl:Point" lat="52.04251902" lon="6.604260342000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line70Phase1Out" name="Bus41Phase1In" id="Bus41Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line71Phase1In line72Phase1In" name="Bus41Phase1Out" id="Bus41Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="24.0" name="line71" id="line71" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04246902" lon="6.6043603420000005"/>
          <point xsi:type="esdl:Point" lat="52.04238326" lon="6.604403258"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus41Phase1Out" name="line71Phase1In" id="line71Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus4101Phase1In" name="line71Phase1Out" id="line71Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus4101" id="Bus4101">
        <geometry xsi:type="esdl:Point" lat="52.04243326" lon="6.604303258" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line71Phase1Out" name="Bus4101Phase1In" id="Bus4101Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser31Phase2Inuser31Phase2In" name="Bus4101Phase2Out" id="Bus4101Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line72" id="line72" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04246902" lon="6.6043603420000005"/>
          <point xsi:type="esdl:Point" lat="52.04244428" lon="6.604191362999999"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus41Phase1Out" name="line72Phase1In" id="line72Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus42Phase1In" name="line72Phase1Out" id="line72Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus42" id="Bus42">
        <geometry xsi:type="esdl:Point" lat="52.04249428" lon="6.604091362999999" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line72Phase1Out" name="Bus42Phase1In" id="Bus42Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line73Phase1In line88Phase1In" name="Bus42Phase1Out" id="Bus42Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="16.0" name="line73" id="line73" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04244428" lon="6.604191362999999"/>
          <point xsi:type="esdl:Point" lat="52.04235852" lon="6.604269147"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus42Phase1Out" name="line73Phase1In" id="line73Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus4201Phase1In" name="line73Phase1Out" id="line73Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus4201" id="Bus4201">
        <geometry xsi:type="esdl:Point" lat="52.04240852" lon="6.604169147" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line73Phase1Out" name="Bus4201Phase1In" id="Bus4201Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser32Phase3Inuser32Phase3In" name="Bus4201Phase3Out" id="Bus4201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line80" id="line80" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272634" lon="6.606626809"/>
          <point xsi:type="esdl:Point" lat="52.04271479" lon="6.606988907000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus26Phase1Out" name="line80Phase1In" id="line80Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus46Phase1In" name="line80Phase1Out" id="line80Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus46" id="Bus46">
        <geometry xsi:type="esdl:Point" lat="52.04276479" lon="6.606888907000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line80Phase1Out" name="Bus46Phase1In" id="Bus46Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line81Phase1In line100Phase1In" name="Bus46Phase1Out" id="Bus46Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="24.0" name="line81" id="line81" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04271479" lon="6.606988907000001"/>
          <point xsi:type="esdl:Point" lat="52.04262738" lon="6.606962085"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus46Phase1Out" name="line81Phase1In" id="line81Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus4601Phase1In" name="line81Phase1Out" id="line81Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus4601" id="Bus4601">
        <geometry xsi:type="esdl:Point" lat="52.04267738" lon="6.606862085" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line81Phase1Out" name="Bus4601Phase1In" id="Bus4601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser36Phase1Inuser36Phase1In" name="Bus4601Phase1Out" id="Bus4601Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line88" id="line88" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04244428" lon="6.604191362999999"/>
          <point xsi:type="esdl:Point" lat="52.04242284" lon="6.604097486000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus42Phase1Out" name="line88Phase1In" id="line88Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus50Phase1In" name="line88Phase1Out" id="line88Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus50" id="Bus50">
        <geometry xsi:type="esdl:Point" lat="52.04247284" lon="6.603997486000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line88Phase1Out" name="Bus50Phase1In" id="Bus50Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line89Phase1In line136Phase1In" name="Bus50Phase1Out" id="Bus50Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="31.0" name="line89" id="line89" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04242284" lon="6.604097486000001"/>
          <point xsi:type="esdl:Point" lat="52.04233543" lon="6.604145766"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus50Phase1Out" name="line89Phase1In" id="line89Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus5001Phase1In" name="line89Phase1Out" id="line89Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus5001" id="Bus5001">
        <geometry xsi:type="esdl:Point" lat="52.04238543" lon="6.6040457660000005" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line89Phase1Out" name="Bus5001Phase1In" id="Bus5001Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser40Phase3Inuser40Phase3In" name="Bus5001Phase3Out" id="Bus5001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="9.0" name="line100" id="line100" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04271479" lon="6.606988907000001"/>
          <point xsi:type="esdl:Point" lat="52.04254326" lon="6.607080102"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus46Phase1Out" name="line100Phase1In" id="line100Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus56Phase1In" name="line100Phase1Out" id="line100Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus56" id="Bus56">
        <geometry xsi:type="esdl:Point" lat="52.042593260000004" lon="6.6069801020000005" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line100Phase1Out" name="Bus56Phase1In" id="Bus56Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line101Phase1In line106Phase1In" name="Bus56Phase1Out" id="Bus56Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line101" id="line101" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04254326" lon="6.607080102"/>
          <point xsi:type="esdl:Point" lat="52.04253667" lon="6.606948674"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus56Phase1Out" name="line101Phase1In" id="line101Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus5601Phase1In" name="line101Phase1Out" id="line101Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus5601" id="Bus5601">
        <geometry xsi:type="esdl:Point" lat="52.04258667" lon="6.606848674" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line101Phase1Out" name="Bus5601Phase1In" id="Bus5601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser46Phase2Inuser46Phase2In" name="Bus5601Phase2Out" id="Bus5601Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line102" id="line102" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04245765" lon="6.60597235"/>
          <point xsi:type="esdl:Point" lat="52.04237353" lon="6.605940163"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus28Phase1Out" name="line102Phase1In" id="line102Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus57Phase1In" name="line102Phase1Out" id="line102Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus57" id="Bus57">
        <geometry xsi:type="esdl:Point" lat="52.04242353" lon="6.605840163" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line102Phase1Out" name="Bus57Phase1In" id="Bus57Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line103Phase1In line128Phase1In" name="Bus57Phase1Out" id="Bus57Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line103" id="line103" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04237353" lon="6.605940163"/>
          <point xsi:type="esdl:Point" lat="52.04236199" lon="6.606060863"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus57Phase1Out" name="line103Phase1In" id="line103Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus5701Phase1In" name="line103Phase1Out" id="line103Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus5701" id="Bus5701">
        <geometry xsi:type="esdl:Point" lat="52.042411990000005" lon="6.605960863" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line103Phase1Out" name="Bus5701Phase1In" id="Bus5701Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser47Phase2Inuser47Phase2In" name="Bus5701Phase2Out" id="Bus5701Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line106" id="line106" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04254326" lon="6.607080102"/>
          <point xsi:type="esdl:Point" lat="52.0424542" lon="6.607047916"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus56Phase1Out" name="line106Phase1In" id="line106Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus59Phase1In" name="line106Phase1Out" id="line106Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus59" id="Bus59">
        <geometry xsi:type="esdl:Point" lat="52.0425042" lon="6.606947916" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line106Phase1Out" name="Bus59Phase1In" id="Bus59Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line107Phase1In line112Phase1In" name="Bus59Phase1Out" id="Bus59Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="24.0" name="line107" id="line107" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0424542" lon="6.607047916"/>
          <point xsi:type="esdl:Point" lat="52.0424509" lon="6.606884301"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus59Phase1Out" name="line107Phase1In" id="line107Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus5901Phase1In" name="line107Phase1Out" id="line107Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus5901" id="Bus5901">
        <geometry xsi:type="esdl:Point" lat="52.0425009" lon="6.606784301" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line107Phase1Out" name="Bus5901Phase1In" id="Bus5901Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser49Phase3Inuser49Phase3In" name="Bus5901Phase3Out" id="Bus5901Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line112" id="line112" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0424542" lon="6.607047916"/>
          <point xsi:type="esdl:Point" lat="52.04238988" lon="6.607026457999999"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus59Phase1Out" name="line112Phase1In" id="line112Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus62Phase1In" name="line112Phase1Out" id="line112Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus62" id="Bus62">
        <geometry xsi:type="esdl:Point" lat="52.04243988" lon="6.606926457999999" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line112Phase1Out" name="Bus62Phase1In" id="Bus62Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line113Phase1In line130Phase1In" name="Bus62Phase1Out" id="Bus62Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="9.0" name="line113" id="line113" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04238988" lon="6.607026457999999"/>
          <point xsi:type="esdl:Point" lat="52.04238493" lon="6.606860161"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus62Phase1Out" name="line113Phase1In" id="line113Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus6201Phase1In" name="line113Phase1Out" id="line113Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus6201" id="Bus6201">
        <geometry xsi:type="esdl:Point" lat="52.04243493" lon="6.606760161" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line113Phase1Out" name="Bus6201Phase1In" id="Bus6201Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser52Phase1In" name="Bus6201Phase1Out" id="Bus6201Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="10.0" name="line124" id="line124" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04280566" lon="6.6072812679999995"/>
          <point xsi:type="esdl:Point" lat="52.04279906" lon="6.6073778270000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line124Phase1In" id="line124Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line124Phase1Out" id="line124Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="31.0" name="line125" id="line125" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04279906" lon="6.6073778270000005"/>
          <point xsi:type="esdl:Point" lat="52.04290627" lon="6.607407331"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line125Phase1In" id="line125Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line125Phase1Out" id="line125Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="10.0" name="line126" id="line126" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04279906" lon="6.6073778270000005"/>
          <point xsi:type="esdl:Point" lat="52.04278092" lon="6.6074636579999995"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line126Phase1In" id="line126Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line126Phase1Out" id="line126Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="15.0" name="line127" id="line127" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04278092" lon="6.6074636579999995"/>
          <point xsi:type="esdl:Point" lat="52.04290132" lon="6.607487797999999"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line127Phase1In" id="line127Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus6901Phase1In" name="line127Phase1Out" id="line127Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus6901" id="Bus6901">
        <geometry xsi:type="esdl:Point" lat="52.04295132" lon="6.6073877979999995" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line127Phase1Out" name="Bus6901Phase1In" id="Bus6901Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser59Phase2In" name="Bus6901Phase2Out" id="Bus6901Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line128" id="line128" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04237353" lon="6.605940163"/>
          <point xsi:type="esdl:Point" lat="52.04229106" lon="6.605918705"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus57Phase1Out" name="line128Phase1In" id="line128Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus70Phase1In" name="line128Phase1Out" id="line128Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus70" id="Bus70">
        <geometry xsi:type="esdl:Point" lat="52.04234106" lon="6.605818705" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line128Phase1Out" name="Bus70Phase1In" id="Bus70Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line129Phase1In line140Phase1In" name="Bus70Phase1Out" id="Bus70Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="21.0" name="line129" id="line129" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04229106" lon="6.605918705"/>
          <point xsi:type="esdl:Point" lat="52.04228282" lon="6.6060233120000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus70Phase1Out" name="line129Phase1In" id="line129Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7001Phase1In" name="line129Phase1Out" id="line129Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7001" id="Bus7001">
        <geometry xsi:type="esdl:Point" lat="52.04233282" lon="6.605923312000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line129Phase1Out" name="Bus7001Phase1In" id="Bus7001Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser60Phase3Inuser60Phase3In" name="Bus7001Phase3Out" id="Bus7001Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line130" id="line130" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04238988" lon="6.607026457999999"/>
          <point xsi:type="esdl:Point" lat="52.0423272" lon="6.607034505"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus62Phase1Out" name="line130Phase1In" id="line130Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus71Phase1In" name="line130Phase1Out" id="line130Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus71" id="Bus71">
        <geometry xsi:type="esdl:Point" lat="52.042377200000004" lon="6.606934505" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line130Phase1Out" name="Bus71Phase1In" id="Bus71Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line131Phase1In" name="Bus71Phase1Out" id="Bus71Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="22.0" name="line131" id="line131" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0423272" lon="6.607034505"/>
          <point xsi:type="esdl:Point" lat="52.0423305" lon="6.606865525"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus71Phase1Out" name="line131Phase1In" id="line131Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7101Phase1In" name="line131Phase1Out" id="line131Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7101" id="Bus7101">
        <geometry xsi:type="esdl:Point" lat="52.0423805" lon="6.606765525" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line131Phase1Out" name="Bus7101Phase1In" id="Bus7101Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser61Phase2In" name="Bus7101Phase2Out" id="Bus7101Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line134" id="line134" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04278092" lon="6.6074636579999995"/>
          <point xsi:type="esdl:Point" lat="52.04278751" lon="6.6075414420000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line134Phase1In" id="line134Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" name="line134Phase1Out" id="line134Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="21.0" name="line135" id="line135" assetType="gplkh_4_6_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04278751" lon="6.6075414420000005"/>
          <point xsi:type="esdl:Point" lat="52.04287658" lon="6.6075629000000005"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line135Phase1In" id="line135Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7301Phase1In" name="line135Phase1Out" id="line135Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7301" id="Bus7301">
        <geometry xsi:type="esdl:Point" lat="52.04292658" lon="6.607462900000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line135Phase1Out" name="Bus7301Phase1In" id="Bus7301Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser63Phase2Inuser63Phase2In" name="Bus7301Phase2Out" id="Bus7301Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line136" id="line136" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04242284" lon="6.604097486000001"/>
          <point xsi:type="esdl:Point" lat="52.04239645" lon="6.603941917999999"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus50Phase1Out" name="line136Phase1In" id="line136Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus74Phase1In" name="line136Phase1Out" id="line136Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus74" id="Bus74">
        <geometry xsi:type="esdl:Point" lat="52.04244645" lon="6.603841918" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line136Phase1Out" name="Bus74Phase1In" id="Bus74Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line137Phase1In line144Phase1In" name="Bus74Phase1Out" id="Bus74Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="38.0" name="line137" id="line137" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04239645" lon="6.603941917999999"/>
          <point xsi:type="esdl:Point" lat="52.04232058" lon="6.603998244"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus74Phase1Out" name="line137Phase1In" id="line137Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7401Phase1In" name="line137Phase1Out" id="line137Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7401" id="Bus7401">
        <geometry xsi:type="esdl:Point" lat="52.042370580000004" lon="6.603898244" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line137Phase1Out" name="Bus7401Phase1In" id="Bus7401Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser64Phase1Inuser64Phase1In" name="Bus7401Phase1Out" id="Bus7401Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="4.0" name="line140" id="line140" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04229106" lon="6.605918705"/>
          <point xsi:type="esdl:Point" lat="52.0422119" lon="6.60587579"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus70Phase1Out" name="line140Phase1In" id="line140Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus76Phase1In" name="line140Phase1Out" id="line140Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus76" id="Bus76">
        <geometry xsi:type="esdl:Point" lat="52.0422619" lon="6.60577579" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line140Phase1Out" name="Bus76Phase1In" id="Bus76Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line141Phase1In line146Phase1In" name="Bus76Phase1Out" id="Bus76Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="28.0" name="line141" id="line141" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0422119" lon="6.60587579"/>
          <point xsi:type="esdl:Point" lat="52.04221025" lon="6.605999172000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus76Phase1Out" name="line141Phase1In" id="line141Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7601Phase1In" name="line141Phase1Out" id="line141Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7601" id="Bus7601">
        <geometry xsi:type="esdl:Point" lat="52.04226025" lon="6.605899172000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line141Phase1Out" name="Bus7601Phase1In" id="Bus7601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser66Phase1Inuser66Phase1In" name="Bus7601Phase1Out" id="Bus7601Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="7.0" name="line142" id="line142" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04264728" lon="6.605749726"/>
          <point xsi:type="esdl:Point" lat="52.04256317" lon="6.605728269"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus3Phase1Out" name="line142Phase1In" id="line142Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus77Phase1In" name="line142Phase1Out" id="line142Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus77" id="Bus77">
        <geometry xsi:type="esdl:Point" lat="52.04261317" lon="6.605628269" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line142Phase1Out" name="Bus77Phase1In" id="Bus77Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line143Phase1In line170Phase1In" name="Bus77Phase1Out" id="Bus77Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="25.0" name="line143" id="line143" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04256317" lon="6.605728269"/>
          <point xsi:type="esdl:Point" lat="52.04255327" lon="6.605835557000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus77Phase1Out" name="line143Phase1In" id="line143Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7701Phase1In" name="line143Phase1Out" id="line143Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7701" id="Bus7701">
        <geometry xsi:type="esdl:Point" lat="52.04260327" lon="6.605735557000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line143Phase1Out" name="Bus7701Phase1In" id="Bus7701Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser67Phase2In" name="Bus7701Phase2Out" id="Bus7701Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="1.0" name="line144" id="line144" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04239645" lon="6.603941917999999"/>
          <point xsi:type="esdl:Point" lat="52.04237006" lon="6.603823901"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus74Phase1Out" name="line144Phase1In" id="line144Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus78Phase1In" name="line144Phase1Out" id="line144Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus78" id="Bus78">
        <geometry xsi:type="esdl:Point" lat="52.042420060000005" lon="6.603723901" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line144Phase1Out" name="Bus78Phase1In" id="Bus78Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line145Phase1In line152Phase1In" name="Bus78Phase1Out" id="Bus78Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line145" id="line145" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04237006" lon="6.603823901"/>
          <point xsi:type="esdl:Point" lat="52.0422942" lon="6.603893638"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus78Phase1Out" name="line145Phase1In" id="line145Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7801Phase1In" name="line145Phase1Out" id="line145Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7801" id="Bus7801">
        <geometry xsi:type="esdl:Point" lat="52.0423442" lon="6.603793638" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line145Phase1Out" name="Bus7801Phase1In" id="Bus7801Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser68Phase2In" name="Bus7801Phase2Out" id="Bus7801Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="9.0" name="line146" id="line146" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0422119" lon="6.60587579"/>
          <point xsi:type="esdl:Point" lat="52.04213273" lon="6.605846286"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus76Phase1Out" name="line146Phase1In" id="line146Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus79Phase1In" name="line146Phase1Out" id="line146Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus79" id="Bus79">
        <geometry xsi:type="esdl:Point" lat="52.04218273" lon="6.6057462860000005" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line146Phase1Out" name="Bus79Phase1In" id="Bus79Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line147Phase1In line168Phase1In" name="Bus79Phase1Out" id="Bus79Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line147" id="line147" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04213273" lon="6.605846286"/>
          <point xsi:type="esdl:Point" lat="52.04213108" lon="6.605958939"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus79Phase1Out" name="line147Phase1In" id="line147Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus7901Phase1In" name="line147Phase1Out" id="line147Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus7901" id="Bus7901">
        <geometry xsi:type="esdl:Point" lat="52.04218108" lon="6.605858939" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line147Phase1Out" name="Bus7901Phase1In" id="Bus7901Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser69Phase1Inuser69Phase1In" name="Bus7901Phase1Out" id="Bus7901Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="6.0" name="line150" id="line150" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04278751" lon="6.6075414420000005"/>
          <point xsi:type="esdl:Point" lat="52.04278092" lon="6.60762459"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" name="line150Phase1In" id="line150Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus81Phase1In" name="line150Phase1Out" id="line150Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus81" id="Bus81">
        <geometry xsi:type="esdl:Point" lat="52.04283092" lon="6.607524590000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line150Phase1Out" name="Bus81Phase1In" id="Bus81Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line151Phase1In line156Phase1In" name="Bus81Phase1Out" id="Bus81Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="34.0" name="line151" id="line151" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04278092" lon="6.60762459"/>
          <point xsi:type="esdl:Point" lat="52.04286833" lon="6.60762459"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus81Phase1Out" name="line151Phase1In" id="line151Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8101Phase1In" name="line151Phase1Out" id="line151Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8101" id="Bus8101">
        <geometry xsi:type="esdl:Point" lat="52.04291833" lon="6.607524590000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line151Phase1Out" name="Bus8101Phase1In" id="Bus8101Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser71Phase1Inuser71Phase1In" name="Bus8101Phase1Out" id="Bus8101Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line152" id="line152" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04237006" lon="6.603823901"/>
          <point xsi:type="esdl:Point" lat="52.04234532" lon="6.603671015"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus78Phase1Out" name="line152Phase1In" id="line152Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus82Phase1In" name="line152Phase1Out" id="line152Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus82" id="Bus82">
        <geometry xsi:type="esdl:Point" lat="52.042395320000004" lon="6.603571015" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line152Phase1Out" name="Bus82Phase1In" id="Bus82Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line153Phase1In line154Phase1In" name="Bus82Phase1Out" id="Bus82Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="35.0" name="line153" id="line153" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04234532" lon="6.603671015"/>
          <point xsi:type="esdl:Point" lat="52.04226286" lon="6.603730023"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus82Phase1Out" name="line153Phase1In" id="line153Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8201Phase1In" name="line153Phase1Out" id="line153Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8201" id="Bus8201">
        <geometry xsi:type="esdl:Point" lat="52.04231286" lon="6.603630023" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line153Phase1Out" name="Bus8201Phase1In" id="Bus8201Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser72Phase3Inuser72Phase3In" name="Bus8201Phase3Out" id="Bus8201Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="1.0" name="line154" id="line154" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04234532" lon="6.603671015"/>
          <point xsi:type="esdl:Point" lat="52.04232883" lon="6.603574455"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus82Phase1Out" name="line154Phase1In" id="line154Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus83Phase1In" name="line154Phase1Out" id="line154Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus83" id="Bus83">
        <geometry xsi:type="esdl:Point" lat="52.042378830000004" lon="6.603474455000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line154Phase1Out" name="Bus83Phase1In" id="Bus83Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line155Phase1In line158Phase1In" name="Bus83Phase1Out" id="Bus83Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="31.0" name="line155" id="line155" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04232883" lon="6.603574455"/>
          <point xsi:type="esdl:Point" lat="52.04224307" lon="6.603622735"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus83Phase1Out" name="line155Phase1In" id="line155Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8301Phase1In" name="line155Phase1Out" id="line155Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8301" id="Bus8301">
        <geometry xsi:type="esdl:Point" lat="52.04229307" lon="6.603522735" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line155Phase1Out" name="Bus8301Phase1In" id="Bus8301Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser73Phase3Inuser73Phase3In" name="Bus8301Phase3Out" id="Bus8301Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="10.0" name="line156" id="line156" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04278092" lon="6.60762459"/>
          <point xsi:type="esdl:Point" lat="52.04276442" lon="6.607691646"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus81Phase1Out" name="line156Phase1In" id="line156Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus84Phase1In" name="line156Phase1Out" id="line156Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus84" id="Bus84">
        <geometry xsi:type="esdl:Point" lat="52.04281442" lon="6.607591646" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line156Phase1Out" name="Bus84Phase1In" id="Bus84Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line157Phase1In line160Phase1In" name="Bus84Phase1Out" id="Bus84Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="13.0" name="line157" id="line157" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04276442" lon="6.607691646"/>
          <point xsi:type="esdl:Point" lat="52.04285843" lon="6.607707738999999"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus84Phase1Out" name="line157Phase1In" id="line157Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8401Phase1In" name="line157Phase1Out" id="line157Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8401" id="Bus8401">
        <geometry xsi:type="esdl:Point" lat="52.042908430000004" lon="6.607607739" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line157Phase1Out" name="Bus8401Phase1In" id="Bus8401Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser74Phase3In" name="Bus8401Phase3Out" id="Bus8401Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="5.0" name="line158" id="line158" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04232883" lon="6.603574455"/>
          <point xsi:type="esdl:Point" lat="52.0422876" lon="6.603402794"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus83Phase1Out" name="line158Phase1In" id="line158Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus85Phase1In" name="line158Phase1Out" id="line158Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus85" id="Bus85">
        <geometry xsi:type="esdl:Point" lat="52.0423376" lon="6.603302794" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line158Phase1Out" name="Bus85Phase1In" id="Bus85Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line159Phase1In line162Phase1In" name="Bus85Phase1Out" id="Bus85Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="24.0" name="line159" id="line159" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0422876" lon="6.603402794"/>
          <point xsi:type="esdl:Point" lat="52.04220513" lon="6.603461802000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus85Phase1Out" name="line159Phase1In" id="line159Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8501Phase1In" name="line159Phase1Out" id="line159Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8501" id="Bus8501">
        <geometry xsi:type="esdl:Point" lat="52.04225513" lon="6.603361802000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line159Phase1Out" name="Bus8501Phase1In" id="Bus8501Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser75Phase1Inuser75Phase1In" name="Bus8501Phase1Out" id="Bus8501Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="10.0" name="line160" id="line160" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04276442" lon="6.607691646"/>
          <point xsi:type="esdl:Point" lat="52.04276112" lon="6.607774794"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus84Phase1Out" name="line160Phase1In" id="line160Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus86Phase1In" name="line160Phase1Out" id="line160Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus86" id="Bus86">
        <geometry xsi:type="esdl:Point" lat="52.04281112" lon="6.607674794" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line160Phase1Out" name="Bus86Phase1In" id="Bus86Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line161Phase1In" name="Bus86Phase1Out" id="Bus86Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="31.0" name="line161" id="line161" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04276112" lon="6.607774794"/>
          <point xsi:type="esdl:Point" lat="52.04286008" lon="6.60779357"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus86Phase1Out" name="line161Phase1In" id="line161Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8601Phase1In" name="line161Phase1Out" id="line161Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8601" id="Bus8601">
        <geometry xsi:type="esdl:Point" lat="52.04291008" lon="6.60769357" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line161Phase1Out" name="Bus8601Phase1In" id="Bus8601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser76Phase3Inuser76Phase3In" name="Bus8601Phase3Out" id="Bus8601Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="2.0" name="line162" id="line162" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0422876" lon="6.603402794"/>
          <point xsi:type="esdl:Point" lat="52.04226616" lon="6.60330087"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus85Phase1Out" name="line162Phase1In" id="line162Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus87Phase1In" name="line162Phase1Out" id="line162Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus87" id="Bus87">
        <geometry xsi:type="esdl:Point" lat="52.04231616" lon="6.60320087" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line162Phase1Out" name="Bus87Phase1In" id="Bus87Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line163Phase1In line164Phase1In" name="Bus87Phase1Out" id="Bus87Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="24.0" name="line163" id="line163" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04226616" lon="6.60330087"/>
          <point xsi:type="esdl:Point" lat="52.04218534" lon="6.603357196"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus87Phase1Out" name="line163Phase1In" id="line163Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8701Phase1In" name="line163Phase1Out" id="line163Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8701" id="Bus8701">
        <geometry xsi:type="esdl:Point" lat="52.042235340000005" lon="6.603257196" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line163Phase1Out" name="Bus8701Phase1In" id="Bus8701Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser77Phase1Inuser77Phase1In" name="Bus8701Phase1Out" id="Bus8701Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="1.0" name="line164" id="line164" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04226616" lon="6.60330087"/>
          <point xsi:type="esdl:Point" lat="52.04223977" lon="6.603164077000001"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus87Phase1Out" name="line164Phase1In" id="line164Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus88Phase1In" name="line164Phase1Out" id="line164Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus88" id="Bus88">
        <geometry xsi:type="esdl:Point" lat="52.042289770000004" lon="6.603064077000001" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line164Phase1Out" name="Bus88Phase1In" id="Bus88Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line165Phase1In line182Phase1In" name="Bus88Phase1Out" id="Bus88Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="17.0" name="line165" id="line165" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04223977" lon="6.603164077000001"/>
          <point xsi:type="esdl:Point" lat="52.04215895" lon="6.603212357"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus88Phase1Out" name="line165Phase1In" id="line165Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus8801Phase1In" name="line165Phase1Out" id="line165Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus8801" id="Bus8801">
        <geometry xsi:type="esdl:Point" lat="52.04220895" lon="6.6031123570000005" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line165Phase1Out" name="Bus8801Phase1In" id="Bus8801Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser78Phase3In" name="Bus8801Phase3Out" id="Bus8801Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="9.0" name="line168" id="line168" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04213273" lon="6.605846286"/>
          <point xsi:type="esdl:Point" lat="52.04206181" lon="6.605814099"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus79Phase1Out" name="line168Phase1In" id="line168Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus90Phase1In" name="line168Phase1Out" id="line168Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus90" id="Bus90">
        <geometry xsi:type="esdl:Point" lat="52.04211181" lon="6.605714099" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line168Phase1Out" name="Bus90Phase1In" id="Bus90Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line169Phase1In line180Phase1In" name="Bus90Phase1Out" id="Bus90Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="40.0" name="line169" id="line169" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04206181" lon="6.605814099"/>
          <point xsi:type="esdl:Point" lat="52.04205191" lon="6.605934799"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus90Phase1Out" name="line169Phase1In" id="line169Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus9001Phase1In" name="line169Phase1Out" id="line169Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus9001" id="Bus9001">
        <geometry xsi:type="esdl:Point" lat="52.04210191" lon="6.605834799" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line169Phase1Out" name="Bus9001Phase1In" id="Bus9001Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser80Phase2Inuser80Phase2In" name="Bus9001Phase2Out" id="Bus9001Phase2Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="12.0" name="line170" id="line170" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04256317" lon="6.605728269"/>
          <point xsi:type="esdl:Point" lat="52.04246256" lon="6.605690718"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus77Phase1Out" name="line170Phase1In" id="line170Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus91Phase1In" name="line170Phase1Out" id="line170Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus91" id="Bus91">
        <geometry xsi:type="esdl:Point" lat="52.04251256" lon="6.605590718" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line170Phase1Out" name="Bus91Phase1In" id="Bus91Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line171Phase1In" name="Bus91Phase1Out" id="Bus91Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="19.0" name="line171" id="line171" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04246256" lon="6.605690718"/>
          <point xsi:type="esdl:Point" lat="52.04244936" lon="6.605787277"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus91Phase1Out" name="line171Phase1In" id="line171Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus9101Phase1In" name="line171Phase1Out" id="line171Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus9101" id="Bus9101">
        <geometry xsi:type="esdl:Point" lat="52.04249936" lon="6.605687277" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line171Phase1Out" name="Bus9101Phase1In" id="Bus9101Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser81Phase1Inuser81Phase1In" name="Bus9101Phase1Out" id="Bus9101Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="14.0" name="line180" id="line180" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04206181" lon="6.605814099"/>
          <point xsi:type="esdl:Point" lat="52.04197934" lon="6.605784595"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus90Phase1Out" name="line180Phase1In" id="line180Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus96Phase1In" name="line180Phase1Out" id="line180Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus96" id="Bus96">
        <geometry xsi:type="esdl:Point" lat="52.04202934" lon="6.6056845950000005" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line180Phase1Out" name="Bus96Phase1In" id="Bus96Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line181Phase1In" name="Bus96Phase1Out" id="Bus96Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="10.0" name="line181" id="line181" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04197934" lon="6.605784595"/>
          <point xsi:type="esdl:Point" lat="52.04197439" lon="6.605916023"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus96Phase1Out" name="line181Phase1In" id="line181Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus9601Phase1In" name="line181Phase1Out" id="line181Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus9601" id="Bus9601">
        <geometry xsi:type="esdl:Point" lat="52.04202439" lon="6.605816023" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line181Phase1Out" name="Bus9601Phase1In" id="Bus9601Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser86Phase1Inuser86Phase1In" name="Bus9601Phase1Out" id="Bus9601Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="3.0" name="line182" id="line182" assetType="gplkh_4_50_cusvm_4_6">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04223977" lon="6.603164077000001"/>
          <point xsi:type="esdl:Point" lat="52.04222492" lon="6.603056789"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus88Phase1Out" name="line182Phase1In" id="line182Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus97Phase1In" name="line182Phase1Out" id="line182Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus97" id="Bus97">
        <geometry xsi:type="esdl:Point" lat="52.042274920000004" lon="6.602956789" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line182Phase1Out" name="Bus97Phase1In" id="Bus97Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line183Phase1In" name="Bus97Phase1Out" id="Bus97Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="25.0" name="line183" id="line183" assetType="gplkh_4_10_curm_4_2p5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04222492" lon="6.603056789"/>
          <point xsi:type="esdl:Point" lat="52.04213586" lon="6.603105069"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus97Phase1Out" name="line183Phase1In" id="line183Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus9701Phase1In" name="line183Phase1Out" id="line183Phase1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bus9701" id="Bus9701">
        <geometry xsi:type="esdl:Point" lat="52.042185860000004" lon="6.603005069" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line183Phase1Out" name="Bus9701Phase1In" id="Bus9701Phase1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EConnInuser87Phase3Inuser87Phase3In" name="Bus9701Phase3Out" id="Bus9701Phase3Out"/>
      </asset>
      <asset xsi:type="esdl:Transformer" capacity="800.0" name="transformer1" id="transformer1">
        <geometry xsi:type="esdl:Point" lat="52.04256757283102" lon="6.605487406286557"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="BussourcebusOut" name="transformer1In" id="transformer1In"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="Bus1Phase1In" name="transformer1Out" id="transformer1Out"/>
      </asset>
      <asset xsi:type="esdl:Bus" name="Bussourcebus" id="Bussourcebus">
        <geometry xsi:type="esdl:Point" lat="52.042455533466146" lon="6.605462193456334"/>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="GenProducerOut" name="BussourcebusIn" id="BussourcebusIn"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="transformer1In" name="BussourcebusOut" id="BussourcebusOut"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" prodType="FOSSIL" power="1000000000.0" name="Electricity production Provincie" id="GenericElectricityProducer">
        <geometry xsi:type="esdl:Point" lat="52.04220026445083" lon="6.605390310287476"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="BussourcebusIn" name="GenProducerOut" id="GenProducerOut"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" name="GenericProducer_f09b-MarginalCosts" id="0fd72c70-fd6e-470e-83d1-f9d9a2f29e7a" value="0.7"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_4" id="Building_4">
        <geometry xsi:type="esdl:Point" lat="52.04264222" lon="6.606229842" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus1301" id="user4">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus1301Phase2Out" name="Inuser4Phase2In" id="EconnInuser4Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser4Phase2In" name="Outuser4Phase2In" id="EconnOutuser4Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user4EDemand" id="user4EDemand">
          <geometry xsi:type="esdl:Point" lat="153.0" lon="379.0"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser4Phase2In" name="Inuser4Phase2In" id="EDemandInuser4Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_4" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user4"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_9" id="Building_9">
        <geometry xsi:type="esdl:Point" lat="52.04249211" lon="6.605060399" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus1901" id="user9">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus1901Phase1Out" name="Inuser9Phase1In" id="EconnInuser9Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser9Phase1In" name="Outuser9Phase1In" id="EconnOutuser9Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user9EDemand" id="user9EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser9Phase1In" name="Inuser9Phase1In" id="EDemandInuser9Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_9" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user9"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_15" id="Building_15">
        <geometry xsi:type="esdl:Point" lat="52.04265212" lon="6.606503427000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2501" id="user15">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2501Phase3Out CHPEOutuser15Phase3In PVPOutuser15Phase3In" name="Inuser15Phase3In" id="EconnInuser15Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser15Phase3In EVInuser15Phase3In" name="Outuser15Phase3In" id="EconnOutuser15Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user15EDemand" id="user15EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser15Phase3In" name="Inuser15Phase3In" id="EDemandInuser15Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_15" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user15"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" controlStrategy="DrivenByDemandUser15GH" power="8000.0" name="user15GH" id="user15GH">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser15Phase3In" name="GHInuser15" id="GHInuser15"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user15HeatNetworkIn" name="GHHOutuser15" id="GHHOutuser15"/>
        </asset>
        <asset xsi:type="esdl:HeatStorage" capacity="100000000.0" maxDischargeRate="10000000.0" maxChargeRate="10000000.0" chargeEfficiency="1.0" name="user15HeatStorage" id="user15HeatStorage">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user15HeatNetworkOut" name="user15HeatStorageIn" id="user15HeatStorageIn"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="user15HeatNetwork" id="user15HeatNetwork">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="GHHOutuser15 CHPHOutuser15Phase3In" name="user15HeatNetworkIn" id="user15HeatNetworkIn"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user15HeatStorageIn HDemandInuser15Phase3In" name="user15HeatNetworkOut" id="user15HeatNetworkOut"/>
        </asset>
        <asset xsi:type="esdl:CHP" heatEfficiency="0.8" controlStrategy="DrivenByDemandUser15CHP" electricalEfficiency="0.15" power="3200.0" name="user15CHP" id="user15CHP">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser15Phase3In" name="Inuser15Phase3In" id="CHPInuser15Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser15Phase3In" name="E Outuser15Phase3In" id="CHPEOutuser15Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user15HeatNetworkIn" name="H Outuser15Phase3In" id="CHPHOutuser15Phase3In"/>
        </asset>
        <asset xsi:type="esdl:PVPanel" name="user15PVPanel" id="user15PVPanel">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser15Phase3In" name="Outuser15Phase3In" id="PVPOutuser15Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="3.0" measurement="pv_profiles" profileType="ENERGY_IN_J" filters="" field="User_15" database="SEMData" host="http://10.30.2.1" port="8086" id="PVPOutuser15Phase3InProfile"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EVChargingStation" power="150000000.0" name="user15EV" id="user15EV">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser15Phase3In" name="Inuser15Phase3In" id="EVInuser15Phase3In"/>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="user15HDemand" id="user15HDemand">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user15HeatNetworkOut" name="Inuser15Phase3In" id="HDemandInuser15Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="heat_profiles" filters="" profileType="ENERGY_IN_J" field="User_15" database="SEMData" host="http://10.30.2.1" port="8086" id="HDemand_user15"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GConnection" name="user15GConnection" id="user15GConnection">
          <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" name="Inuser15Phase3In" id="GConnectionInuser15Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Gas" connectedTo="GHInuser15 CHPInuser15Phase3In" name="Outuser15Phase3In" id="GConnectionOutuser15Phase3In"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_17" id="Building_17">
        <geometry xsi:type="esdl:Point" lat="52.04244923" lon="6.604786814" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2701" id="user17">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2701Phase2Out" name="Inuser17Phase2In" id="EconnInuser17Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser17Phase2In" name="Outuser17Phase2In" id="EconnOutuser17Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user17EDemand" id="user17EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser17Phase2In" name="Inuser17Phase2In" id="EDemandInuser17Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_17" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user17"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_52" id="Building_52">
        <geometry xsi:type="esdl:Point" lat="52.04238493" lon="6.606860161" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus6201" id="user52">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus6201Phase1Out CHPEOutuser52Phase1In PVPOutuser52Phase1In" name="Inuser52Phase1In" id="EconnInuser52Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser52Phase1In EVInuser52Phase1In" name="Outuser52Phase1In" id="EconnOutuser52Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user52EDemand" id="user52EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser52Phase1In" name="Inuser52Phase1In" id="EDemandInuser52Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_52" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user52"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" controlStrategy="DrivenByDemandUser52GH" power="8000.0" name="user52GH" id="user52GH">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser52Phase1In" name="GHInuser52" id="GHInuser52"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user52HeatNetworkIn" name="GHHOutuser52" id="GHHOutuser52"/>
        </asset>
        <asset xsi:type="esdl:HeatStorage" capacity="100000000.0" maxDischargeRate="10000000.0" maxChargeRate="10000000.0" chargeEfficiency="1.0" name="user52HeatStorage" id="user52HeatStorage">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user52HeatNetworkOut" name="user52HeatStorageIn" id="user52HeatStorageIn"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="user52HeatNetwork" id="user52HeatNetwork">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="GHHOutuser52 CHPHOutuser52Phase1In" name="user52HeatNetworkIn" id="user52HeatNetworkIn"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user52HeatStorageIn HDemandInuser52Phase1In" name="user52HeatNetworkOut" id="user52HeatNetworkOut"/>
        </asset>
        <asset xsi:type="esdl:CHP" heatEfficiency="0.8" controlStrategy="DrivenByDemandUser52CHP" electricalEfficiency="0.15" power="3200.0" name="user52CHP" id="user52CHP">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser52Phase1In" name="Inuser52Phase1In" id="CHPInuser52Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser52Phase1In" name="E Outuser52Phase1In" id="CHPEOutuser52Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user52HeatNetworkIn" name="H Outuser52Phase1In" id="CHPHOutuser52Phase1In"/>
        </asset>
        <asset xsi:type="esdl:PVPanel" name="user52PVPanel" id="user52PVPanel">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser52Phase1In" name="Outuser52Phase1In" id="PVPOutuser52Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="3.0" measurement="pv_profiles" profileType="ENERGY_IN_J" filters="" field="User_52" database="SEMData" host="http://10.30.2.1" port="8086" id="PVPOutuser52Phase1InProfile"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EVChargingStation" power="150000000.0" name="user52EV" id="user52EV">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser52Phase1In" name="Inuser52Phase1In" id="EVInuser52Phase1In"/>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="user52HDemand" id="user52HDemand">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user52HeatNetworkOut" name="Inuser52Phase1In" id="HDemandInuser52Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="heat_profiles" filters="" profileType="ENERGY_IN_J" field="User_52" database="SEMData" host="http://10.30.2.1" port="8086" id="HDemand_user52"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GConnection" name="user52GConnection" id="user52GConnection">
          <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" name="Inuser52Phase1In" id="GConnectionInuser52Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Gas" connectedTo="GHInuser52 CHPInuser52Phase1In" name="Outuser52Phase1In" id="GConnectionOutuser52Phase1In"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_59" id="Building_59">
        <geometry xsi:type="esdl:Point" lat="52.04290132" lon="6.607487797999999" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus6901" id="user59">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus6901Phase2Out CHPEOutuser59Phase2In PVPOutuser59Phase2In" name="Inuser59Phase2In" id="EconnInuser59Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser59Phase2In EVInuser59Phase2In" name="Outuser59Phase2In" id="EconnOutuser59Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user59EDemand" id="user59EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser59Phase2In" name="Inuser59Phase2In" id="EDemandInuser59Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_59" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user59"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" controlStrategy="DrivenByDemandUser59GH" power="8000.0" name="user59GH" id="user59GH">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser59Phase2In" name="GHInuser59" id="GHInuser59"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user59HeatNetworkIn" name="GHHOutuser59" id="GHHOutuser59"/>
        </asset>
        <asset xsi:type="esdl:HeatStorage" capacity="100000000.0" maxDischargeRate="10000000.0" maxChargeRate="10000000.0" chargeEfficiency="1.0" name="user59HeatStorage" id="user59HeatStorage">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user59HeatNetworkOut" name="user59HeatStorageIn" id="user59HeatStorageIn"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="user59HeatNetwork" id="user59HeatNetwork">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="GHHOutuser59 CHPHOutuser59Phase2In" name="user59HeatNetworkIn" id="user59HeatNetworkIn"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user59HeatStorageIn HDemandInuser59Phase2In" name="user59HeatNetworkOut" id="user59HeatNetworkOut"/>
        </asset>
        <asset xsi:type="esdl:CHP" heatEfficiency="0.8" controlStrategy="DrivenByDemandUser59CHP" electricalEfficiency="0.15" power="3200.0" name="user59CHP" id="user59CHP">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser59Phase2In" name="Inuser59Phase2In" id="CHPInuser59Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser59Phase2In" name="E Outuser59Phase2In" id="CHPEOutuser59Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user59HeatNetworkIn" name="H Outuser59Phase2In" id="CHPHOutuser59Phase2In"/>
        </asset>
        <asset xsi:type="esdl:PVPanel" name="user59PVPanel" id="user59PVPanel">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser59Phase2In" name="Outuser59Phase2In" id="PVPOutuser59Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="3.0" measurement="pv_profiles" profileType="ENERGY_IN_J" filters="" field="User_59" database="SEMData" host="http://10.30.2.1" port="8086" id="PVPOutuser59Phase2InProfile"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EVChargingStation" power="150000000.0" name="user59EV" id="user59EV">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser59Phase2In" name="Inuser59Phase2In" id="EVInuser59Phase2In"/>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="user59HDemand" id="user59HDemand">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user59HeatNetworkOut" name="Inuser59Phase2In" id="HDemandInuser59Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="heat_profiles" filters="" profileType="ENERGY_IN_J" field="User_59" database="SEMData" host="http://10.30.2.1" port="8086" id="HDemand_user59"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GConnection" name="user59GConnection" id="user59GConnection">
          <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" name="Inuser59Phase2In" id="GConnectionInuser59Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Gas" connectedTo="GHInuser59 CHPInuser59Phase2In" name="Outuser59Phase2In" id="GConnectionOutuser59Phase2In"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_61" id="Building_61">
        <geometry xsi:type="esdl:Point" lat="52.0423305" lon="6.606865525" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7101" id="user61">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7101Phase2Out CHPEOutuser61Phase2In PVPOutuser61Phase2In" name="Inuser61Phase2In" id="EconnInuser61Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser61Phase2In EVInuser61Phase2In" name="Outuser61Phase2In" id="EconnOutuser61Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user61EDemand" id="user61EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser61Phase2In" name="Inuser61Phase2In" id="EDemandInuser61Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_61" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user61"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" controlStrategy="DrivenByDemandUser61GH" power="8000.0" name="user61GH" id="user61GH">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser61Phase2In" name="GHInuser61" id="GHInuser61"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user61HeatNetworkIn" name="GHHOutuser61" id="GHHOutuser61"/>
        </asset>
        <asset xsi:type="esdl:HeatStorage" capacity="100000000.0" maxDischargeRate="10000000.0" maxChargeRate="10000000.0" chargeEfficiency="1.0" name="user61HeatStorage" id="user61HeatStorage">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user61HeatNetworkOut" name="user61HeatStorageIn" id="user61HeatStorageIn"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="user61HeatNetwork" id="user61HeatNetwork">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="GHHOutuser61 CHPHOutuser61Phase2In" name="user61HeatNetworkIn" id="user61HeatNetworkIn"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user61HeatStorageIn HDemandInuser61Phase2In" name="user61HeatNetworkOut" id="user61HeatNetworkOut"/>
        </asset>
        <asset xsi:type="esdl:CHP" heatEfficiency="0.8" controlStrategy="DrivenByDemandUser61CHP" electricalEfficiency="0.15" power="3200.0" name="user61CHP" id="user61CHP">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser61Phase2In" name="Inuser61Phase2In" id="CHPInuser61Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser61Phase2In" name="E Outuser61Phase2In" id="CHPEOutuser61Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user61HeatNetworkIn" name="H Outuser61Phase2In" id="CHPHOutuser61Phase2In"/>
        </asset>
        <asset xsi:type="esdl:PVPanel" name="user61PVPanel" id="user61PVPanel">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser61Phase2In" name="Outuser61Phase2In" id="PVPOutuser61Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="3.0" measurement="pv_profiles" profileType="ENERGY_IN_J" filters="" field="User_61" database="SEMData" host="http://10.30.2.1" port="8086" id="PVPOutuser61Phase2InProfile"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EVChargingStation" power="160000000.0" name="user61EV" id="user61EV">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser61Phase2In" name="Inuser61Phase2In" id="EVInuser61Phase2In"/>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="user61HDemand" id="user61HDemand">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user61HeatNetworkOut" name="Inuser61Phase2In" id="HDemandInuser61Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="heat_profiles" filters="" profileType="ENERGY_IN_J" field="User_61" database="SEMData" host="http://10.30.2.1" port="8086" id="HDemand_user61"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GConnection" name="user61GConnection" id="user61GConnection">
          <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" name="Inuser61Phase2In" id="GConnectionInuser61Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Gas" connectedTo="GHInuser61 CHPInuser61Phase2In" name="Outuser61Phase2In" id="GConnectionOutuser61Phase2In"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_67" id="Building_67">
        <geometry xsi:type="esdl:Point" lat="52.04255327" lon="6.605835557000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7701" id="user67">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7701Phase2Out" name="Inuser67Phase2In" id="EconnInuser67Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser67Phase2In" name="Outuser67Phase2In" id="EconnOutuser67Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user67EDemand" id="user67EDemand">
          <geometry xsi:type="esdl:Point" lat="154.0" lon="373.0"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser67Phase2In" name="Inuser67Phase2In" id="EDemandInuser67Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_67" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user67"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_68" id="Building_68">
        <geometry xsi:type="esdl:Point" lat="52.0422942" lon="6.603893638" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7801" id="user68">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7801Phase2Out" name="Inuser68Phase2In" id="EconnInuser68Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser68Phase2In" name="Outuser68Phase2In" id="EconnOutuser68Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user68EDemand" id="user68EDemand">
          <geometry xsi:type="esdl:Point" lat="133.0" lon="373.0"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser68Phase2In" name="Inuser68Phase2In" id="EDemandInuser68Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_68" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user68"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_74" id="Building_74">
        <geometry xsi:type="esdl:Point" lat="52.04285843" lon="6.607707738999999" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8401" id="user74">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8401Phase3Out CHPEOutuser74Phase3In PVPOutuser74Phase3In" name="Inuser74Phase3In" id="EconnInuser74Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser74Phase3In EVInuser74Phase3In" name="Outuser74Phase3In" id="EconnOutuser74Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user74EDemand" id="user74EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser74Phase3In" name="Inuser74Phase3In" id="EDemandInuser74Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_74" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user74"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" controlStrategy="DrivenByDemandUser74GH" power="8000.0" name="user74GH" id="user74GH">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser74Phase3In" name="GHInuser74" id="GHInuser74"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user74HeatNetworkIn" name="GHHOutuser74" id="GHHOutuser74"/>
        </asset>
        <asset xsi:type="esdl:HeatStorage" capacity="100000000.0" maxDischargeRate="10000000.0" maxChargeRate="10000000.0" chargeEfficiency="1.0" name="user74HeatStorage" id="user74HeatStorage">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user74HeatNetworkOut" name="user74HeatStorageIn" id="user74HeatStorageIn"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="user74HeatNetwork" id="user74HeatNetwork">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="GHHOutuser74 CHPHOutuser74Phase3In" name="user74HeatNetworkIn" id="user74HeatNetworkIn"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user74HeatStorageIn HDemandInuser74Phase3In" name="user74HeatNetworkOut" id="user74HeatNetworkOut"/>
        </asset>
        <asset xsi:type="esdl:CHP" heatEfficiency="0.8" controlStrategy="DrivenByDemandUser74CHP" electricalEfficiency="0.15" power="3200.0" name="user74CHP" id="user74CHP">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" connectedTo="GConnectionOutuser74Phase3In" name="Inuser74Phase3In" id="CHPInuser74Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser74Phase3In" name="E Outuser74Phase3In" id="CHPEOutuser74Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Heat" connectedTo="user74HeatNetworkIn" name="H Outuser74Phase3In" id="CHPHOutuser74Phase3In"/>
        </asset>
        <asset xsi:type="esdl:PVPanel" name="user74PVPanel" id="user74PVPanel">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EconnInuser74Phase3In" name="Outuser74Phase3In" id="PVPOutuser74Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="3.0" measurement="pv_profiles" profileType="ENERGY_IN_J" filters="" field="User_74" database="SEMData" host="http://10.30.2.1" port="8086" id="PVPOutuser74Phase3InProfile"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EVChargingStation" power="170000000.0" name="user74EV" id="user74EV">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser74Phase3In" name="Inuser74Phase3In" id="EVInuser74Phase3In"/>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="user74HDemand" id="user74HDemand">
          <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Heat" connectedTo="user74HeatNetworkOut" name="Inuser74Phase3In" id="HDemandInuser74Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="heat_profiles" filters="" profileType="ENERGY_IN_J" field="User_74" database="SEMData" host="http://10.30.2.1" port="8086" id="HDemand_user74"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GConnection" name="user74GConnection" id="user74GConnection">
          <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Gas" name="Inuser74Phase3In" id="GConnectionInuser74Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Gas" connectedTo="GHInuser74 CHPInuser74Phase3In" name="Outuser74Phase3In" id="GConnectionOutuser74Phase3In"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_78" id="Building_78">
        <geometry xsi:type="esdl:Point" lat="52.04215895" lon="6.603212357" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8801" id="user78">
          <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8801Phase3Out" name="Inuser78Phase3In" id="EconnInuser78Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser78Phase3In" name="Outuser78Phase3In" id="EconnOutuser78Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user78EDemand" id="user78EDemand">
          <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EconnOutuser78Phase3In" name="Inuser78Phase3In" id="EDemandInuser78Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_78" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user78"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_1" id="Building_1">
        <geometry xsi:type="esdl:Point" lat="52.04263409" lon="6.60587579" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus301" id="user1">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus301Phase1Out" name="Inuser1Phase1Inuser1Phase1In" id="EConnInuser1Phase1Inuser1Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser1Phase1In" name="EConnOutuser1Phase1In" id="EConnOutuser1Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user1EDemand" id="user1EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser1Phase1In" name="EDemandInuser1Phase1In" id="EDemandInuser1Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_1" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user1"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_10" id="Building_10">
        <geometry xsi:type="esdl:Point" lat="52.04252362" lon="6.606114507000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2001" id="user10">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2001Phase3Out" name="Inuser10Phase3Inuser10Phase3In" id="EConnInuser10Phase3Inuser10Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser10Phase3In" name="EConnOutuser10Phase3In" id="EConnOutuser10Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user10EDemand" id="user10EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser10Phase3In" name="EDemandInuser10Phase3In" id="EDemandInuser10Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_10" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user10"/>
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
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_11" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user11"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_12" id="Building_12">
        <geometry xsi:type="esdl:Point" lat="52.04247727" lon="6.604942382000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2201" id="user12">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2201Phase2Out" name="Inuser12Phase2Inuser12Phase2In" id="EConnInuser12Phase2Inuser12Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser12Phase2In" name="EConnOutuser12Phase2In" id="EConnOutuser12Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user12EDemand" id="user12EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser12Phase2In" name="EDemandInuser12Phase2In" id="EDemandInuser12Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_12" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user12"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_16" id="Building_16">
        <geometry xsi:type="esdl:Point" lat="52.04264552" lon="6.6066107160000005" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2601" id="user16">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2601Phase3Out" name="Inuser16Phase3Inuser16Phase3In" id="EConnInuser16Phase3Inuser16Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser16Phase3In" name="EConnOutuser16Phase3In" id="EConnOutuser16Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user16EDemand" id="user16EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser16Phase3In" name="EDemandInuser16Phase3In" id="EDemandInuser16Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_16" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user16"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_18" id="Building_18">
        <geometry xsi:type="esdl:Point" lat="52.04245105" lon="6.606076956" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus2801" id="user18">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus2801Phase3Out" name="Inuser18Phase3Inuser18Phase3In" id="EConnInuser18Phase3Inuser18Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser18Phase3In" name="EConnOutuser18Phase3In" id="EConnOutuser18Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user18EDemand" id="user18EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser18Phase3In" name="EDemandInuser18Phase3In" id="EDemandInuser18Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_18" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user18"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_23" id="Building_23">
        <geometry xsi:type="esdl:Point" lat="52.04243109" lon="6.604682207000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus3301" id="user23">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus3301Phase3Out" name="Inuser23Phase3Inuser23Phase3In" id="EConnInuser23Phase3Inuser23Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser23Phase3In" name="EConnOutuser23Phase3In" id="EConnOutuser23Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user23EDemand" id="user23EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser23Phase3In" name="EDemandInuser23Phase3In" id="EDemandInuser23Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_23" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user23"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_26" id="Building_26">
        <geometry xsi:type="esdl:Point" lat="52.042408" lon="6.604518593" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus3601" id="user26">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus3601Phase1Out" name="Inuser26Phase1Inuser26Phase1In" id="EConnInuser26Phase1Inuser26Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser26Phase1In" name="EConnOutuser26Phase1In" id="EConnOutuser26Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user26EDemand" id="user26EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser26Phase1In" name="EDemandInuser26Phase1In" id="EDemandInuser26Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_26" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user26"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_31" id="Building_31">
        <geometry xsi:type="esdl:Point" lat="52.04238326" lon="6.604403258" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus4101" id="user31">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus4101Phase2Out" name="Inuser31Phase2Inuser31Phase2In" id="EConnInuser31Phase2Inuser31Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser31Phase2In" name="EConnOutuser31Phase2In" id="EConnOutuser31Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user31EDemand" id="user31EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser31Phase2In" name="EDemandInuser31Phase2In" id="EDemandInuser31Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_31" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user31"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_32" id="Building_32">
        <geometry xsi:type="esdl:Point" lat="52.04235852" lon="6.604269147" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus4201" id="user32">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus4201Phase3Out" name="Inuser32Phase3Inuser32Phase3In" id="EConnInuser32Phase3Inuser32Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser32Phase3In" name="EConnOutuser32Phase3In" id="EConnOutuser32Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user32EDemand" id="user32EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser32Phase3In" name="EDemandInuser32Phase3In" id="EDemandInuser32Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_32" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user32"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_36" id="Building_36">
        <geometry xsi:type="esdl:Point" lat="52.04262738" lon="6.606962085" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus4601" id="user36">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus4601Phase1Out" name="Inuser36Phase1Inuser36Phase1In" id="EConnInuser36Phase1Inuser36Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser36Phase1In" name="EConnOutuser36Phase1In" id="EConnOutuser36Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user36EDemand" id="user36EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser36Phase1In" name="EDemandInuser36Phase1In" id="EDemandInuser36Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_36" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user36"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_40" id="Building_40">
        <geometry xsi:type="esdl:Point" lat="52.04233543" lon="6.604145766" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus5001" id="user40">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus5001Phase3Out" name="Inuser40Phase3Inuser40Phase3In" id="EConnInuser40Phase3Inuser40Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser40Phase3In" name="EConnOutuser40Phase3In" id="EConnOutuser40Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user40EDemand" id="user40EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser40Phase3In" name="EDemandInuser40Phase3In" id="EDemandInuser40Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_40" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user40"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_46" id="Building_46">
        <geometry xsi:type="esdl:Point" lat="52.04253667" lon="6.606948674" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus5601" id="user46">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus5601Phase2Out" name="Inuser46Phase2Inuser46Phase2In" id="EConnInuser46Phase2Inuser46Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser46Phase2In" name="EConnOutuser46Phase2In" id="EConnOutuser46Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user46EDemand" id="user46EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser46Phase2In" name="EDemandInuser46Phase2In" id="EDemandInuser46Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_46" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user46"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_47" id="Building_47">
        <geometry xsi:type="esdl:Point" lat="52.04236199" lon="6.606060863" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus5701" id="user47">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus5701Phase2Out" name="Inuser47Phase2Inuser47Phase2In" id="EConnInuser47Phase2Inuser47Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser47Phase2In" name="EConnOutuser47Phase2In" id="EConnOutuser47Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user47EDemand" id="user47EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser47Phase2In" name="EDemandInuser47Phase2In" id="EDemandInuser47Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_47" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user47"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_49" id="Building_49">
        <geometry xsi:type="esdl:Point" lat="52.0424509" lon="6.606884301" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus5901" id="user49">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus5901Phase3Out" name="Inuser49Phase3Inuser49Phase3In" id="EConnInuser49Phase3Inuser49Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser49Phase3In" name="EConnOutuser49Phase3In" id="EConnOutuser49Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user49EDemand" id="user49EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser49Phase3In" name="EDemandInuser49Phase3In" id="EDemandInuser49Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_49" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user49"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_58" id="Building_58">
        <geometry xsi:type="esdl:Point" lat="52.04290627" lon="6.607407331" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus6801" id="user58">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" name="Inuser58Phase3Inuser58Phase3In" id="EConnInuser58Phase3Inuser58Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser58Phase3In" name="EConnOutuser58Phase3In" id="EConnOutuser58Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user58EDemand" id="user58EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser58Phase3In" name="EDemandInuser58Phase3In" id="EDemandInuser58Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_58" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user58"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_60" id="Building_60">
        <geometry xsi:type="esdl:Point" lat="52.04228282" lon="6.6060233120000005" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7001" id="user60">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7001Phase3Out" name="Inuser60Phase3Inuser60Phase3In" id="EConnInuser60Phase3Inuser60Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser60Phase3In" name="EConnOutuser60Phase3In" id="EConnOutuser60Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user60EDemand" id="user60EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser60Phase3In" name="EDemandInuser60Phase3In" id="EDemandInuser60Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_60" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user60"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_63" id="Building_63">
        <geometry xsi:type="esdl:Point" lat="52.04287658" lon="6.6075629000000005" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7301" id="user63">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7301Phase2Out" name="Inuser63Phase2Inuser63Phase2In" id="EConnInuser63Phase2Inuser63Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser63Phase2In" name="EConnOutuser63Phase2In" id="EConnOutuser63Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user63EDemand" id="user63EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser63Phase2In" name="EDemandInuser63Phase2In" id="EDemandInuser63Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_63" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user63"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_64" id="Building_64">
        <geometry xsi:type="esdl:Point" lat="52.04232058" lon="6.603998244" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7401" id="user64">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7401Phase1Out" name="Inuser64Phase1Inuser64Phase1In" id="EConnInuser64Phase1Inuser64Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser64Phase1In" name="EConnOutuser64Phase1In" id="EConnOutuser64Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user64EDemand" id="user64EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser64Phase1In" name="EDemandInuser64Phase1In" id="EDemandInuser64Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_64" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user64"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_66" id="Building_66">
        <geometry xsi:type="esdl:Point" lat="52.04221025" lon="6.605999172000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7601" id="user66">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7601Phase1Out" name="Inuser66Phase1Inuser66Phase1In" id="EConnInuser66Phase1Inuser66Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser66Phase1In" name="EConnOutuser66Phase1In" id="EConnOutuser66Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user66EDemand" id="user66EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser66Phase1In" name="EDemandInuser66Phase1In" id="EDemandInuser66Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_66" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user66"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_69" id="Building_69">
        <geometry xsi:type="esdl:Point" lat="52.04213108" lon="6.605958939" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus7901" id="user69">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus7901Phase1Out" name="Inuser69Phase1Inuser69Phase1In" id="EConnInuser69Phase1Inuser69Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser69Phase1In" name="EConnOutuser69Phase1In" id="EConnOutuser69Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user69EDemand" id="user69EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser69Phase1In" name="EDemandInuser69Phase1In" id="EDemandInuser69Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_69" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user69"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_71" id="Building_71">
        <geometry xsi:type="esdl:Point" lat="52.04286833" lon="6.60762459" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8101" id="user71">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8101Phase1Out" name="Inuser71Phase1Inuser71Phase1In" id="EConnInuser71Phase1Inuser71Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser71Phase1In" name="EConnOutuser71Phase1In" id="EConnOutuser71Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user71EDemand" id="user71EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser71Phase1In" name="EDemandInuser71Phase1In" id="EDemandInuser71Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_71" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user71"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_72" id="Building_72">
        <geometry xsi:type="esdl:Point" lat="52.04226286" lon="6.603730023" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8201" id="user72">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8201Phase3Out" name="Inuser72Phase3Inuser72Phase3In" id="EConnInuser72Phase3Inuser72Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser72Phase3In" name="EConnOutuser72Phase3In" id="EConnOutuser72Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user72EDemand" id="user72EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser72Phase3In" name="EDemandInuser72Phase3In" id="EDemandInuser72Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_72" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user72"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_73" id="Building_73">
        <geometry xsi:type="esdl:Point" lat="52.04224307" lon="6.603622735" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8301" id="user73">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8301Phase3Out" name="Inuser73Phase3Inuser73Phase3In" id="EConnInuser73Phase3Inuser73Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser73Phase3In" name="EConnOutuser73Phase3In" id="EConnOutuser73Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user73EDemand" id="user73EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser73Phase3In" name="EDemandInuser73Phase3In" id="EDemandInuser73Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_73" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user73"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_75" id="Building_75">
        <geometry xsi:type="esdl:Point" lat="52.04220513" lon="6.603461802000001" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8501" id="user75">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8501Phase1Out" name="Inuser75Phase1Inuser75Phase1In" id="EConnInuser75Phase1Inuser75Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser75Phase1In" name="EConnOutuser75Phase1In" id="EConnOutuser75Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user75EDemand" id="user75EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser75Phase1In" name="EDemandInuser75Phase1In" id="EDemandInuser75Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_75" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user75"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_76" id="Building_76">
        <geometry xsi:type="esdl:Point" lat="52.04286008" lon="6.60779357" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8601" id="user76">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8601Phase3Out" name="Inuser76Phase3Inuser76Phase3In" id="EConnInuser76Phase3Inuser76Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser76Phase3In" name="EConnOutuser76Phase3In" id="EConnOutuser76Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user76EDemand" id="user76EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser76Phase3In" name="EDemandInuser76Phase3In" id="EDemandInuser76Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_76" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user76"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_77" id="Building_77">
        <geometry xsi:type="esdl:Point" lat="52.04218534" lon="6.603357196" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus8701" id="user77">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus8701Phase1Out" name="Inuser77Phase1Inuser77Phase1In" id="EConnInuser77Phase1Inuser77Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser77Phase1In" name="EConnOutuser77Phase1In" id="EConnOutuser77Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user77EDemand" id="user77EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser77Phase1In" name="EDemandInuser77Phase1In" id="EDemandInuser77Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_77" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user77"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_80" id="Building_80">
        <geometry xsi:type="esdl:Point" lat="52.04205191" lon="6.605934799" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus9001" id="user80">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus9001Phase2Out" name="Inuser80Phase2Inuser80Phase2In" id="EConnInuser80Phase2Inuser80Phase2In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser80Phase2In" name="EConnOutuser80Phase2In" id="EConnOutuser80Phase2In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user80EDemand" id="user80EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser80Phase2In" name="EDemandInuser80Phase2In" id="EDemandInuser80Phase2In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_80" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user80"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_81" id="Building_81">
        <geometry xsi:type="esdl:Point" lat="52.04244936" lon="6.605787277" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus9101" id="user81">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus9101Phase1Out" name="Inuser81Phase1Inuser81Phase1In" id="EConnInuser81Phase1Inuser81Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser81Phase1In" name="EConnOutuser81Phase1In" id="EConnOutuser81Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user81EDemand" id="user81EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser81Phase1In" name="EDemandInuser81Phase1In" id="EDemandInuser81Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_81" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user81"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_86" id="Building_86">
        <geometry xsi:type="esdl:Point" lat="52.04197439" lon="6.605916023" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus9601" id="user86">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus9601Phase1Out" name="Inuser86Phase1Inuser86Phase1In" id="EConnInuser86Phase1Inuser86Phase1In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser86Phase1In" name="EConnOutuser86Phase1In" id="EConnOutuser86Phase1In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user86EDemand" id="user86EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser86Phase1In" name="EDemandInuser86Phase1In" id="EDemandInuser86Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_86" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user86"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" name="Building_87" id="Building_87">
        <geometry xsi:type="esdl:Point" lat="52.04213586" lon="6.603105069" CRS="WGS84"/>
        <asset xsi:type="esdl:EConnection" name="Bus9701" id="user87">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="166.66666666666666" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="Bus9701Phase3Out" name="Inuser87Phase3Inuser87Phase3In" id="EConnInuser87Phase3Inuser87Phase3In"/>
          <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="EDemandInuser87Phase3In" name="EConnOutuser87Phase3In" id="EConnOutuser87Phase3In"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="user87EDemand" id="user87EDemand">
          <geometry xsi:type="esdl:Point" lat="250.0" lon="333.3333333333333" CRS="Simple"/>
          <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="EConnOutuser87Phase3In" name="EDemandInuser87Phase3In" id="EDemandInuser87Phase3In">
            <profile xsi:type="esdl:InfluxDBProfile" multiplier="1.5" measurement="elec_profiles" profileType="ENERGY_IN_J" filters="" field="User_87" database="SEMData" host="http://10.30.2.1" port="8086" id="EDemand_user87"/>
          </port>
        </asset>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="21.6" name="line666" id="39d91d21-e399-4494-9bd3-d135848f9e74">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04275582175061" lon="6.605800082559316"/>
          <point xsi:type="esdl:Point" lat="52.04270026832735" lon="6.606102462894921"/>
        </geometry>
        <port xsi:type="esdl:InPort" carrier="Electricity" connectedTo="line1Phase1Out" name="line666Phase1In" id="c8671a17-c2c8-448f-a94f-22d76a7e4cb7"/>
        <port xsi:type="esdl:OutPort" carrier="Electricity" connectedTo="line21Phase1In" name="line666Phase1Out" id="93168144-5d22-4d1c-bffa-bd95064205d9"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="ESI">
    <carriers xsi:type="esdl:Carriers" id="Carriers">
      <carrier xsi:type="esdl:ElectricityCommodity" id="Electricity" voltage="240.0" name="Electricity"/>
      <carrier xsi:type="esdl:GasCommodity" id="Gas" name="Gas"/>
      <carrier xsi:type="esdl:HeatCommodity" id="Heat" name="Heat"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
