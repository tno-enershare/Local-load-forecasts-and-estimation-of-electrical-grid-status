<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" version="8" id="dutch_feeder" esdlVersion="v2207" name="dutch_feeder">
  <instance xsi:type="esdl:Instance" id="dutch_feederInstance" name="dutch_feederInstance">
    <area xsi:type="esdl:Area" id="TestArea" name="Area">
      <asset xsi:type="esdl:Bus" id="Bus1" name="Bus1">
        <port xsi:type="esdl:InPort" id="Bus1Phase1In" connectedTo="transformer1Out" carrier="Electricity" name="Bus1Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus1Phase1Out" connectedTo="line21Phase1In line15Phase1In" carrier="Electricity" name="Bus1Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605515616000001" lat="52.04269403"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line15" name="line15" assetType="gplkh_4_50_cusvm_4_6" length="6.0">
        <port xsi:type="esdl:InPort" id="line15Phase1In" connectedTo="Bus1Phase1Out" carrier="Electricity" name="line15Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line15Phase1Out" connectedTo="Bus13Phase1In" carrier="Electricity" name="line15Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60610646" lat="52.0427034"/>
          <point xsi:type="esdl:Point" lon="6.606248617" lat="52.04271974"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus13" name="Bus13">
        <port xsi:type="esdl:InPort" id="Bus13Phase1In" connectedTo="line15Phase1Out" carrier="Electricity" name="Bus13Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus13Phase1Out" connectedTo="line16Phase1In line30Phase1In" carrier="Electricity" name="Bus13Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.6061486170000006" lat="52.042769740000004"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line16" name="line16" assetType="gplkh_4_25_curm_4_2p5" length="2.0">
        <port xsi:type="esdl:InPort" id="line16Phase1In" connectedTo="Bus13Phase1Out" carrier="Electricity" name="line16Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line16Phase1Out" connectedTo="Bus1301Phase1In" carrier="Electricity" name="line16Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.606248617" lat="52.04271974"/>
          <point xsi:type="esdl:Point" lon="6.606229842" lat="52.04264222"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus1301" name="Bus1301">
        <port xsi:type="esdl:InPort" id="Bus1301Phase1In" connectedTo="line16Phase1Out" carrier="Electricity" name="Bus1301Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus1301Phase1Out" connectedTo="EconnInuser4Phase1In" carrier="Electricity" name="Bus1301Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.6061298420000005" lat="52.04269222"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line21" name="line21" assetType="gplkh_4_50_cusvm_4_6" length="4.0">
        <port xsi:type="esdl:InPort" id="line21Phase1In" connectedTo="Bus1Phase1Out" carrier="Electricity" name="line21Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line21Phase1Out" connectedTo="Bus16Phase1In" carrier="Electricity" name="line21Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60610646" lat="52.0427034"/>
          <point xsi:type="esdl:Point" lon="6.60603404" lat="52.04260939"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus16" name="Bus16">
        <port xsi:type="esdl:InPort" id="Bus16Phase1In" connectedTo="line21Phase1Out" carrier="Electricity" name="Bus16Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus16Phase1Out" connectedTo="line28Phase1In" carrier="Electricity" name="Bus16Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.60593404" lat="52.042659390000004"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line28" name="line28" assetType="gplkh_4_50_cusvm_4_6" length="7.0">
        <port xsi:type="esdl:InPort" id="line28Phase1In" connectedTo="Bus16Phase1Out" carrier="Electricity" name="line28Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line28Phase1Out" connectedTo="Bus20Phase1In" carrier="Electricity" name="line28Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60603404" lat="52.04260939"/>
          <point xsi:type="esdl:Point" lon="6.605991125" lat="52.04254011"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus20" name="Bus20">
        <port xsi:type="esdl:InPort" id="Bus20Phase1In" connectedTo="line28Phase1Out" carrier="Electricity" name="Bus20Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus20Phase1Out" connectedTo="line29Phase1In line44Phase1In" carrier="Electricity" name="Bus20Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605891125" lat="52.04259011"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line29" name="line29" assetType="gplkh_4_25_curm_4_2p5" length="37.0">
        <port xsi:type="esdl:InPort" id="line29Phase1In" connectedTo="Bus20Phase1Out" carrier="Electricity" name="line29Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line29Phase1Out" connectedTo="Bus2001Phase1In" carrier="Electricity" name="line29Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605991125" lat="52.04254011"/>
          <point xsi:type="esdl:Point" lon="6.606114507000001" lat="52.04252362"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2001" name="Bus2001">
        <port xsi:type="esdl:InPort" id="Bus2001Phase1In" connectedTo="line29Phase1Out" carrier="Electricity" name="Bus2001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus2001Phase1Out" connectedTo="EConnInuser10Phase1Inuser10Phase1In" carrier="Electricity" name="Bus2001Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606014507000001" lat="52.04257362"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line30" name="line30" assetType="gplkh_4_50_cusvm_4_6" length="4.0">
        <port xsi:type="esdl:InPort" id="line30Phase1In" connectedTo="Bus13Phase1Out" carrier="Electricity" name="line30Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line30Phase1Out" connectedTo="Bus21Phase1In" carrier="Electricity" name="line30Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.606248617" lat="52.04271974"/>
          <point xsi:type="esdl:Point" lon="6.606355906" lat="52.04272139"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus21" name="Bus21">
        <port xsi:type="esdl:InPort" id="Bus21Phase1In" connectedTo="line30Phase1Out" carrier="Electricity" name="Bus21Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus21Phase1Out" connectedTo="line31Phase1In" carrier="Electricity" name="Bus21Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606255906" lat="52.04277139"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line31" name="line31" assetType="gplkh_4_6_curm_4_2p5" length="3.0">
        <port xsi:type="esdl:InPort" id="line31Phase1In" connectedTo="Bus21Phase1Out" carrier="Electricity" name="line31Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line31Phase1Out" connectedTo="Bus2101Phase1In" carrier="Electricity" name="line31Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.606355906" lat="52.04272139"/>
          <point xsi:type="esdl:Point" lon="6.6063264010000005" lat="52.04264222"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2101" name="Bus2101">
        <port xsi:type="esdl:InPort" id="Bus2101Phase1In" connectedTo="line31Phase1Out" carrier="Electricity" name="Bus2101Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus2101Phase1Out" connectedTo="EConnInuser11Phase1Inuser11Phase1In" carrier="Electricity" name="Bus2101Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606226401000001" lat="52.04269222"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line44" name="line44" assetType="gplkh_4_50_cusvm_4_6" length="1.0">
        <port xsi:type="esdl:InPort" id="line44Phase1In" connectedTo="Bus20Phase1Out" carrier="Electricity" name="line44Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line44Phase1Out" connectedTo="Bus28Phase1In" carrier="Electricity" name="line44Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605991125" lat="52.04254011"/>
          <point xsi:type="esdl:Point" lon="6.60597235" lat="52.04245765"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus28" name="Bus28">
        <port xsi:type="esdl:InPort" id="Bus28Phase1In" connectedTo="line44Phase1Out" carrier="Electricity" name="Bus28Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus28Phase1Out" connectedTo="line45Phase1In line102Phase1In" carrier="Electricity" name="Bus28Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.60587235" lat="52.042507650000005"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line45" name="line45" assetType="gplkh_4_6_curm_4_2p5" length="40.0">
        <port xsi:type="esdl:InPort" id="line45Phase1In" connectedTo="Bus28Phase1Out" carrier="Electricity" name="line45Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line45Phase1Out" connectedTo="Bus2801Phase1In" carrier="Electricity" name="line45Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60597235" lat="52.04245765"/>
          <point xsi:type="esdl:Point" lon="6.606076956" lat="52.04245105"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus2801" name="Bus2801">
        <port xsi:type="esdl:InPort" id="Bus2801Phase1In" connectedTo="line45Phase1Out" carrier="Electricity" name="Bus2801Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus2801Phase1Out" connectedTo="EConnInuser18Phase1Inuser18Phase1In" carrier="Electricity" name="Bus2801Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605976956" lat="52.04250105"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line102" name="line102" assetType="gplkh_4_50_cusvm_4_6" length="3.0">
        <port xsi:type="esdl:InPort" id="line102Phase1In" connectedTo="Bus28Phase1Out" carrier="Electricity" name="line102Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line102Phase1Out" connectedTo="Bus57Phase1In" carrier="Electricity" name="line102Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60597235" lat="52.04245765"/>
          <point xsi:type="esdl:Point" lon="6.605940163" lat="52.04237353"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus57" name="Bus57">
        <port xsi:type="esdl:InPort" id="Bus57Phase1In" connectedTo="line102Phase1Out" carrier="Electricity" name="Bus57Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus57Phase1Out" connectedTo="line103Phase1In line128Phase1In" carrier="Electricity" name="Bus57Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605840163" lat="52.04242353"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line103" name="line103" assetType="gplkh_4_10_curm_4_2p5" length="4.0">
        <port xsi:type="esdl:InPort" id="line103Phase1In" connectedTo="Bus57Phase1Out" carrier="Electricity" name="line103Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line103Phase1Out" connectedTo="Bus5701Phase1In" carrier="Electricity" name="line103Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605940163" lat="52.04237353"/>
          <point xsi:type="esdl:Point" lon="6.606060863" lat="52.04236199"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus5701" name="Bus5701">
        <port xsi:type="esdl:InPort" id="Bus5701Phase1In" connectedTo="line103Phase1Out" carrier="Electricity" name="Bus5701Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus5701Phase1Out" connectedTo="EConnInuser47Phase1Inuser47Phase1In" carrier="Electricity" name="Bus5701Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605960863" lat="52.042411990000005"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line128" name="line128" assetType="gplkh_4_50_cusvm_4_6" length="3.0">
        <port xsi:type="esdl:InPort" id="line128Phase1In" connectedTo="Bus57Phase1Out" carrier="Electricity" name="line128Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line128Phase1Out" connectedTo="Bus70Phase1In" carrier="Electricity" name="line128Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605940163" lat="52.04237353"/>
          <point xsi:type="esdl:Point" lon="6.605918705" lat="52.04229106"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus70" name="Bus70">
        <port xsi:type="esdl:InPort" id="Bus70Phase1In" connectedTo="line128Phase1Out" carrier="Electricity" name="Bus70Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus70Phase1Out" connectedTo="line129Phase1In line140Phase1In" carrier="Electricity" name="Bus70Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605818705" lat="52.04234106"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line129" name="line129" assetType="gplkh_4_6_curm_4_2p5" length="21.0">
        <port xsi:type="esdl:InPort" id="line129Phase1In" connectedTo="Bus70Phase1Out" carrier="Electricity" name="line129Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line129Phase1Out" connectedTo="Bus7001Phase1In" carrier="Electricity" name="line129Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605918705" lat="52.04229106"/>
          <point xsi:type="esdl:Point" lon="6.6060233120000005" lat="52.04228282"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7001" name="Bus7001">
        <port xsi:type="esdl:InPort" id="Bus7001Phase1In" connectedTo="line129Phase1Out" carrier="Electricity" name="Bus7001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus7001Phase1Out" connectedTo="EConnInuser60Phase1Inuser60Phase1In" carrier="Electricity" name="Bus7001Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605923312000001" lat="52.04233282"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line140" name="line140" assetType="gplkh_4_50_cusvm_4_6" length="4.0">
        <port xsi:type="esdl:InPort" id="line140Phase1In" connectedTo="Bus70Phase1Out" carrier="Electricity" name="line140Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line140Phase1Out" connectedTo="Bus76Phase1In" carrier="Electricity" name="line140Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605918705" lat="52.04229106"/>
          <point xsi:type="esdl:Point" lon="6.60587579" lat="52.0422119"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus76" name="Bus76">
        <port xsi:type="esdl:InPort" id="Bus76Phase1In" connectedTo="line140Phase1Out" carrier="Electricity" name="Bus76Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus76Phase1Out" connectedTo="line141Phase1In line146Phase1In" carrier="Electricity" name="Bus76Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.60577579" lat="52.0422619"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line141" name="line141" assetType="gplkh_4_10_curm_4_2p5" length="28.0">
        <port xsi:type="esdl:InPort" id="line141Phase1In" connectedTo="Bus76Phase1Out" carrier="Electricity" name="line141Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line141Phase1Out" connectedTo="Bus7601Phase1In" carrier="Electricity" name="line141Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60587579" lat="52.0422119"/>
          <point xsi:type="esdl:Point" lon="6.605999172000001" lat="52.04221025"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7601" name="Bus7601">
        <port xsi:type="esdl:InPort" id="Bus7601Phase1In" connectedTo="line141Phase1Out" carrier="Electricity" name="Bus7601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus7601Phase1Out" connectedTo="EConnInuser66Phase1Inuser66Phase1In" carrier="Electricity" name="Bus7601Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605899172000001" lat="52.04226025"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line146" name="line146" assetType="gplkh_4_50_cusvm_4_6" length="9.0">
        <port xsi:type="esdl:InPort" id="line146Phase1In" connectedTo="Bus76Phase1Out" carrier="Electricity" name="line146Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line146Phase1Out" connectedTo="Bus79Phase1In" carrier="Electricity" name="line146Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.60587579" lat="52.0422119"/>
          <point xsi:type="esdl:Point" lon="6.605846286" lat="52.04213273"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus79" name="Bus79">
        <port xsi:type="esdl:InPort" id="Bus79Phase1In" connectedTo="line146Phase1Out" carrier="Electricity" name="Bus79Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus79Phase1Out" connectedTo="line147Phase1In line168Phase1In" carrier="Electricity" name="Bus79Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.6057462860000005" lat="52.04218273"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line147" name="line147" assetType="gplkh_4_10_curm_4_2p5" length="2.0">
        <port xsi:type="esdl:InPort" id="line147Phase1In" connectedTo="Bus79Phase1Out" carrier="Electricity" name="line147Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line147Phase1Out" connectedTo="Bus7901Phase1In" carrier="Electricity" name="line147Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605846286" lat="52.04213273"/>
          <point xsi:type="esdl:Point" lon="6.605958939" lat="52.04213108"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus7901" name="Bus7901">
        <port xsi:type="esdl:InPort" id="Bus7901Phase1In" connectedTo="line147Phase1Out" carrier="Electricity" name="Bus7901Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus7901Phase1Out" connectedTo="EConnInuser69Phase1Inuser69Phase1In" carrier="Electricity" name="Bus7901Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605858939" lat="52.04218108"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line168" name="line168" assetType="gplkh_4_50_cusvm_4_6" length="9.0">
        <port xsi:type="esdl:InPort" id="line168Phase1In" connectedTo="Bus79Phase1Out" carrier="Electricity" name="line168Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line168Phase1Out" connectedTo="Bus90Phase1In" carrier="Electricity" name="line168Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605846286" lat="52.04213273"/>
          <point xsi:type="esdl:Point" lon="6.605814099" lat="52.04206181"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus90" name="Bus90">
        <port xsi:type="esdl:InPort" id="Bus90Phase1In" connectedTo="line168Phase1Out" carrier="Electricity" name="Bus90Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus90Phase1Out" connectedTo="line169Phase1In line180Phase1In" carrier="Electricity" name="Bus90Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605714099" lat="52.04211181"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line169" name="line169" assetType="gplkh_4_10_curm_4_2p5" length="40.0">
        <port xsi:type="esdl:InPort" id="line169Phase1In" connectedTo="Bus90Phase1Out" carrier="Electricity" name="line169Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line169Phase1Out" connectedTo="Bus9001Phase1In" carrier="Electricity" name="line169Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605814099" lat="52.04206181"/>
          <point xsi:type="esdl:Point" lon="6.605934799" lat="52.04205191"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9001" name="Bus9001">
        <port xsi:type="esdl:InPort" id="Bus9001Phase1In" connectedTo="line169Phase1Out" carrier="Electricity" name="Bus9001Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus9001Phase1Out" connectedTo="EConnInuser80Phase1Inuser80Phase1In" carrier="Electricity" name="Bus9001Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605834799" lat="52.04210191"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line180" name="line180" assetType="gplkh_4_50_cusvm_4_6" length="14.0">
        <port xsi:type="esdl:InPort" id="line180Phase1In" connectedTo="Bus90Phase1Out" carrier="Electricity" name="line180Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line180Phase1Out" connectedTo="Bus96Phase1In" carrier="Electricity" name="line180Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605814099" lat="52.04206181"/>
          <point xsi:type="esdl:Point" lon="6.605784595" lat="52.04197934"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus96" name="Bus96">
        <port xsi:type="esdl:InPort" id="Bus96Phase1In" connectedTo="line180Phase1Out" carrier="Electricity" name="Bus96Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus96Phase1Out" connectedTo="line181Phase1In" carrier="Electricity" name="Bus96Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.6056845950000005" lat="52.04202934"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" id="line181" name="line181" assetType="gplkh_4_10_curm_4_2p5" length="10.0">
        <port xsi:type="esdl:InPort" id="line181Phase1In" connectedTo="Bus96Phase1Out" carrier="Electricity" name="line181Phase1In"/>
        <port xsi:type="esdl:OutPort" id="line181Phase1Out" connectedTo="Bus9601Phase1In" carrier="Electricity" name="line181Phase1Out"/>
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="6.605784595" lat="52.04197934"/>
          <point xsi:type="esdl:Point" lon="6.605916023" lat="52.04197439"/>
        </geometry>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bus9601" name="Bus9601">
        <port xsi:type="esdl:InPort" id="Bus9601Phase1In" connectedTo="line181Phase1Out" carrier="Electricity" name="Bus9601Phase1In"/>
        <port xsi:type="esdl:OutPort" id="Bus9601Phase1Out" connectedTo="EConnInuser86Phase1Inuser86Phase1In" carrier="Electricity" name="Bus9601Phase1Out"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605816023" lat="52.04202439"/>
      </asset>
      <asset xsi:type="esdl:Transformer" id="transformer1" name="transformer1" capacity="800000.0">
        <port xsi:type="esdl:InPort" id="transformer1In" connectedTo="BussourcebusOut" carrier="Electricity" name="transformer1In"/>
        <port xsi:type="esdl:OutPort" id="transformer1Out" connectedTo="Bus1Phase1In" carrier="Electricity" name="transformer1Out"/>
        <geometry xsi:type="esdl:Point" lon="6.605487406286557" lat="52.04256757283102"/>
      </asset>
      <asset xsi:type="esdl:Bus" id="Bussourcebus" name="Bussourcebus">
        <port xsi:type="esdl:InPort" id="BussourcebusIn" connectedTo="GenProducerOut" carrier="Electricity" name="BussourcebusIn"/>
        <port xsi:type="esdl:OutPort" id="BussourcebusOut" connectedTo="transformer1In" carrier="Electricity" name="BussourcebusOut"/>
        <geometry xsi:type="esdl:Point" lon="6.605462193456334" lat="52.042455533466146"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericElectricityProducer" prodType="FOSSIL" power="1000000000.0" name="Electricity production Provincie">
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.7" name="GenericProducer_f09b-MarginalCosts" id="0fd72c70-fd6e-470e-83d1-f9d9a2f29e7a"/>
        </costInformation>
        <port xsi:type="esdl:OutPort" id="GenProducerOut" connectedTo="BussourcebusIn" carrier="Electricity" name="GenProducerOut"/>
        <geometry xsi:type="esdl:Point" lon="6.605390310287476" lat="52.04220026445083"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_4" name="Building_4">
        <asset xsi:type="esdl:EConnection" id="user4" name="Bus1301">
          <port xsi:type="esdl:InPort" id="EconnInuser4Phase1In" connectedTo="Bus1301Phase1Out" carrier="Electricity" name="Inuser4Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EconnOutuser4Phase1In" connectedTo="EDemandInuser4Phase1In" carrier="Electricity" name="Outuser4Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user4EDemand" name="user4EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser4Phase1In" connectedTo="EconnOutuser4Phase1In" carrier="Electricity" name="Inuser4Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_4" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user4"/>
          </port>
          <geometry xsi:type="esdl:Point" lon="304.0" lat="164.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606229842" lat="52.04264222"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_10" name="Building_10">
        <asset xsi:type="esdl:EConnection" id="user10" name="Bus2001">
          <port xsi:type="esdl:InPort" id="EConnInuser10Phase1Inuser10Phase1In" connectedTo="Bus2001Phase1Out" carrier="Electricity" name="Inuser10Phase1Inuser10Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser10Phase1In" connectedTo="EDemandInuser10Phase1In" carrier="Electricity" name="EConnOutuser10Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user10EDemand" name="user10EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser10Phase1In" connectedTo="EConnOutuser10Phase1In" carrier="Electricity" name="EDemandInuser10Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_10" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user10"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606114507000001" lat="52.04252362"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_11" name="Building_11">
        <asset xsi:type="esdl:EConnection" id="user11" name="Bus2101">
          <port xsi:type="esdl:InPort" id="EConnInuser11Phase1Inuser11Phase1In" connectedTo="Bus2101Phase1Out" carrier="Electricity" name="Inuser11Phase1Inuser11Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser11Phase1In" connectedTo="EDemandInuser11Phase1In" carrier="Electricity" name="EConnOutuser11Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user11EDemand" name="user11EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser11Phase1In" connectedTo="EConnOutuser11Phase1In" carrier="Electricity" name="EDemandInuser11Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_11" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user11"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.6063264010000005" lat="52.04264222"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_18" name="Building_18">
        <asset xsi:type="esdl:EConnection" id="user18" name="Bus2801">
          <port xsi:type="esdl:InPort" id="EConnInuser18Phase1Inuser18Phase1In" connectedTo="Bus2801Phase1Out" carrier="Electricity" name="Inuser18Phase1Inuser18Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser18Phase1In" connectedTo="EDemandInuser18Phase1In" carrier="Electricity" name="EConnOutuser18Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user18EDemand" name="user18EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser18Phase1In" connectedTo="EConnOutuser18Phase1In" carrier="Electricity" name="EDemandInuser18Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_18" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user18"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606076956" lat="52.04245105"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_47" name="Building_47">
        <asset xsi:type="esdl:EConnection" id="user47" name="Bus5701">
          <port xsi:type="esdl:InPort" id="EConnInuser47Phase1Inuser47Phase1In" connectedTo="Bus5701Phase1Out" carrier="Electricity" name="Inuser47Phase1Inuser47Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser47Phase1In" connectedTo="EDemandInuser47Phase1In" carrier="Electricity" name="EConnOutuser47Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user47EDemand" name="user47EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser47Phase1In" connectedTo="EConnOutuser47Phase1In" carrier="Electricity" name="EDemandInuser47Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_47" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user47"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.606060863" lat="52.04236199"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_60" name="Building_60">
        <asset xsi:type="esdl:EConnection" id="user60" name="Bus7001">
          <port xsi:type="esdl:InPort" id="EConnInuser60Phase1Inuser60Phase1In" connectedTo="Bus7001Phase1Out" carrier="Electricity" name="Inuser60Phase1Inuser60Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser60Phase1In" connectedTo="EDemandInuser60Phase1In" carrier="Electricity" name="EConnOutuser60Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user60EDemand" name="user60EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser60Phase1In" connectedTo="EConnOutuser60Phase1In" carrier="Electricity" name="EDemandInuser60Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_60" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user60"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.6060233120000005" lat="52.04228282"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_66" name="Building_66">
        <asset xsi:type="esdl:EConnection" id="user66" name="Bus7601">
          <port xsi:type="esdl:InPort" id="EConnInuser66Phase1Inuser66Phase1In" connectedTo="Bus7601Phase1Out" carrier="Electricity" name="Inuser66Phase1Inuser66Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser66Phase1In" connectedTo="EDemandInuser66Phase1In" carrier="Electricity" name="EConnOutuser66Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user66EDemand" name="user66EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser66Phase1In" connectedTo="EConnOutuser66Phase1In" carrier="Electricity" name="EDemandInuser66Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_66" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user66"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605999172000001" lat="52.04221025"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_69" name="Building_69">
        <asset xsi:type="esdl:EConnection" id="user69" name="Bus7901">
          <port xsi:type="esdl:InPort" id="EConnInuser69Phase1Inuser69Phase1In" connectedTo="Bus7901Phase1Out" carrier="Electricity" name="Inuser69Phase1Inuser69Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser69Phase1In" connectedTo="EDemandInuser69Phase1In" carrier="Electricity" name="EConnOutuser69Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user69EDemand" name="user69EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser69Phase1In" connectedTo="EConnOutuser69Phase1In" carrier="Electricity" name="EDemandInuser69Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_69" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user69"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605958939" lat="52.04213108"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_80" name="Building_80">
        <asset xsi:type="esdl:EConnection" id="user80" name="Bus9001">
          <port xsi:type="esdl:InPort" id="EConnInuser80Phase1Inuser80Phase1In" connectedTo="Bus9001Phase1Out OutUser80Phase1In" carrier="Electricity" name="Inuser80Phase1Inuser80Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser80Phase1In" connectedTo="EDemandInuser80Phase1In" carrier="Electricity" name="EConnOutuser80Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user80EDemand" name="user80EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser80Phase1In" connectedTo="EConnOutuser80Phase1In" carrier="Electricity" name="EDemandInuser80Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_80" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user80"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:PVInstallation" id="55b3a036-580e-44d1-8fe0-806999d44eb7" name="user80pvpanel">
          <port xsi:type="esdl:OutPort" id="OutUser80Phase1In" connectedTo="EConnInuser80Phase1Inuser80Phase1In" carrier="Electricity" name="Out"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="347.0" lat="179.78125"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605934799" lat="52.04205191"/>
      </asset>
      <asset xsi:type="esdl:Building" id="Building_86" name="Building_86">
        <asset xsi:type="esdl:EConnection" id="user86" name="Bus9601">
          <port xsi:type="esdl:InPort" id="EConnInuser86Phase1Inuser86Phase1In" connectedTo="Bus9601Phase1Out Outuser86Phase1In" carrier="Electricity" name="Inuser86Phase1Inuser86Phase1In"/>
          <port xsi:type="esdl:OutPort" id="EConnOutuser86Phase1In" connectedTo="EDemandInuser86Phase1In" carrier="Electricity" name="EConnOutuser86Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="166.66666666666666" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="user86EDemand" name="user86EDemand">
          <port xsi:type="esdl:InPort" id="EDemandInuser86Phase1In" connectedTo="EConnOutuser86Phase1In" carrier="Electricity" name="EDemandInuser86Phase1In">
            <profile xsi:type="esdl:InfluxDBProfile" profileType="ENERGY_IN_J" database="SEMData" field="User_86" measurement="elec_profiles" multiplier="1.5" port="8086" host="http://10.30.2.1" filters="" id="EDemand_user86"/>
          </port>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="333.3333333333333" lat="250.0"/>
        </asset>
        <asset xsi:type="esdl:PVInstallation" id="e4140c4f-e0d1-4b30-a1d8-ab67f0ddd73d" name="user86pvpanel">
          <port xsi:type="esdl:OutPort" id="Outuser86Phase1In" connectedTo="EConnInuser86Phase1Inuser86Phase1In" carrier="Electricity" name="Outuser86Phase1In"/>
          <geometry xsi:type="esdl:Point" CRS="Simple" lon="330.0" lat="181.78125"/>
        </asset>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="6.605916023" lat="52.04197439"/>
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
      <carrier xsi:type="esdl:ElectricityCommodity" id="Electricity" voltage="240.0" name="Electricity"/>
      <carrier xsi:type="esdl:GasCommodity" id="Gas" name="Gas"/>
      <carrier xsi:type="esdl:HeatCommodity" id="Heat" name="Heat"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
