import 'package:json_annotation/json_annotation.dart';

part 'ModelRedData.g.dart';

@JsonSerializable()
class RedData {
   RedData({
    required this.dot11Device,
    required this.kismetDeviceBaseBasicCryptSet,
    required this.kismetDeviceBaseBasicTypeSet,
    required this.kismetDeviceBaseChannel,
    required this.kismetDeviceBaseCommonname,
    required this.kismetDeviceBaseCrypt,
    required this.kismetDeviceBaseDatasize,
    required this.kismetDeviceBaseDatasizeRrd,
    required this.kismetDeviceBaseFirstTime,
    required this.kismetDeviceBaseFreqKhzMap,
    required this.kismetDeviceBaseFrequency,
    required this.kismetDeviceBaseKey,
    required this.kismetDeviceBaseLastTime,
    required this.kismetDeviceBaseMacaddr,
    required this.kismetDeviceBaseManuf,
    required this.kismetDeviceBaseModTime,
    required this.kismetDeviceBaseName,
    required this.kismetDeviceBaseNumAlerts,
    required this.kismetDeviceBasePacketsCrypt,
    required this.kismetDeviceBasePacketsData,
    required this.kismetDeviceBasePacketsError,
    required this.kismetDeviceBasePacketsFiltered,
    required this.kismetDeviceBasePacketsLlc,
    required this.kismetDeviceBasePacketsRrd,
    required this.kismetDeviceBasePacketsRx,
    required this.kismetDeviceBasePacketsTotal,
    required this.kismetDeviceBasePacketsTx,
    required this.kismetDeviceBasePhyname,
    required this.kismetDeviceBaseRelatedDevices,
    required this.kismetDeviceBaseSeenby,
    required this.kismetDeviceBaseType,
    required this.kismetServerUuid,
  });
  Dot11Device dot11Device;
  int kismetDeviceBaseBasicCryptSet;
  int kismetDeviceBaseBasicTypeSet;
  String kismetDeviceBaseChannel;
  String kismetDeviceBaseCommonname;
  String kismetDeviceBaseCrypt;
  int kismetDeviceBaseDatasize;
  KismetDeviceBaseRrd kismetDeviceBaseDatasizeRrd;
  int kismetDeviceBaseFirstTime;
  KismetDeviceBase kismetDeviceBaseFreqKhzMap;
  int kismetDeviceBaseFrequency;
  String kismetDeviceBaseKey;
  int kismetDeviceBaseLastTime;
  String kismetDeviceBaseMacaddr;
  @JsonKey(name: "kismet.device.base.manuf")
  String kismetDeviceBaseManuf;
  int kismetDeviceBaseModTime;
  String kismetDeviceBaseName;
  int kismetDeviceBaseNumAlerts;
  int kismetDeviceBasePacketsCrypt;
  int kismetDeviceBasePacketsData;
  int kismetDeviceBasePacketsError;
  int kismetDeviceBasePacketsFiltered;
  int kismetDeviceBasePacketsLlc;
  KismetDeviceBaseRrd kismetDeviceBasePacketsRrd;
  int kismetDeviceBasePacketsRx;
  int kismetDeviceBasePacketsTotal;
  int kismetDeviceBasePacketsTx;
  String kismetDeviceBasePhyname;
  KismetDeviceBase kismetDeviceBaseRelatedDevices;
  List<KismetDeviceBaseSeenby> kismetDeviceBaseSeenby;
  String kismetDeviceBaseType;
  String kismetServerUuid;

