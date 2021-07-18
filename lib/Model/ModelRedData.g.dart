// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelRedData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
RedData _$RedDataFromJson(Map<String, dynamic> json) {
  return RedData(
    dot11Device:
        Dot11Device.fromJson(json['dot11Device'] as Map<dynamic, dynamic>),
    kismetDeviceBaseBasicCryptSet: json['kismetDeviceBaseBasicCryptSet'] as int,
    kismetDeviceBaseBasicTypeSet: json['kismetDeviceBaseBasicTypeSet'] as int,
    kismetDeviceBaseChannel: json['kismetDeviceBaseChannel'] as String,
    kismetDeviceBaseCommonname: json['kismetDeviceBaseCommonname'] as String,
    kismetDeviceBaseCrypt: json['kismetDeviceBaseCrypt'] as String,
    kismetDeviceBaseDatasize: json['kismetDeviceBaseDatasize'] as int,
    kismetDeviceBaseDatasizeRrd: KismetDeviceBaseRrd.fromJson(
        json['kismetDeviceBaseDatasizeRrd'] as Map<String, dynamic>),
    kismetDeviceBaseFirstTime: json['kismetDeviceBaseFirstTime'] as int,
    kismetDeviceBaseFreqKhzMap: KismetDeviceBase.fromJson(
        json['kismetDeviceBaseFreqKhzMap'] as Map<dynamic, dynamic>),
    kismetDeviceBaseFrequency: json['kismetDeviceBaseFrequency'] as int,
    kismetDeviceBaseKey: json['kismetDeviceBaseKey'] as String,
    kismetDeviceBaseLastTime: json['kismetDeviceBaseLastTime'] as int,
    kismetDeviceBaseMacaddr: json['kismetDeviceBaseMacaddr'] as String,
    kismetDeviceBaseManuf: json['kismet.device.base.manuf'] as String,
    kismetDeviceBaseModTime: json['kismetDeviceBaseModTime'] as int,
    kismetDeviceBaseName: json['kismetDeviceBaseName'] as String,
    kismetDeviceBaseNumAlerts: json['kismetDeviceBaseNumAlerts'] as int,
    kismetDeviceBasePacketsCrypt: json['kismetDeviceBasePacketsCrypt'] as int,
    kismetDeviceBasePacketsData: json['kismetDeviceBasePacketsData'] as int,
    kismetDeviceBasePacketsError: json['kismetDeviceBasePacketsError'] as int,
    kismetDeviceBasePacketsFiltered:
        json['kismetDeviceBasePacketsFiltered'] as int,
    kismetDeviceBasePacketsLlc: json['kismetDeviceBasePacketsLlc'] as int,
    kismetDeviceBasePacketsRrd: KismetDeviceBaseRrd.fromJson(
        json['kismetDeviceBasePacketsRrd'] as Map<dynamic, dynamic>),
    kismetDeviceBasePacketsRx: json['kismetDeviceBasePacketsRx'] as int,
    kismetDeviceBasePacketsTotal: json['kismetDeviceBasePacketsTotal'] as int,
    kismetDeviceBasePacketsTx: json['kismetDeviceBasePacketsTx'] as int,
    kismetDeviceBasePhyname: json['kismetDeviceBasePhyname'] as String,
    kismetDeviceBaseRelatedDevices: KismetDeviceBase.fromJson(
        json['kismetDeviceBaseRelatedDevices'] as Map<dynamic, dynamic>),
    kismetDeviceBaseSeenby: (json['kismetDeviceBaseSeenby'] as List<dynamic>)
        .map((e) => KismetDeviceBaseSeenby.fromJson(e as Map<dynamic, dynamic>))
        .toList(),
    kismetDeviceBaseType: json['kismetDeviceBaseType'] as String,
    kismetServerUuid: json['kismetServerUuid'] as String,
  );
}

