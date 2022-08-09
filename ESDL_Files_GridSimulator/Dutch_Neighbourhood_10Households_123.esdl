<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2207" version="5" name="dutch_feeder" id="dutch_feeder">
  <instance xsi:type="esdl:Instance" id="dutch_feederInstance" name="dutch_feederInstance">
    <area xsi:type="esdl:Area" id="TestArea" name="Area">
      <asset xsi:type="esdl:Bus" id="Bus1" name="Bus1">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04269403" lon="6.605515616000001"/>
        <port xsi:type="esdl:InPort" name="Bus1Phase1In" id="Bus1Phase1In" connectedTo="transformer1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus1Phase1Out" id="Bus1Phase1Out" connectedTo="line21Phase1In line15Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line15" assetType="gplkh_4_50_cusvm_4_6" name="line15" length="6.0">
        <port xsi:type="esdl:InPort" name="line15Phase1In" id="line15Phase1In" connectedTo="Bus1Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line15Phase1Out" id="line15Phase1Out" connectedTo="Bus13Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0427034" lon="6.60610646"/>
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus13" name="Bus13">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.042769740000004" lon="6.6061486170000006"/>
        <port xsi:type="esdl:InPort" name="Bus13Phase1In" id="Bus13Phase1In" connectedTo="line15Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus13Phase1Out" id="Bus13Phase1Out" connectedTo="line16Phase1In line30Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line16" assetType="gplkh_4_25_curm_4_2p5" name="line16" length="2.0">
        <port xsi:type="esdl:InPort" name="line16Phase1In" id="line16Phase1In" connectedTo="Bus13Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line16Phase1Out" id="line16Phase1Out" connectedTo="Bus1301Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
          <point xsi:type="esdl:Point" lat="52.04264222" lon="6.606229842"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1301" name="Bus1301">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04269222" lon="6.6061298420000005"/>
        <port xsi:type="esdl:InPort" name="Bus1301Phase1In" id="Bus1301Phase1In" connectedTo="line16Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus1301Phase2Out" id="Bus1301Phase2Out" connectedTo="EconnInuser4Phase2In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line21" assetType="gplkh_4_50_cusvm_4_6" name="line21" length="4.0">
        <port xsi:type="esdl:InPort" name="line21Phase1In" id="line21Phase1In" connectedTo="Bus1Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line21Phase1Out" id="line21Phase1Out" connectedTo="Bus16Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0427034" lon="6.60610646"/>
          <point xsi:type="esdl:Point" lat="52.04260939" lon="6.60603404"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus16" name="Bus16">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.042659390000004" lon="6.60593404"/>
        <port xsi:type="esdl:InPort" name="Bus16Phase1In" id="Bus16Phase1In" connectedTo="line21Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus16Phase1Out" id="Bus16Phase1Out" connectedTo="line28Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line28" assetType="gplkh_4_50_cusvm_4_6" name="line28" length="7.0">
        <port xsi:type="esdl:InPort" name="line28Phase1In" id="line28Phase1In" connectedTo="Bus16Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line28Phase1Out" id="line28Phase1Out" connectedTo="Bus20Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04260939" lon="6.60603404"/>
          <point xsi:type="esdl:Point" lat="52.04254011" lon="6.605991125"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus20" name="Bus20">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04259011" lon="6.605891125"/>
        <port xsi:type="esdl:InPort" name="Bus20Phase1In" id="Bus20Phase1In" connectedTo="line28Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus20Phase1Out" id="Bus20Phase1Out" connectedTo="line29Phase1In line44Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line29" assetType="gplkh_4_25_curm_4_2p5" name="line29" length="37.0">
        <port xsi:type="esdl:InPort" name="line29Phase1In" id="line29Phase1In" connectedTo="Bus20Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line29Phase1Out" id="line29Phase1Out" connectedTo="Bus2001Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04254011" lon="6.605991125"/>
          <point xsi:type="esdl:Point" lat="52.04252362" lon="6.606114507000001"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2001" name="Bus2001">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04257362" lon="6.606014507000001"/>
        <port xsi:type="esdl:InPort" name="Bus2001Phase1In" id="Bus2001Phase1In" connectedTo="line29Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus2001Phase3Out" id="Bus2001Phase3Out" connectedTo="EConnInuser10Phase3Inuser10Phase3In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line30" assetType="gplkh_4_50_cusvm_4_6" name="line30" length="4.0">
        <port xsi:type="esdl:InPort" name="line30Phase1In" id="line30Phase1In" connectedTo="Bus13Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line30Phase1Out" id="line30Phase1Out" connectedTo="Bus21Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04271974" lon="6.606248617"/>
          <point xsi:type="esdl:Point" lat="52.04272139" lon="6.606355906"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus21" name="Bus21">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04277139" lon="6.606255906"/>
        <port xsi:type="esdl:InPort" name="Bus21Phase1In" id="Bus21Phase1In" connectedTo="line30Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus21Phase1Out" id="Bus21Phase1Out" connectedTo="line31Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line31" assetType="gplkh_4_6_curm_4_2p5" name="line31" length="3.0">
        <port xsi:type="esdl:InPort" name="line31Phase1In" id="line31Phase1In" connectedTo="Bus21Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line31Phase1Out" id="line31Phase1Out" connectedTo="Bus2101Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04272139" lon="6.606355906"/>
          <point xsi:type="esdl:Point" lat="52.04264222" lon="6.6063264010000005"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2101" name="Bus2101">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04269222" lon="6.606226401000001"/>
        <port xsi:type="esdl:InPort" name="Bus2101Phase1In" id="Bus2101Phase1In" connectedTo="line31Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus2101Phase2Out" id="Bus2101Phase2Out" connectedTo="EConnInuser11Phase2Inuser11Phase2In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line44" assetType="gplkh_4_50_cusvm_4_6" name="line44" length="1.0">
        <port xsi:type="esdl:InPort" name="line44Phase1In" id="line44Phase1In" connectedTo="Bus20Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line44Phase1Out" id="line44Phase1Out" connectedTo="Bus28Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04254011" lon="6.605991125"/>
          <point xsi:type="esdl:Point" lat="52.04245765" lon="6.60597235"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus28" name="Bus28">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.042507650000005" lon="6.60587235"/>
        <port xsi:type="esdl:InPort" name="Bus28Phase1In" id="Bus28Phase1In" connectedTo="line44Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus28Phase1Out" id="Bus28Phase1Out" connectedTo="line45Phase1In line102Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line45" assetType="gplkh_4_6_curm_4_2p5" name="line45" length="40.0">
        <port xsi:type="esdl:InPort" name="line45Phase1In" id="line45Phase1In" connectedTo="Bus28Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line45Phase1Out" id="line45Phase1Out" connectedTo="Bus2801Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04245765" lon="6.60597235"/>
          <point xsi:type="esdl:Point" lat="52.04245105" lon="6.606076956"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2801" name="Bus2801">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04250105" lon="6.605976956"/>
        <port xsi:type="esdl:InPort" name="Bus2801Phase1In" id="Bus2801Phase1In" connectedTo="line45Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus2801Phase3Out" id="Bus2801Phase3Out" connectedTo="EConnInuser18Phase3Inuser18Phase3In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line102" assetType="gplkh_4_50_cusvm_4_6" name="line102" length="3.0">
        <port xsi:type="esdl:InPort" name="line102Phase1In" id="line102Phase1In" connectedTo="Bus28Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line102Phase1Out" id="line102Phase1Out" connectedTo="Bus57Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04245765" lon="6.60597235"/>
          <point xsi:type="esdl:Point" lat="52.04237353" lon="6.605940163"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus57" name="Bus57">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04242353" lon="6.605840163"/>
        <port xsi:type="esdl:InPort" name="Bus57Phase1In" id="Bus57Phase1In" connectedTo="line102Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus57Phase1Out" id="Bus57Phase1Out" connectedTo="line103Phase1In line128Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line103" assetType="gplkh_4_10_curm_4_2p5" name="line103" length="4.0">
        <port xsi:type="esdl:InPort" name="line103Phase1In" id="line103Phase1In" connectedTo="Bus57Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line103Phase1Out" id="line103Phase1Out" connectedTo="Bus5701Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04237353" lon="6.605940163"/>
          <point xsi:type="esdl:Point" lat="52.04236199" lon="6.606060863"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5701" name="Bus5701">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.042411990000005" lon="6.605960863"/>
        <port xsi:type="esdl:InPort" name="Bus5701Phase1In" id="Bus5701Phase1In" connectedTo="line103Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus5701Phase2Out" id="Bus5701Phase2Out" connectedTo="EConnInuser47Phase2Inuser47Phase2In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line128" assetType="gplkh_4_50_cusvm_4_6" name="line128" length="3.0">
        <port xsi:type="esdl:InPort" name="line128Phase1In" id="line128Phase1In" connectedTo="Bus57Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line128Phase1Out" id="line128Phase1Out" connectedTo="Bus70Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04237353" lon="6.605940163"/>
          <point xsi:type="esdl:Point" lat="52.04229106" lon="6.605918705"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus70" name="Bus70">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04234106" lon="6.605818705"/>
        <port xsi:type="esdl:InPort" name="Bus70Phase1In" id="Bus70Phase1In" connectedTo="line128Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus70Phase1Out" id="Bus70Phase1Out" connectedTo="line129Phase1In line140Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line129" assetType="gplkh_4_6_curm_4_2p5" name="line129" length="21.0">
        <port xsi:type="esdl:InPort" name="line129Phase1In" id="line129Phase1In" connectedTo="Bus70Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line129Phase1Out" id="line129Phase1Out" connectedTo="Bus7001Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04229106" lon="6.605918705"/>
          <point xsi:type="esdl:Point" lat="52.04228282" lon="6.6060233120000005"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7001" name="Bus7001">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04233282" lon="6.605923312000001"/>
        <port xsi:type="esdl:InPort" name="Bus7001Phase1In" id="Bus7001Phase1In" connectedTo="line129Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus7001Phase3Out" id="Bus7001Phase3Out" connectedTo="EConnInuser60Phase3Inuser60Phase3In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line140" assetType="gplkh_4_50_cusvm_4_6" name="line140" length="4.0">
        <port xsi:type="esdl:InPort" name="line140Phase1In" id="line140Phase1In" connectedTo="Bus70Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line140Phase1Out" id="line140Phase1Out" connectedTo="Bus76Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04229106" lon="6.605918705"/>
          <point xsi:type="esdl:Point" lat="52.0422119" lon="6.60587579"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus76" name="Bus76">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.0422619" lon="6.60577579"/>
        <port xsi:type="esdl:InPort" name="Bus76Phase1In" id="Bus76Phase1In" connectedTo="line140Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus76Phase1Out" id="Bus76Phase1Out" connectedTo="line141Phase1In line146Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line141" assetType="gplkh_4_10_curm_4_2p5" name="line141" length="28.0">
        <port xsi:type="esdl:InPort" name="line141Phase1In" id="line141Phase1In" connectedTo="Bus76Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line141Phase1Out" id="line141Phase1Out" connectedTo="Bus7601Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0422119" lon="6.60587579"/>
          <point xsi:type="esdl:Point" lat="52.04221025" lon="6.605999172000001"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7601" name="Bus7601">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04226025" lon="6.605899172000001"/>
        <port xsi:type="esdl:InPort" name="Bus7601Phase1In" id="Bus7601Phase1In" connectedTo="line141Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus7601Phase1Out" id="Bus7601Phase1Out" connectedTo="EConnInuser66Phase1Inuser66Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line146" assetType="gplkh_4_50_cusvm_4_6" name="line146" length="9.0">
        <port xsi:type="esdl:InPort" name="line146Phase1In" id="line146Phase1In" connectedTo="Bus76Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line146Phase1Out" id="line146Phase1Out" connectedTo="Bus79Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0422119" lon="6.60587579"/>
          <point xsi:type="esdl:Point" lat="52.04213273" lon="6.605846286"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus79" name="Bus79">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04218273" lon="6.6057462860000005"/>
        <port xsi:type="esdl:InPort" name="Bus79Phase1In" id="Bus79Phase1In" connectedTo="line146Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus79Phase1Out" id="Bus79Phase1Out" connectedTo="line147Phase1In line168Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line147" assetType="gplkh_4_10_curm_4_2p5" name="line147" length="2.0">
        <port xsi:type="esdl:InPort" name="line147Phase1In" id="line147Phase1In" connectedTo="Bus79Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line147Phase1Out" id="line147Phase1Out" connectedTo="Bus7901Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04213273" lon="6.605846286"/>
          <point xsi:type="esdl:Point" lat="52.04213108" lon="6.605958939"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7901" name="Bus7901">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04218108" lon="6.605858939"/>
        <port xsi:type="esdl:InPort" name="Bus7901Phase1In" id="Bus7901Phase1In" connectedTo="line147Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus7901Phase1Out" id="Bus7901Phase1Out" connectedTo="EConnInuser69Phase1Inuser69Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line168" assetType="gplkh_4_50_cusvm_4_6" name="line168" length="9.0">
        <port xsi:type="esdl:InPort" name="line168Phase1In" id="line168Phase1In" connectedTo="Bus79Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line168Phase1Out" id="line168Phase1Out" connectedTo="Bus90Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04213273" lon="6.605846286"/>
          <point xsi:type="esdl:Point" lat="52.04206181" lon="6.605814099"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus90" name="Bus90">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04211181" lon="6.605714099"/>
        <port xsi:type="esdl:InPort" name="Bus90Phase1In" id="Bus90Phase1In" connectedTo="line168Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus90Phase1Out" id="Bus90Phase1Out" connectedTo="line169Phase1In line180Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line169" assetType="gplkh_4_10_curm_4_2p5" name="line169" length="40.0">
        <port xsi:type="esdl:InPort" name="line169Phase1In" id="line169Phase1In" connectedTo="Bus90Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line169Phase1Out" id="line169Phase1Out" connectedTo="Bus9001Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04206181" lon="6.605814099"/>
          <point xsi:type="esdl:Point" lat="52.04205191" lon="6.605934799"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9001" name="Bus9001">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04210191" lon="6.605834799"/>
        <port xsi:type="esdl:InPort" name="Bus9001Phase1In" id="Bus9001Phase1In" connectedTo="line169Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus9001Phase2Out" id="Bus9001Phase2Out" connectedTo="EConnInuser80Phase2Inuser80Phase2In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line180" assetType="gplkh_4_50_cusvm_4_6" name="line180" length="14.0">
        <port xsi:type="esdl:InPort" name="line180Phase1In" id="line180Phase1In" connectedTo="Bus90Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line180Phase1Out" id="line180Phase1Out" connectedTo="Bus96Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04206181" lon="6.605814099"/>
          <point xsi:type="esdl:Point" lat="52.04197934" lon="6.605784595"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus96" name="Bus96">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04202934" lon="6.6056845950000005"/>
        <port xsi:type="esdl:InPort" name="Bus96Phase1In" id="Bus96Phase1In" connectedTo="line180Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus96Phase1Out" id="Bus96Phase1Out" connectedTo="line181Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line181" assetType="gplkh_4_10_curm_4_2p5" name="line181" length="10.0">
        <port xsi:type="esdl:InPort" name="line181Phase1In" id="line181Phase1In" connectedTo="Bus96Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="line181Phase1Out" id="line181Phase1Out" connectedTo="Bus9601Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.04197934" lon="6.605784595"/>
          <point xsi:type="esdl:Point" lat="52.04197439" lon="6.605916023"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9601" name="Bus9601">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04202439" lon="6.605816023"/>
        <port xsi:type="esdl:InPort" name="Bus9601Phase1In" id="Bus9601Phase1In" connectedTo="line181Phase1Out" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="Bus9601Phase1Out" id="Bus9601Phase1Out" connectedTo="EConnInuser86Phase1Inuser86Phase1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:Transformer" capacity="800.0" id="transformer1" name="transformer1">
        <port xsi:type="esdl:InPort" name="transformer1In" id="transformer1In" connectedTo="BussourcebusOut" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="transformer1Out" id="transformer1Out" connectedTo="Bus1Phase1In" carrier="Electricity"/>
        <geometry xsi:type="esdl:Point" lat="52.04256757283102" lon="6.605487406286557"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bussourcebus" name="Bussourcebus">
        <geometry xsi:type="esdl:Point" lat="52.042455533466146" lon="6.605462193456334"/>
        <port xsi:type="esdl:InPort" name="BussourcebusIn" id="BussourcebusIn" connectedTo="GenProducerOut" carrier="Electricity"/>
        <port xsi:type="esdl:OutPort" name="BussourcebusOut" id="BussourcebusOut" connectedTo="transformer1In" carrier="Electricity"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" power="1000000000.0" prodType="FOSSIL" id="GenericElectricityProducer" name="Electricity production Provincie">
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.7" id="0fd72c70-fd6e-470e-83d1-f9d9a2f29e7a" name="GenericProducer_f09b-MarginalCosts"/>
        </costInformation>
        <port xsi:type="esdl:OutPort" name="GenProducerOut" id="GenProducerOut" connectedTo="BussourcebusIn" carrier="Electricity"/>
        <geometry xsi:type="esdl:Point" lat="52.04220026445083" lon="6.605390310287476"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_4" name="Building_4">
        <asset xsi:type="esdl:EConnection" id="user4" name="Bus1301">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="125.0"/>
          <port xsi:type="esdl:InPort" name="Inuser4Phase2In" id="EconnInuser4Phase2In" connectedTo="Bus1301Phase2Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="Outuser4Phase2In" id="EconnOutuser4Phase2In" connectedTo="EDemandInuser4Phase2In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user4EDemand" name="user4EDemand">
          <geometry xsi:type="esdl:Point" lat="164.0" lon="304.0"/>
          <port xsi:type="esdl:InPort" name="Inuser4Phase2In" id="EDemandInuser4Phase2In" connectedTo="EconnOutuser4Phase2In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user4" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_4"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04264222" lon="6.606229842"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_10" name="Building_10">
        <asset xsi:type="esdl:EConnection" id="user10" name="Bus2001">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser10Phase3Inuser10Phase3In" id="EConnInuser10Phase3Inuser10Phase3In" connectedTo="Bus2001Phase3Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser10Phase3In" id="EConnOutuser10Phase3In" connectedTo="EDemandInuser10Phase3In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user10EDemand" name="user10EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser10Phase3In" id="EDemandInuser10Phase3In" connectedTo="EConnOutuser10Phase3In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user10" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_10"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04252362" lon="6.606114507000001"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_11" name="Building_11">
        <asset xsi:type="esdl:EConnection" id="user11" name="Bus2101">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser11Phase2Inuser11Phase2In" id="EConnInuser11Phase2Inuser11Phase2In" connectedTo="Bus2101Phase2Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser11Phase2In" id="EConnOutuser11Phase2In" connectedTo="EDemandInuser11Phase2In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user11EDemand" name="user11EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser11Phase2In" id="EDemandInuser11Phase2In" connectedTo="EConnOutuser11Phase2In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user11" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_11"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04264222" lon="6.6063264010000005"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_18" name="Building_18">
        <asset xsi:type="esdl:EConnection" id="user18" name="Bus2801">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser18Phase3Inuser18Phase3In" id="EConnInuser18Phase3Inuser18Phase3In" connectedTo="Bus2801Phase3Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser18Phase3In" id="EConnOutuser18Phase3In" connectedTo="EDemandInuser18Phase3In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user18EDemand" name="user18EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser18Phase3In" id="EDemandInuser18Phase3In" connectedTo="EConnOutuser18Phase3In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user18" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_18"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04245105" lon="6.606076956"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_47" name="Building_47">
        <asset xsi:type="esdl:EConnection" id="user47" name="Bus5701">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser47Phase2Inuser47Phase2In" id="EConnInuser47Phase2Inuser47Phase2In" connectedTo="Bus5701Phase2Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser47Phase2In" id="EConnOutuser47Phase2In" connectedTo="EDemandInuser47Phase2In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user47EDemand" name="user47EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser47Phase2In" id="EDemandInuser47Phase2In" connectedTo="EConnOutuser47Phase2In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user47" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_47"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04236199" lon="6.606060863"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_60" name="Building_60">
        <asset xsi:type="esdl:EConnection" id="user60" name="Bus7001">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser60Phase3Inuser60Phase3In" id="EConnInuser60Phase3Inuser60Phase3In" connectedTo="Bus7001Phase3Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser60Phase3In" id="EConnOutuser60Phase3In" connectedTo="EDemandInuser60Phase3In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user60EDemand" name="user60EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser60Phase3In" id="EDemandInuser60Phase3In" connectedTo="EConnOutuser60Phase3In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user60" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_60"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04228282" lon="6.6060233120000005"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_66" name="Building_66">
        <asset xsi:type="esdl:EConnection" id="user66" name="Bus7601">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser66Phase1Inuser66Phase1In" id="EConnInuser66Phase1Inuser66Phase1In" connectedTo="Bus7601Phase1Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser66Phase1In" id="EConnOutuser66Phase1In" connectedTo="EDemandInuser66Phase1In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user66EDemand" name="user66EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser66Phase1In" id="EDemandInuser66Phase1In" connectedTo="EConnOutuser66Phase1In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user66" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_66"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04221025" lon="6.605999172000001"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_69" name="Building_69">
        <asset xsi:type="esdl:EConnection" id="user69" name="Bus7901">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser69Phase1Inuser69Phase1In" id="EConnInuser69Phase1Inuser69Phase1In" connectedTo="Bus7901Phase1Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser69Phase1In" id="EConnOutuser69Phase1In" connectedTo="EDemandInuser69Phase1In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user69EDemand" name="user69EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser69Phase1In" id="EDemandInuser69Phase1In" connectedTo="EConnOutuser69Phase1In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user69" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_69"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04213108" lon="6.605958939"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_80" name="Building_80">
        <asset xsi:type="esdl:EConnection" id="user80" name="Bus9001">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser80Phase2Inuser80Phase2In" id="EConnInuser80Phase2Inuser80Phase2In" connectedTo="Bus9001Phase2Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser80Phase2In" id="EConnOutuser80Phase2In" connectedTo="EDemandInuser80Phase2In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user80EDemand" name="user80EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser80Phase2In" id="EDemandInuser80Phase2In" connectedTo="EConnOutuser80Phase2In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user80" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_80"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04205191" lon="6.605934799"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_86" name="Building_86">
        <asset xsi:type="esdl:EConnection" id="user86" name="Bus9601">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="166.66666666666666"/>
          <port xsi:type="esdl:InPort" name="Inuser86Phase1Inuser86Phase1In" id="EConnInuser86Phase1Inuser86Phase1In" connectedTo="Bus9601Phase1Out" carrier="Electricity"/>
          <port xsi:type="esdl:OutPort" name="EConnOutuser86Phase1In" id="EConnOutuser86Phase1In" connectedTo="EDemandInuser86Phase1In" carrier="Electricity"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user86EDemand" name="user86EDemand">
          <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="333.3333333333333"/>
          <port xsi:type="esdl:InPort" name="EDemandInuser86Phase1In" id="EDemandInuser86Phase1In" connectedTo="EConnOutuser86Phase1In" carrier="Electricity">
            <profile xsi:type="esdl:InfluxDBProfile" database="SEMData" multiplier="1.5" filters="" profileType="ENERGY_IN_J" id="EDemand_user86" port="8086" measurement="elec_profiles" host="http://10.30.2.1" field="User_86"/>
          </port>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.04197439" lon="6.605916023"/>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser5CHP" name="DrivenByDemandUser5CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser9CHP" name="DrivenByDemandUser9CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser13CHP" name="DrivenByDemandUser13CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser15CHP" name="DrivenByDemandUser15CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser17CHP" name="DrivenByDemandUser17CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser19CHP" name="DrivenByDemandUser19CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser52CHP" name="DrivenByDemandUser52CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser55CHP" name="DrivenByDemandUser55CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser59CHP" name="DrivenByDemandUser59CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser61CHP" name="DrivenByDemandUser61CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser67CHP" name="DrivenByDemandUser67CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser68CHP" name="DrivenByDemandUser68CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser74CHP" name="DrivenByDemandUser74CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser78CHP" name="DrivenByDemandUser78CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser79CHP" name="DrivenByDemandUser79CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser84CHP" name="DrivenByDemandUser84CHP"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser5GH" name="DrivenByDemandUser5GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser9GH" name="DrivenByDemandUser9GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser13GH" name="DrivenByDemandUser13GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser15GH" name="DrivenByDemandUser15GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser17GH" name="DrivenByDemandUser17GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser19GH" name="DrivenByDemandUser19GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser52GH" name="DrivenByDemandUser52GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser55GH" name="DrivenByDemandUser55GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser59GH" name="DrivenByDemandUser59GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser61GH" name="DrivenByDemandUser61GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser67GH" name="DrivenByDemandUser67GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser68GH" name="DrivenByDemandUser68GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser74GH" name="DrivenByDemandUser74GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser78GH" name="DrivenByDemandUser78GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser79GH" name="DrivenByDemandUser79GH"/>
    <service xsi:type="esdl:DrivenByDemand" id="DrivenByDemandUser84GH" name="DrivenByDemandUser84GH"/>
  </services>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="ESI">
    <carriers xsi:type="esdl:Carriers" id="Carriers">
      <carrier xsi:type="esdl:ElectricityCommodity" voltage="240.0" name="Electricity" id="Electricity"/>
      <carrier xsi:type="esdl:GasCommodity" name="Gas" id="Gas"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="Heat"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