  factory RedData.fromJson(Map<dynamic, dynamic> json) => RedData(
        dot11Device: Dot11Device.fromJson(json["dot11.device"]),
        kismetDeviceBaseBasicCryptSet:
            json["kismet.device.base.basic_crypt_set"],
        kismetDeviceBaseBasicTypeSet: json["kismet.device.base.basic_type_set"],
        kismetDeviceBaseChannel: json["kismet.device.base.channel"],
        kismetDeviceBaseCommonname: json["kismet.device.base.commonname"],
        kismetDeviceBaseCrypt: json["kismet.device.base.crypt"],
        kismetDeviceBaseDatasize: json["kismet.device.base.datasize"],
        kismetDeviceBaseDatasizeRrd: KismetDeviceBaseRrd.fromJson(
            json["kismet.device.base.datasize.rrd"]),
        kismetDeviceBaseFirstTime: json["kismet.device.base.first_time"],
        kismetDeviceBaseFreqKhzMap:
            KismetDeviceBase.fromJson(json["kismet.device.base.freq_khz_map"]),
        kismetDeviceBaseFrequency: json["kismet.device.base.frequency"],
        kismetDeviceBaseKey: json["kismet.device.base.key"],
        kismetDeviceBaseLastTime: json["kismet.device.base.last_time"],
        kismetDeviceBaseMacaddr: json["kismet.device.base.macaddr"],
        kismetDeviceBaseManuf: json["kismet.device.base.manuf"],
        kismetDeviceBaseModTime: json["kismet.device.base.mod_time"],
        kismetDeviceBaseName: json["kismet.device.base.name"],
        kismetDeviceBaseNumAlerts: json["kismet.device.base.num_alerts"],
        kismetDeviceBasePacketsCrypt: json["kismet.device.base.packets.crypt"],
        kismetDeviceBasePacketsData: json["kismet.device.base.packets.data"],
        kismetDeviceBasePacketsError: json["kismet.device.base.packets.error"],
        kismetDeviceBasePacketsFiltered:
            json["kismet.device.base.packets.filtered"],
        kismetDeviceBasePacketsLlc: json["kismet.device.base.packets.llc"],
        kismetDeviceBasePacketsRrd: KismetDeviceBaseRrd.fromJson(
            json["kismet.device.base.packets.rrd"]),
        kismetDeviceBasePacketsRx: json["kismet.device.base.packets.rx"],
        kismetDeviceBasePacketsTotal: json["kismet.device.base.packets.total"],
        kismetDeviceBasePacketsTx: json["kismet.device.base.packets.tx"],
        kismetDeviceBasePhyname: json["kismet.device.base.phyname"],
        kismetDeviceBaseRelatedDevices: KismetDeviceBase.fromJson(
            json["kismet.device.base.related_devices"]),
        kismetDeviceBaseSeenby: List<KismetDeviceBaseSeenby>.from(
            json["kismet.device.base.seenby"]
                .map((x) => KismetDeviceBaseSeenby.fromJson(x))),
        kismetDeviceBaseType: json["kismet.device.base.type"],
        kismetServerUuid: json["kismet.server.uuid"],
      );

  Map<dynamic, dynamic> toJson() => {
        "dot11.device": dot11Device.toJson(),
        "kismet.device.base.basic_crypt_set": kismetDeviceBaseBasicCryptSet,
        "kismet.device.base.basic_type_set": kismetDeviceBaseBasicTypeSet,
        "kismet.device.base.channel": kismetDeviceBaseChannel,
        "kismet.device.base.commonname": kismetDeviceBaseCommonname,
        "kismet.device.base.crypt": kismetDeviceBaseCrypt,
        "kismet.device.base.datasize": kismetDeviceBaseDatasize,
        "kismet.device.base.datasize.rrd": kismetDeviceBaseDatasizeRrd.toJson(),
        "kismet.device.base.first_time": kismetDeviceBaseFirstTime,
        "kismet.device.base.freq_khz_map": kismetDeviceBaseFreqKhzMap.toJson(),
        "kismet.device.base.frequency": kismetDeviceBaseFrequency,
        "kismet.device.base.key": kismetDeviceBaseKey,
        "kismet.device.base.last_time": kismetDeviceBaseLastTime,
        "kismet.device.base.macaddr": kismetDeviceBaseMacaddr,
        "kismet.device.base.manuf": kismetDeviceBaseManuf,
        "kismet.device.base.mod_time": kismetDeviceBaseModTime,
        "kismet.device.base.name": kismetDeviceBaseName,
        "kismet.device.base.num_alerts": kismetDeviceBaseNumAlerts,
        "kismet.device.base.packets.crypt": kismetDeviceBasePacketsCrypt,
        "kismet.device.base.packets.data": kismetDeviceBasePacketsData,
        "kismet.device.base.packets.error": kismetDeviceBasePacketsError,
        "kismet.device.base.packets.filtered": kismetDeviceBasePacketsFiltered,
        "kismet.device.base.packets.llc": kismetDeviceBasePacketsLlc,
        "kismet.device.base.packets.rrd": kismetDeviceBasePacketsRrd.toJson(),
        "kismet.device.base.packets.rx": kismetDeviceBasePacketsRx,
        "kismet.device.base.packets.total": kismetDeviceBasePacketsTotal,
        "kismet.device.base.packets.tx": kismetDeviceBasePacketsTx,
        "kismet.device.base.phyname": kismetDeviceBasePhyname,
        "kismet.device.base.related_devices":
            kismetDeviceBaseRelatedDevices.toJson(),
        "kismet.device.base.seenby":
            List<dynamic>.from(kismetDeviceBaseSeenby.map((x) => x.toJson())),
        "kismet.device.base.type": kismetDeviceBaseType,
        "kismet.server.uuid": kismetServerUuid,
      };
}

