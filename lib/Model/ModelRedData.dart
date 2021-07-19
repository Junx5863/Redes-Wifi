import 'package:json_annotation/json_annotation.dart';

part 'ModelRedData.g.dart';

@JsonSerializable(anyMap: true)
class RedData {
   RedData({
    required this.kismetDeviceBaseBasicCryptSet,
    required this.kismetDeviceBaseBasicTypeSet,
    required this.kismetDeviceBaseChannel,
    required this.kismetDeviceBaseCommonname,
    required this.kismetDeviceBaseCrypt,
    required this.kismetDeviceBaseDatasize,
    required this.kismetDeviceBaseFirstTime,
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
    required this.kismetDeviceBasePacketsRx,
    required this.kismetDeviceBasePacketsTotal,
    required this.kismetDeviceBasePacketsTx,
    required this.kismetDeviceBasePhyname,
    required this.kismetDeviceBaseSeenby,
    required this.kismetDeviceBaseType,
    required this.kismetServerUuid,
  });
  
  int kismetDeviceBaseBasicCryptSet;
  int kismetDeviceBaseBasicTypeSet;
  String kismetDeviceBaseChannel;
  String kismetDeviceBaseCommonname;
  String kismetDeviceBaseCrypt;
  int kismetDeviceBaseDatasize;
  int kismetDeviceBaseFirstTime;
  int kismetDeviceBaseFrequency;
  String kismetDeviceBaseKey;
  int kismetDeviceBaseLastTime;
  String kismetDeviceBaseMacaddr;
  String kismetDeviceBaseManuf;
  int kismetDeviceBaseModTime;
  String kismetDeviceBaseName;
  int kismetDeviceBaseNumAlerts;
  int kismetDeviceBasePacketsCrypt;
  int kismetDeviceBasePacketsData;
  int kismetDeviceBasePacketsError;
  int kismetDeviceBasePacketsFiltered;
  int kismetDeviceBasePacketsLlc;
  int kismetDeviceBasePacketsRx;
  int kismetDeviceBasePacketsTotal;
  int kismetDeviceBasePacketsTx;
  String kismetDeviceBasePhyname;
  List<KismetDeviceBaseSeenby> kismetDeviceBaseSeenby;
  String kismetDeviceBaseType;
  String kismetServerUuid;

  factory RedData.fromJson(Map<dynamic, dynamic> json) => RedData(
        
        kismetDeviceBaseBasicCryptSet:
            json["kismet.device.base.basic_crypt_set"],
        kismetDeviceBaseBasicTypeSet: json["kismet.device.base.basic_type_set"],
        kismetDeviceBaseChannel: json["kismet.device.base.channel"],
        kismetDeviceBaseCommonname: json["kismet.device.base.commonname"],
        kismetDeviceBaseCrypt: json["kismet.device.base.crypt"],
        kismetDeviceBaseDatasize: json["kismet.device.base.datasize"],
        
        kismetDeviceBaseFirstTime: json["kismet.device.base.first_time"],
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
        
        kismetDeviceBasePacketsRx: json["kismet.device.base.packets.rx"],
        kismetDeviceBasePacketsTotal: json["kismet.device.base.packets.total"],
        kismetDeviceBasePacketsTx: json["kismet.device.base.packets.tx"],
        kismetDeviceBasePhyname: json["kismet.device.base.phyname"],
        
        kismetDeviceBaseSeenby: List<KismetDeviceBaseSeenby>.from(
            json["kismet.device.base.seenby"]
                .map((x) => KismetDeviceBaseSeenby.fromJson(x))),
        kismetDeviceBaseType: json["kismet.device.base.type"],
        kismetServerUuid: json["kismet.server.uuid"],
      );

  Map<dynamic, dynamic> toJson() => {
        
        "kismet.device.base.basic_crypt_set": kismetDeviceBaseBasicCryptSet,
        "kismet.device.base.basic_type_set": kismetDeviceBaseBasicTypeSet,
        "kismet.device.base.channel": kismetDeviceBaseChannel,
        "kismet.device.base.commonname": kismetDeviceBaseCommonname,
        "kismet.device.base.crypt": kismetDeviceBaseCrypt,
        "kismet.device.base.datasize": kismetDeviceBaseDatasize,
        "kismet.device.base.first_time": kismetDeviceBaseFirstTime,
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
        "kismet.device.base.packets.rx": kismetDeviceBasePacketsRx,
        "kismet.device.base.packets.total": kismetDeviceBasePacketsTotal,
        "kismet.device.base.packets.tx": kismetDeviceBasePacketsTx,
        "kismet.device.base.phyname": kismetDeviceBasePhyname,
        "kismet.device.base.seenby":
            List<dynamic>.from(kismetDeviceBaseSeenby.map((x) => x.toJson())),
        "kismet.device.base.type": kismetDeviceBaseType,
        "kismet.server.uuid": kismetServerUuid,
      };
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
