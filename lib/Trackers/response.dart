import 'dart:convert';

class TrackerResponse {
  bool success;
  List<Datum> data;

  TrackerResponse({
    required this.success,
    required this.data,
  });

  factory TrackerResponse.fromRawJson(String str) =>
      TrackerResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TrackerResponse.fromJson(Map<String, dynamic> json) =>
      TrackerResponse(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String category;
  String imageUrl;
  List<SubCategory> subCategories;

  Datum({
    required this.category,
    required this.imageUrl,
    required this.subCategories,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        category: json["category"],
        imageUrl: json["imageUrl"],
        subCategories: List<SubCategory>.from(
            json["subCategories"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "imageUrl": imageUrl,
        "subCategories":
            List<dynamic>.from(subCategories.map((x) => x.toJson())),
      };
}

class SubCategory {
  int id;
  String name;
  Details details;
  int? deviceId;
  int defaultTarget;
  LastLog lastLog;

  SubCategory({
    required this.id,
    required this.name,
    required this.details,
    required this.deviceId,
    required this.defaultTarget,
    required this.lastLog,
  });

  factory SubCategory.fromRawJson(String str) =>
      SubCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        name: json["name"],
        details: Details.fromJson(json["details"]),
        deviceId: json["deviceId"],
        defaultTarget: json["defaultTarget"],
        lastLog: LastLog.fromJson(json["lastLog"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "details": details.toJson(),
        "deviceId": deviceId,
        "defaultTarget": defaultTarget,
        "lastLog": lastLog.toJson(),
      };
}

class Details {
  String title;
  Media media;

  Details({
    required this.title,
    required this.media,
  });

  factory Details.fromRawJson(String str) => Details.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        title: json["title"],
        media: Media.fromJson(json["media"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "media": media.toJson(),
      };
}

class Media {
  String disabledImageUrl;
  String enabledImageUrl;

  Media({
    required this.disabledImageUrl,
    required this.enabledImageUrl,
  });

  factory Media.fromRawJson(String str) => Media.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        disabledImageUrl: json["disabledImageUrl"],
        enabledImageUrl: json["enabledImageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "disabledImageUrl": disabledImageUrl,
        "enabledImageUrl": enabledImageUrl,
      };
}

class LastLog {
  dynamic targetValue;
  String unit;
  dynamic currentValue;

  LastLog({
    required this.targetValue,
    required this.unit,
    required this.currentValue,
  });

  factory LastLog.fromRawJson(String str) => LastLog.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LastLog.fromJson(Map<String, dynamic> json) => LastLog(
        targetValue: json["targetValue"],
        unit: json["unit"],
        currentValue: json["currentValue"],
      );

  Map<String, dynamic> toJson() => {
        "targetValue": targetValue,
        "unit": unit,
        "currentValue": currentValue,
      };
}

class CurrentValueClass {
  int systole;
  int diastole;

  CurrentValueClass({
    required this.systole,
    required this.diastole,
  });

  factory CurrentValueClass.fromRawJson(String str) =>
      CurrentValueClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentValueClass.fromJson(Map<String, dynamic> json) =>
      CurrentValueClass(
        systole: json["systole"],
        diastole: json["diastole"],
      );

  Map<String, dynamic> toJson() => {
        "systole": systole,
        "diastole": diastole,
      };
}