@JsonSerializable()
class Dot11Device {
  Dot11Device({
    required this.dot11DeviceBeaconFingerprint,
    required this.dot11DeviceBssTimestamp,
    required this.dot11DeviceClientDisconnects,
    required this.dot11DeviceClientDisconnectsLast,
    required this.dot11DeviceClientMap,
    required this.dot11DeviceDatasize,
    required this.dot11DeviceDatasizeRetry,
    required this.dot11DeviceLastBeaconTimestamp,
    required this.dot11DeviceLastBssid,
    required this.dot11DeviceLastSequence,
    required this.dot11DeviceLinkMeasurementCapable,
    required this.dot11DeviceMaxTxPower,
    required this.dot11DeviceMinTxPower,
    required this.dot11DeviceNeighborReportCapable,
    required this.dot11DeviceNumAdvertisedSsids,
    required this.dot11DeviceNumAssociatedClients,
    required this.dot11DeviceNumClientAps,
    required this.dot11DeviceNumFragments,
    required this.dot11DeviceNumProbedSsids,
    required this.dot11DeviceNumRespondedSsids,
    required this.dot11DeviceNumRetries,
    required this.dot11DeviceProbeFingerprint,
    required this.dot11DeviceResponseFingerprint,
    required this.dot11DeviceTypeset,
    required this.dot11DeviceWpaPresentHandshake,
    required this.dot11DeviceWpsM3Count,
    required this.dot11DeviceWpsM3Last,
  });

  int dot11DeviceBeaconFingerprint;
  int dot11DeviceBssTimestamp;
  int dot11DeviceClientDisconnects;
  int dot11DeviceClientDisconnectsLast;
  Dot11DeviceClientMap dot11DeviceClientMap;
  int dot11DeviceDatasize;
  int dot11DeviceDatasizeRetry;
  int dot11DeviceLastBeaconTimestamp;
  String dot11DeviceLastBssid;
  int dot11DeviceLastSequence;
  int dot11DeviceLinkMeasurementCapable;
  int dot11DeviceMaxTxPower;
  int dot11DeviceMinTxPower;
  int dot11DeviceNeighborReportCapable;
  int dot11DeviceNumAdvertisedSsids;
  int dot11DeviceNumAssociatedClients;
  int dot11DeviceNumClientAps;
  int dot11DeviceNumFragments;
  int dot11DeviceNumProbedSsids;
  int dot11DeviceNumRespondedSsids;
  int dot11DeviceNumRetries;
  int dot11DeviceProbeFingerprint;
  int dot11DeviceResponseFingerprint;
  int dot11DeviceTypeset;
  int dot11DeviceWpaPresentHandshake;
  int dot11DeviceWpsM3Count;
  int dot11DeviceWpsM3Last;

