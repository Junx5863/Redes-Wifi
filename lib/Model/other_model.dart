// To parse required this JSON data, do
//
//     final otherData = otherDataFromJson(jsonString);

import 'dart:convert';

List<OtherData> otherDataFromJson(String str) => List<OtherData>.from(json.decode(str).map((x) => OtherData.fromJson(x)));

String otherDataToJson(List<OtherData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OtherData {
    OtherData({
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
        required this.aPs,
        required this.probes,
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
    String type;
    List<Ap>? aPs;
    List<Probe>? probes;

    factory OtherData.fromJson(Map<String, dynamic> json) => OtherData(
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
        aPs: json["APs"] == null ? null : List<Ap>.from(json["APs"].map((x) => Ap.fromJson(x))),
        probes: json["Probes"] == null ? null : List<Probe>.from(json["Probes"].map((x) => Probe.fromJson(x))),
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
        "Type": typeValues.reverse[type],
        "APs": aPs == null ? null : List<dynamic>.from(aPs!.map((x) => x.toJson())),
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

enum Type { WI_FI_DEVICE_INFERRED, WI_FI_DEVICE, WI_FI_WDS_DEVICE, WI_FI_WDS, WI_FI_WDS_AP }

final typeValues = EnumValues({
    "Wi-Fi Device": Type.WI_FI_DEVICE,
    "Wi-Fi Device (Inferred)": Type.WI_FI_DEVICE_INFERRED,
    "Wi-Fi WDS": Type.WI_FI_WDS,
    "Wi-Fi WDS AP": Type.WI_FI_WDS_AP,
    "Wi-Fi WDS Device": Type.WI_FI_WDS_DEVICE
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
