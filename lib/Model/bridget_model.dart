// To parse required this JSON data, do
//
//     final bridgetData = bridgetDataFromJson(jsonString);

import 'dart:convert';

List<BridgetData> bridgetDataFromJson(String str) => List<BridgetData>.from(json.decode(str).map((x) => BridgetData.fromJson(x)));

String bridgetDataToJson(List<BridgetData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BridgetData {
    BridgetData({
        required this.aPs,
        required this.channel,
        required this.commonName,
        required this.deviceMac,
        required this.firstSeen,
        required this.fixMode,
        required this.key,
        required this.lastSeen,
        required this.latitude,
        required this.longitude,
        required this.type,
        required this.probes,
    });

    List<Ap> aPs;
    String channel;
    String commonName;
    String deviceMac;
    DateTime firstSeen;
    int fixMode;
    String key;
    DateTime lastSeen;
    double latitude;
    double longitude;
    String type;
    List<Probe>? probes;

    factory BridgetData.fromJson(Map<String, dynamic> json) => BridgetData(
        aPs: List<Ap>.from(json["APs"].map((x) => Ap.fromJson(x))),
        channel: json["Channel"],
        commonName: json["Common Name"],
        deviceMac: json["Device MAC"],
        firstSeen: DateTime.parse(json["First Seen"]),
        fixMode: json["FixMode"],
        key: json["Key"],
        lastSeen: DateTime.parse(json["Last Seen"]),
        latitude: json["Latitude"].toDouble(),
        longitude: json["Longitude"].toDouble(),
        type: json["Type"],
        probes: json["Probes"] == null ? null : List<Probe>.from(json["Probes"].map((x) => Probe.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "APs": List<dynamic>.from(aPs.map((x) => x.toJson())),
        "Channel": channel,
        "Common Name": commonName,
        "Device MAC": deviceMac,
        "First Seen": firstSeen.toIso8601String(),
        "FixMode": fixMode,
        "Key": key,
        "Last Seen": lastSeen.toIso8601String(),
        "Latitude": latitude,
        "Longitude": longitude,
        "Type": typeValues.reverse[type],
        "Probes": probes == null ? null : List<dynamic>.from(probes!.map((x) => x.toJson())),
    };
}

class Ap {
    Ap({
        required this.bssid,
        required this.key,
    });

    String bssid;
    String key;

    factory Ap.fromJson(Map<String, dynamic> json) => Ap(
        bssid: json["BSSID"],
        key: json["Key"],
    );

    Map<String, dynamic> toJson() => {
        "BSSID": bssid,
        "Key": key,
    };
}

class Probe {
    Probe({
        required this.ssid,
    });

    String ssid;

    factory Probe.fromJson(Map<String, dynamic> json) => Probe(
        ssid: json["SSID"],
    );

    Map<String, dynamic> toJson() => {
        "SSID": ssid,
    };
}

enum Type { WI_FI_BRIDGED }

final typeValues = EnumValues({
    "Wi-Fi Bridged": Type.WI_FI_BRIDGED
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