  factory Dot11Device.fromJson(Map<dynamic, dynamic> json) => Dot11Device(
        dot11DeviceBeaconFingerprint: json["dot11.device.beacon_fingerprint"],
        dot11DeviceBssTimestamp: json["dot11.device.bss_timestamp"],
        dot11DeviceClientDisconnects: json["dot11.device.client_disconnects"],
        dot11DeviceClientDisconnectsLast:
            json["dot11.device.client_disconnects_last"],
        dot11DeviceClientMap:
            Dot11DeviceClientMap.fromJson(json["dot11.device.client_map"]),
        dot11DeviceDatasize: json["dot11.device.datasize"],
        dot11DeviceDatasizeRetry: json["dot11.device.datasize_retry"],
        dot11DeviceLastBeaconTimestamp:
            json["dot11.device.last_beacon_timestamp"],
        dot11DeviceLastBssid: json["dot11.device.last_bssid"],
        dot11DeviceLastSequence: json["dot11.device.last_sequence"],
        dot11DeviceLinkMeasurementCapable:
            json["dot11.device.link_measurement_capable"],
        dot11DeviceMaxTxPower: json["dot11.device.max_tx_power"],
        dot11DeviceMinTxPower: json["dot11.device.min_tx_power"],
        dot11DeviceNeighborReportCapable:
            json["dot11.device.neighbor_report_capable"],
        dot11DeviceNumAdvertisedSsids:
            json["dot11.device.num_advertised_ssids"],
        dot11DeviceNumAssociatedClients:
            json["dot11.device.num_associated_clients"],
        dot11DeviceNumClientAps: json["dot11.device.num_client_aps"],
        dot11DeviceNumFragments: json["dot11.device.num_fragments"],
        dot11DeviceNumProbedSsids: json["dot11.device.num_probed_ssids"],
        dot11DeviceNumRespondedSsids: json["dot11.device.num_responded_ssids"],
        dot11DeviceNumRetries: json["dot11.device.num_retries"],
        dot11DeviceProbeFingerprint: json["dot11.device.probe_fingerprint"],
        dot11DeviceResponseFingerprint:
            json["dot11.device.response_fingerprint"],
        dot11DeviceTypeset: json["dot11.device.typeset"],
        dot11DeviceWpaPresentHandshake:
            json["dot11.device.wpa_present_handshake"],
        dot11DeviceWpsM3Count: json["dot11.device.wps_m3_count"],
        dot11DeviceWpsM3Last: json["dot11.device.wps_m3_last"],
      );

  Map<dynamic, dynamic> toJson() => {
        "dot11.device.beacon_fingerprint": dot11DeviceBeaconFingerprint,
        "dot11.device.bss_timestamp": dot11DeviceBssTimestamp,
        "dot11.device.client_disconnects": dot11DeviceClientDisconnects,
        "dot11.device.client_disconnects_last":
            dot11DeviceClientDisconnectsLast,
        "dot11.device.client_map": dot11DeviceClientMap.toJson(),
        "dot11.device.datasize": dot11DeviceDatasize,
        "dot11.device.datasize_retry": dot11DeviceDatasizeRetry,
        "dot11.device.last_beacon_timestamp": dot11DeviceLastBeaconTimestamp,
        "dot11.device.last_bssid": dot11DeviceLastBssid,
        "dot11.device.last_sequence": dot11DeviceLastSequence,
        "dot11.device.link_measurement_capable":
            dot11DeviceLinkMeasurementCapable,
        "dot11.device.max_tx_power": dot11DeviceMaxTxPower,
        "dot11.device.min_tx_power": dot11DeviceMinTxPower,
        "dot11.device.neighbor_report_capable":
            dot11DeviceNeighborReportCapable,
        "dot11.device.num_advertised_ssids": dot11DeviceNumAdvertisedSsids,
        "dot11.device.num_associated_clients": dot11DeviceNumAssociatedClients,
        "dot11.device.num_client_aps": dot11DeviceNumClientAps,
        "dot11.device.num_fragments": dot11DeviceNumFragments,
        "dot11.device.num_probed_ssids": dot11DeviceNumProbedSsids,
        "dot11.device.num_responded_ssids": dot11DeviceNumRespondedSsids,
        "dot11.device.num_retries": dot11DeviceNumRetries,
        "dot11.device.probe_fingerprint": dot11DeviceProbeFingerprint,
        "dot11.device.response_fingerprint": dot11DeviceResponseFingerprint,
        "dot11.device.typeset": dot11DeviceTypeset,
        "dot11.device.wpa_present_handshake": dot11DeviceWpaPresentHandshake,
        "dot11.device.wps_m3_count": dot11DeviceWpsM3Count,
        "dot11.device.wps_m3_last": dot11DeviceWpsM3Last,
      };
}