// ignore: unused_element
Map<dynamic, dynamic> _$RedDataToJson(RedData instance) => <dynamic, dynamic>{
      'dot11Device': instance.dot11Device,
      'kismetDeviceBaseBasicCryptSet': instance.kismetDeviceBaseBasicCryptSet,
      'kismetDeviceBaseBasicTypeSet': instance.kismetDeviceBaseBasicTypeSet,
      'kismetDeviceBaseChannel': instance.kismetDeviceBaseChannel,
      'kismetDeviceBaseCommonname': instance.kismetDeviceBaseCommonname,
      'kismetDeviceBaseCrypt': instance.kismetDeviceBaseCrypt,
      'kismetDeviceBaseDatasize': instance.kismetDeviceBaseDatasize,
      'kismetDeviceBaseDatasizeRrd': instance.kismetDeviceBaseDatasizeRrd,
      'kismetDeviceBaseFirstTime': instance.kismetDeviceBaseFirstTime,
      'kismetDeviceBaseFreqKhzMap': instance.kismetDeviceBaseFreqKhzMap,
      'kismetDeviceBaseFrequency': instance.kismetDeviceBaseFrequency,
      'kismetDeviceBaseKey': instance.kismetDeviceBaseKey,
      'kismetDeviceBaseLastTime': instance.kismetDeviceBaseLastTime,
      'kismetDeviceBaseMacaddr': instance.kismetDeviceBaseMacaddr,
      'kismet.device.base.manuf': instance.kismetDeviceBaseManuf,
      'kismetDeviceBaseModTime': instance.kismetDeviceBaseModTime,
      'kismetDeviceBaseName': instance.kismetDeviceBaseName,
      'kismetDeviceBaseNumAlerts': instance.kismetDeviceBaseNumAlerts,
      'kismetDeviceBasePacketsCrypt': instance.kismetDeviceBasePacketsCrypt,
      'kismetDeviceBasePacketsData': instance.kismetDeviceBasePacketsData,
      'kismetDeviceBasePacketsError': instance.kismetDeviceBasePacketsError,
      'kismetDeviceBasePacketsFiltered':
          instance.kismetDeviceBasePacketsFiltered,
      'kismetDeviceBasePacketsLlc': instance.kismetDeviceBasePacketsLlc,
      'kismetDeviceBasePacketsRrd': instance.kismetDeviceBasePacketsRrd,
      'kismetDeviceBasePacketsRx': instance.kismetDeviceBasePacketsRx,
      'kismetDeviceBasePacketsTotal': instance.kismetDeviceBasePacketsTotal,
      'kismetDeviceBasePacketsTx': instance.kismetDeviceBasePacketsTx,
      'kismetDeviceBasePhyname': instance.kismetDeviceBasePhyname,
      'kismetDeviceBaseRelatedDevices': instance.kismetDeviceBaseRelatedDevices,
      'kismetDeviceBaseSeenby': instance.kismetDeviceBaseSeenby,
      'kismetDeviceBaseType': instance.kismetDeviceBaseType,
      'kismetServerUuid': instance.kismetServerUuid,
    };


// ignore: unused_element
Map<dynamic, dynamic> _$Dot11DeviceToJson(Dot11Device instance) =>
    <dynamic, dynamic>{
      'dot11DeviceBeaconFingerprint': instance.dot11DeviceBeaconFingerprint,
      'dot11DeviceBssTimestamp': instance.dot11DeviceBssTimestamp,
      'dot11DeviceClientDisconnects': instance.dot11DeviceClientDisconnects,
      'dot11DeviceClientDisconnectsLast':
          instance.dot11DeviceClientDisconnectsLast,
      'dot11DeviceClientMap': instance.dot11DeviceClientMap,
      'dot11DeviceDatasize': instance.dot11DeviceDatasize,
      'dot11DeviceDatasizeRetry': instance.dot11DeviceDatasizeRetry,
      'dot11DeviceLastBeaconTimestamp': instance.dot11DeviceLastBeaconTimestamp,
      'dot11DeviceLastBssid': instance.dot11DeviceLastBssid,
      'dot11DeviceLastSequence': instance.dot11DeviceLastSequence,
      'dot11DeviceLinkMeasurementCapable':
          instance.dot11DeviceLinkMeasurementCapable,
      'dot11DeviceMaxTxPower': instance.dot11DeviceMaxTxPower,
      'dot11DeviceMinTxPower': instance.dot11DeviceMinTxPower,
      'dot11DeviceNeighborReportCapable':
          instance.dot11DeviceNeighborReportCapable,
      'dot11DeviceNumAdvertisedSsids': instance.dot11DeviceNumAdvertisedSsids,
      'dot11DeviceNumAssociatedClients':
          instance.dot11DeviceNumAssociatedClients,
      'dot11DeviceNumClientAps': instance.dot11DeviceNumClientAps,
      'dot11DeviceNumFragments': instance.dot11DeviceNumFragments,
      'dot11DeviceNumProbedSsids': instance.dot11DeviceNumProbedSsids,
      'dot11DeviceNumRespondedSsids': instance.dot11DeviceNumRespondedSsids,
      'dot11DeviceNumRetries': instance.dot11DeviceNumRetries,
      'dot11DeviceProbeFingerprint': instance.dot11DeviceProbeFingerprint,
      'dot11DeviceResponseFingerprint': instance.dot11DeviceResponseFingerprint,
      'dot11DeviceTypeset': instance.dot11DeviceTypeset,
      'dot11DeviceWpaPresentHandshake': instance.dot11DeviceWpaPresentHandshake,
      'dot11DeviceWpsM3Count': instance.dot11DeviceWpsM3Count,
      'dot11DeviceWpsM3Last': instance.dot11DeviceWpsM3Last,
    };

Dot11DeviceClientMap _$Dot11DeviceClientMapFromJson(Map<dynamic, dynamic> json) {
  return Dot11DeviceClientMap(
    the48E244E5CcB3: The48E244E5CcB3.fromJson(
        json['the48E244E5CcB3'] as Map<dynamic, dynamic>),
  );
}

Map<dynamic, dynamic> _$Dot11DeviceClientMapToJson(
        Dot11DeviceClientMap instance) =>
    <dynamic, dynamic>{
      'the48E244E5CcB3': instance.the48E244E5CcB3,
    };

