// To parse required this JSON data, do
//
//     final apsData = apsDataFromJson(jsonString);

import 'dart:convert';

List<ApsData> apsDataFromJson(String str) => List<ApsData>.from(json.decode(str).map((x) => ApsData.fromJson(x)));

String apsDataToJson(List<ApsData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApsData {
    ApsData({
        required this.channel,
        required this.commonName,
        required this.deviceMac,
        required this.firstSeen,
        required this.fixMode,
        required this.key,
        required this.lastSeen,
        required this.latitude,
        required this.longitude,
        required this.ssid,
        required this.type,
        required this.clients,
    });

    String channel;
    String commonName;
    String deviceMac;
    DateTime firstSeen;
    int fixMode;
    String key;
    DateTime lastSeen;
    double latitude;
    double longitude;
    String ssid;
    String type;
    List<Client>? clients;

    factory ApsData.fromJson(Map<String, dynamic> json) => ApsData(
        channel: json["Channel"],
        commonName: json["Common Name"],
        deviceMac: json["Device MAC"],
        firstSeen: DateTime.parse(json["First Seen"]),
        fixMode: json["FixMode"],
        key: json["Key"],
        lastSeen: DateTime.parse(json["Last Seen"]),
        latitude: json["Latitude"].toDouble(),
        longitude: json["Longitude"].toDouble(),
        ssid: json["SSID"],
        type: json["Type"],
        clients: json["Clients"] == null ? null : List<Client>.from(json["Clients"].map((x) => Client.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Channel": channel,
        "Common Name": commonName,
        "Device MAC": deviceMac,
        "First Seen": firstSeen.toIso8601String(),
        "FixMode": fixMode,
        "Key": key,
        "Last Seen": lastSeen.toIso8601String(),
        "Latitude": latitude,
        "Longitude": longitude,
        "SSID": ssid,
        "Type": typeValues.reverse[type],
        "Clients": clients == null ? null : List<dynamic>.from(clients!.map((x) => x.toJson())),
    };
}

class Client {
    Client({
        required this.deviceMac,
        required this.key,
    });

    String deviceMac;
    String key;

    factory Client.fromJson(Map<String, dynamic> json) => Client(
        deviceMac: json["Device MAC"],
        key: json["Key"],
    );

    Map<String, dynamic> toJson() => {
        "Device MAC": deviceMac,
        "Key": key,
    };
}

enum Type { WI_FI_AP }

final typeValues = EnumValues({
    "Wi-Fi AP": Type.WI_FI_AP
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues( this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