@JsonSerializable()
class Dot11DeviceClientMap {
  Dot11DeviceClientMap({
    required this.the48E244E5CcB3,
  });

  The48E244E5CcB3 the48E244E5CcB3;

  factory Dot11DeviceClientMap.fromJson(Map<dynamic, dynamic> json) =>
      Dot11DeviceClientMap(
        the48E244E5CcB3: The48E244E5CcB3.fromJson(json["48:E2:44:E5:CC:B3"]),
      );

  Map<String, dynamic> toJson() => {
        "48:E2:44:E5:CC:B3": the48E244E5CcB3.toJson(),
      };
}

@JsonSerializable()
class The48E244E5CcB3 {
  The48E244E5CcB3({
    required this.dot11ClientBssid,
    required this.dot11ClientBssidKey,
    required this.dot11ClientDatasize,
    required this.dot11ClientDatasizeRetry,
    required this.dot11ClientDecrypted,
    required this.dot11ClientFirstTime,
    required this.dot11ClientLastTime,
    required this.dot11ClientNumFragments,
    required this.dot11ClientNumRetries,
    required this.dot11ClientRxCryptset,
    required this.dot11ClientTxCryptset,
    required this.dot11ClientType,
  });

  String dot11ClientBssid;
  String dot11ClientBssidKey;
  int dot11ClientDatasize;
  int dot11ClientDatasizeRetry;
  int dot11ClientDecrypted;
  int dot11ClientFirstTime;
  int dot11ClientLastTime;
  int dot11ClientNumFragments;
  int dot11ClientNumRetries;
  int dot11ClientRxCryptset;
  int dot11ClientTxCryptset;
  int dot11ClientType;

  factory The48E244E5CcB3.fromJson(Map<dynamic, dynamic> json) =>
      The48E244E5CcB3(
        dot11ClientBssid: json["dot11.client.bssid"],
        dot11ClientBssidKey: json["dot11.client.bssid_key"],
        dot11ClientDatasize: json["dot11.client.datasize"],
        dot11ClientDatasizeRetry: json["dot11.client.datasize_retry"],
        dot11ClientDecrypted: json["dot11.client.decrypted"],
        dot11ClientFirstTime: json["dot11.client.first_time"],
        dot11ClientLastTime: json["dot11.client.last_time"],
        dot11ClientNumFragments: json["dot11.client.num_fragments"],
        dot11ClientNumRetries: json["dot11.client.num_retries"],
        dot11ClientRxCryptset: json["dot11.client.rx_cryptset"],
        dot11ClientTxCryptset: json["dot11.client.tx_cryptset"],
        dot11ClientType: json["dot11.client.type"],
      );

  Map<dynamic, dynamic> toJson() => {
        "dot11.client.bssid": dot11ClientBssid,
        "dot11.client.bssid_key": dot11ClientBssidKey,
        "dot11.client.datasize": dot11ClientDatasize,
        "dot11.client.datasize_retry": dot11ClientDatasizeRetry,
        "dot11.client.decrypted": dot11ClientDecrypted,
        "dot11.client.first_time": dot11ClientFirstTime,
        "dot11.client.last_time": dot11ClientLastTime,
        "dot11.client.num_fragments": dot11ClientNumFragments,
        "dot11.client.num_retries": dot11ClientNumRetries,
        "dot11.client.rx_cryptset": dot11ClientRxCryptset,
        "dot11.client.tx_cryptset": dot11ClientTxCryptset,
        "dot11.client.type": dot11ClientType,
      };
}