The48E244E5CcB3 _$The48E244E5CcB3FromJson(Map<dynamic, dynamic> json) {
  return The48E244E5CcB3(
    dot11ClientBssid: json['dot11ClientBssid'] as String,
    dot11ClientBssidKey: json['dot11ClientBssidKey'] as String,
    dot11ClientDatasize: json['dot11ClientDatasize'] as int,
    dot11ClientDatasizeRetry: json['dot11ClientDatasizeRetry'] as int,
    dot11ClientDecrypted: json['dot11ClientDecrypted'] as int,
    dot11ClientFirstTime: json['dot11ClientFirstTime'] as int,
    dot11ClientLastTime: json['dot11ClientLastTime'] as int,
    dot11ClientNumFragments: json['dot11ClientNumFragments'] as int,
    dot11ClientNumRetries: json['dot11ClientNumRetries'] as int,
    dot11ClientRxCryptset: json['dot11ClientRxCryptset'] as int,
    dot11ClientTxCryptset: json['dot11ClientTxCryptset'] as int,
    dot11ClientType: json['dot11ClientType'] as int,
  );
}

Map<dynamic, dynamic> _$The48E244E5CcB3ToJson(The48E244E5CcB3 instance) =>
    <dynamic, dynamic>{
      'dot11ClientBssid': instance.dot11ClientBssid,
      'dot11ClientBssidKey': instance.dot11ClientBssidKey,
      'dot11ClientDatasize': instance.dot11ClientDatasize,
      'dot11ClientDatasizeRetry': instance.dot11ClientDatasizeRetry,
      'dot11ClientDecrypted': instance.dot11ClientDecrypted,
      'dot11ClientFirstTime': instance.dot11ClientFirstTime,
      'dot11ClientLastTime': instance.dot11ClientLastTime,
      'dot11ClientNumFragments': instance.dot11ClientNumFragments,
      'dot11ClientNumRetries': instance.dot11ClientNumRetries,
      'dot11ClientRxCryptset': instance.dot11ClientRxCryptset,
      'dot11ClientTxCryptset': instance.dot11ClientTxCryptset,
      'dot11ClientType': instance.dot11ClientType,
    };

KismetDeviceBaseRrd _$KismetDeviceBaseRrdFromJson(Map<dynamic, dynamic> json) {
  return KismetDeviceBaseRrd(
    kismetCommonRrdBlankVal: json['kismetCommonRrdBlankVal'] as int,
    kismetCommonRrdDayVec: (json['kismetCommonRrdDayVec'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    kismetCommonRrdHourVec: (json['kismetCommonRrdHourVec'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    kismetCommonRrdLastTime: json['kismetCommonRrdLastTime'] as int,
    kismetCommonRrdMinuteVec:
        (json['kismetCommonRrdMinuteVec'] as List<dynamic>)
            .map((e) => e as int)
            .toList(),
    kismetCommonRrdSerialTime: json['kismetCommonRrdSerialTime'] as int,
  );
}

Map<dynamic, dynamic> _$KismetDeviceBaseRrdToJson(
        KismetDeviceBaseRrd instance) =>
    <dynamic, dynamic>{
      'kismetCommonRrdBlankVal': instance.kismetCommonRrdBlankVal,
      'kismetCommonRrdDayVec': instance.kismetCommonRrdDayVec,
      'kismetCommonRrdHourVec': instance.kismetCommonRrdHourVec,
      'kismetCommonRrdLastTime': instance.kismetCommonRrdLastTime,
      'kismetCommonRrdMinuteVec': instance.kismetCommonRrdMinuteVec,
      'kismetCommonRrdSerialTime': instance.kismetCommonRrdSerialTime,
    };

KismetDeviceBase _$KismetDeviceBaseFromJson(Map<dynamic, dynamic> json) {
  return KismetDeviceBase();
}

Map<dynamic, dynamic> _$KismetDeviceBaseToJson(KismetDeviceBase instance) =>
    <dynamic, dynamic>{};

KismetDeviceBaseSeenby _$KismetDeviceBaseSeenbyFromJson(
    Map<String, dynamic> json) {
  return KismetDeviceBaseSeenby(
    kismetCommonSeenbyFirstTime: json['kismetCommonSeenbyFirstTime'] as int,
    kismetCommonSeenbyLastTime: json['kismetCommonSeenbyLastTime'] as int,
    kismetCommonSeenbyNumPackets: json['kismetCommonSeenbyNumPackets'] as int,
    kismetCommonSeenbyUuid: json['kismetCommonSeenbyUuid'] as String,
  );
}

Map<dynamic, dynamic> _$KismetDeviceBaseSeenbyToJson(
        KismetDeviceBaseSeenby instance) =>
    <dynamic, dynamic>{
      'kismetCommonSeenbyFirstTime': instance.kismetCommonSeenbyFirstTime,
      'kismetCommonSeenbyLastTime': instance.kismetCommonSeenbyLastTime,
      'kismetCommonSeenbyNumPackets': instance.kismetCommonSeenbyNumPackets,
      'kismetCommonSeenbyUuid': instance.kismetCommonSeenbyUuid,
    };
