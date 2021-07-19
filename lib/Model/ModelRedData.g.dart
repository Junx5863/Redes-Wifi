// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelRedData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedData _$RedDataFromJson(Map json) {
  return RedData(
    kismetDeviceBaseBasicCryptSet: json['kismetDeviceBaseBasicCryptSet'] as int,
    kismetDeviceBaseBasicTypeSet: json['kismetDeviceBaseBasicTypeSet'] as int,
    kismetDeviceBaseChannel: json['kismetDeviceBaseChannel'] as String,
    kismetDeviceBaseCommonname: json['kismetDeviceBaseCommonname'] as String,
    kismetDeviceBaseCrypt: json['kismetDeviceBaseCrypt'] as String,
    kismetDeviceBaseDatasize: json['kismetDeviceBaseDatasize'] as int,
    kismetDeviceBaseFirstTime: json['kismetDeviceBaseFirstTime'] as int,
    kismetDeviceBaseFrequency: json['kismetDeviceBaseFrequency'] as int,
    kismetDeviceBaseKey: json['kismetDeviceBaseKey'] as String,
    kismetDeviceBaseLastTime: json['kismetDeviceBaseLastTime'] as int,
    kismetDeviceBaseMacaddr: json['kismetDeviceBaseMacaddr'] as String,
    kismetDeviceBaseManuf: json['kismetDeviceBaseManuf'] as String,
    kismetDeviceBaseModTime: json['kismetDeviceBaseModTime'] as int,
    kismetDeviceBaseName: json['kismetDeviceBaseName'] as String,
    kismetDeviceBaseNumAlerts: json['kismetDeviceBaseNumAlerts'] as int,
    kismetDeviceBasePacketsCrypt: json['kismetDeviceBasePacketsCrypt'] as int,
    kismetDeviceBasePacketsData: json['kismetDeviceBasePacketsData'] as int,
    kismetDeviceBasePacketsError: json['kismetDeviceBasePacketsError'] as int,
    kismetDeviceBasePacketsFiltered:
        json['kismetDeviceBasePacketsFiltered'] as int,
    kismetDeviceBasePacketsLlc: json['kismetDeviceBasePacketsLlc'] as int,
    kismetDeviceBasePacketsRx: json['kismetDeviceBasePacketsRx'] as int,
    kismetDeviceBasePacketsTotal: json['kismetDeviceBasePacketsTotal'] as int,
    kismetDeviceBasePacketsTx: json['kismetDeviceBasePacketsTx'] as int,
    kismetDeviceBasePhyname: json['kismetDeviceBasePhyname'] as String,
    kismetDeviceBaseSeenby: (json['kismetDeviceBaseSeenby'] as List<dynamic>)
        .map((e) => KismetDeviceBaseSeenby.fromJson(e as Map))
        .toList(),
    kismetDeviceBaseType: json['kismetDeviceBaseType'] as String,
    kismetServerUuid: json['kismetServerUuid'] as String,
  );
}

Map<String, dynamic> _$RedDataToJson(RedData instance) => <String, dynamic>{
      'kismetDeviceBaseBasicCryptSet': instance.kismetDeviceBaseBasicCryptSet,
      'kismetDeviceBaseBasicTypeSet': instance.kismetDeviceBaseBasicTypeSet,
      'kismetDeviceBaseChannel': instance.kismetDeviceBaseChannel,
      'kismetDeviceBaseCommonname': instance.kismetDeviceBaseCommonname,
      'kismetDeviceBaseCrypt': instance.kismetDeviceBaseCrypt,
      'kismetDeviceBaseDatasize': instance.kismetDeviceBaseDatasize,
      'kismetDeviceBaseFirstTime': instance.kismetDeviceBaseFirstTime,
      'kismetDeviceBaseFrequency': instance.kismetDeviceBaseFrequency,
      'kismetDeviceBaseKey': instance.kismetDeviceBaseKey,
      'kismetDeviceBaseLastTime': instance.kismetDeviceBaseLastTime,
      'kismetDeviceBaseMacaddr': instance.kismetDeviceBaseMacaddr,
      'kismetDeviceBaseManuf': instance.kismetDeviceBaseManuf,
      'kismetDeviceBaseModTime': instance.kismetDeviceBaseModTime,
      'kismetDeviceBaseName': instance.kismetDeviceBaseName,
      'kismetDeviceBaseNumAlerts': instance.kismetDeviceBaseNumAlerts,
      'kismetDeviceBasePacketsCrypt': instance.kismetDeviceBasePacketsCrypt,
      'kismetDeviceBasePacketsData': instance.kismetDeviceBasePacketsData,
      'kismetDeviceBasePacketsError': instance.kismetDeviceBasePacketsError,
      'kismetDeviceBasePacketsFiltered':
          instance.kismetDeviceBasePacketsFiltered,
      'kismetDeviceBasePacketsLlc': instance.kismetDeviceBasePacketsLlc,
      'kismetDeviceBasePacketsRx': instance.kismetDeviceBasePacketsRx,
      'kismetDeviceBasePacketsTotal': instance.kismetDeviceBasePacketsTotal,
      'kismetDeviceBasePacketsTx': instance.kismetDeviceBasePacketsTx,
      'kismetDeviceBasePhyname': instance.kismetDeviceBasePhyname,
      'kismetDeviceBaseSeenby': instance.kismetDeviceBaseSeenby,
      'kismetDeviceBaseType': instance.kismetDeviceBaseType,
      'kismetServerUuid': instance.kismetServerUuid,
    };

KismetDeviceBaseSeenby _$KismetDeviceBaseSeenbyFromJson(
    Map<String, dynamic> json) {
  return KismetDeviceBaseSeenby(
    kismetCommonSeenbyFirstTime: json['kismetCommonSeenbyFirstTime'] as int,
    kismetCommonSeenbyLastTime: json['kismetCommonSeenbyLastTime'] as int,
    kismetCommonSeenbyNumPackets: json['kismetCommonSeenbyNumPackets'] as int,
    kismetCommonSeenbyUuid: json['kismetCommonSeenbyUuid'] as String,
  );
}

Map<String, dynamic> _$KismetDeviceBaseSeenbyToJson(
        KismetDeviceBaseSeenby instance) =>
    <String, dynamic>{
      'kismetCommonSeenbyFirstTime': instance.kismetCommonSeenbyFirstTime,
      'kismetCommonSeenbyLastTime': instance.kismetCommonSeenbyLastTime,
      'kismetCommonSeenbyNumPackets': instance.kismetCommonSeenbyNumPackets,
      'kismetCommonSeenbyUuid': instance.kismetCommonSeenbyUuid,
    };