@JsonSerializable()
class KismetDeviceBaseRrd {
  KismetDeviceBaseRrd({
    required this.kismetCommonRrdBlankVal,
    required this.kismetCommonRrdDayVec,
    required this.kismetCommonRrdHourVec,
    required this.kismetCommonRrdLastTime,
    required this.kismetCommonRrdMinuteVec,
    required this.kismetCommonRrdSerialTime,
  });

  int kismetCommonRrdBlankVal;
  List<int> kismetCommonRrdDayVec;
  List<int> kismetCommonRrdHourVec;
  int kismetCommonRrdLastTime;
  List<int> kismetCommonRrdMinuteVec;
  int kismetCommonRrdSerialTime;

  factory KismetDeviceBaseRrd.fromJson(Map<dynamic, dynamic> json) =>
      KismetDeviceBaseRrd(
        kismetCommonRrdBlankVal: json["kismet.common.rrd.blank_val"],
        kismetCommonRrdDayVec:
            List<int>.from(json["kismet.common.rrd.day_vec"].map((x) => x)),
        kismetCommonRrdHourVec:
            List<int>.from(json["kismet.common.rrd.hour_vec"].map((x) => x)),
        kismetCommonRrdLastTime: json["kismet.common.rrd.last_time"],
        kismetCommonRrdMinuteVec:
            List<int>.from(json["kismet.common.rrd.minute_vec"].map((x) => x)),
        kismetCommonRrdSerialTime: json["kismet.common.rrd.serial_time"],
      );

  Map<dynamic, dynamic> toJson() => {
        "kismet.common.rrd.blank_val": kismetCommonRrdBlankVal,
        "kismet.common.rrd.day_vec":
            List<dynamic>.from(kismetCommonRrdDayVec.map((x) => x)),
        "kismet.common.rrd.hour_vec":
            List<dynamic>.from(kismetCommonRrdHourVec.map((x) => x)),
        "kismet.common.rrd.last_time": kismetCommonRrdLastTime,
        "kismet.common.rrd.minute_vec":
            List<dynamic>.from(kismetCommonRrdMinuteVec.map((x) => x)),
        "kismet.common.rrd.serial_time": kismetCommonRrdSerialTime,
      };
}

@JsonSerializable()
class KismetDeviceBase {
  KismetDeviceBase();

  factory KismetDeviceBase.fromJson(Map<dynamic, dynamic> json) =>
      KismetDeviceBase();

  Map<dynamic, dynamic> toJson() => {};
}

@JsonSerializable()
class KismetDeviceBaseSeenby {
  KismetDeviceBaseSeenby({
    required this.kismetCommonSeenbyFirstTime,
    required this.kismetCommonSeenbyLastTime,
    required this.kismetCommonSeenbyNumPackets,
    required this.kismetCommonSeenbyUuid,
  });

  int kismetCommonSeenbyFirstTime;
  int kismetCommonSeenbyLastTime;
  int kismetCommonSeenbyNumPackets;
  String kismetCommonSeenbyUuid;

  factory KismetDeviceBaseSeenby.fromJson(Map<dynamic, dynamic> json) =>
      KismetDeviceBaseSeenby(
        kismetCommonSeenbyFirstTime: json["kismet.common.seenby.first_time"],
        kismetCommonSeenbyLastTime: json["kismet.common.seenby.last_time"],
        kismetCommonSeenbyNumPackets: json["kismet.common.seenby.num_packets"],
        kismetCommonSeenbyUuid: json["kismet.common.seenby.uuid"],
      );

  Map<dynamic, dynamic> toJson() => {
        "kismet.common.seenby.first_time": kismetCommonSeenbyFirstTime,
        "kismet.common.seenby.last_time": kismetCommonSeenbyLastTime,
        "kismet.common.seenby.num_packets": kismetCommonSeenbyNumPackets,
        "kismet.common.seenby.uuid": kismetCommonSeenbyUuid,
      };
}
