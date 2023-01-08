// To parse this JSON data, do
//
//     final teamDetails = teamDetailsFromJson(jsonString);

import 'dart:convert';

TeamDetails? teamDetailsFromJson(String str) => TeamDetails.fromJson(json.decode(str));

String teamDetailsToJson(TeamDetails? data) => json.encode(data!.toJson());

class TeamDetails {
  TeamDetails({
    this.data,
    this.meta,
  });

  Data? data;
  Meta? meta;

  factory TeamDetails.fromJson(Map<String, dynamic> json) => TeamDetails(
    data: json["data"],
    meta: json["meta"],
  );

  Map<String, dynamic> toJson() => {
    "data": data,
    "meta": meta,
  };
}

class Data {
  Data({
    this.id,
    this.legacyId,
    this.name,
    this.shortCode,
    this.twitter,
    this.countryId,
    this.nationalTeam,
    this.founded,
    this.logoPath,
    this.venueId,
    this.currentSeasonId,
    this.isPlaceholder,
  });

  int? id;
  int? legacyId;
  String? name;
  dynamic shortCode;
  dynamic twitter;
  int? countryId;
  bool? nationalTeam;
  int? founded;
  String? logoPath;
  int? venueId;
  int? currentSeasonId;
  bool? isPlaceholder;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    legacyId: json["legacy_id"],
    name: json["name"],
    shortCode: json["short_code"],
    twitter: json["twitter"],
    countryId: json["country_id"],
    nationalTeam: json["national_team"],
    founded: json["founded"],
    logoPath: json["logo_path"],
    venueId: json["venue_id"],
    currentSeasonId: json["current_season_id"],
    isPlaceholder: json["is_placeholder"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "legacy_id": legacyId,
    "name": name,
    "short_code": shortCode,
    "twitter": twitter,
    "country_id": countryId,
    "national_team": nationalTeam,
    "founded": founded,
    "logo_path": logoPath,
    "venue_id": venueId,
    "current_season_id": currentSeasonId,
    "is_placeholder": isPlaceholder,
  };
}

class Meta {
  Meta({
    this.subscription,
    this.plans,
    this.addOns,
    this.sports,
  });

  Subscription? subscription;
  List<Plan?>? plans;
  List<dynamic>? addOns;
  List<Sport?>? sports;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    subscription: json["subscription"],
    plans: json["plans"] == null ? [] : json["plans"] == null ? [] : List<Plan?>.from(json["plans"]!.map((x) => Plan.fromJson(x))),
    addOns: json["add-ons"] == null ? [] : json["add-ons"] == null ? [] : List<dynamic>.from(json["add-ons"]!.map((x) => x)),
    sports: json["sports"] == null ? [] : json["sports"] == null ? [] : List<Sport?>.from(json["sports"]!.map((x) => Sport.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "subscription": subscription,
    "plans": plans == null ? [] : plans == null ? [] : List<dynamic>.from(plans!.map((x) => x!.toJson())),
    "add-ons": addOns == null ? [] : addOns == null ? [] : List<dynamic>.from(addOns!.map((x) => x)),
    "sports": sports == null ? [] : sports == null ? [] : List<dynamic>.from(sports!.map((x) => x!.toJson())),
  };
}

class Plan {
  Plan({
    this.name,
    this.features,
    this.priceMonthly,
    this.priceYearly,
    this.requestLimit,
    this.sport,
  });

  String? name;
  String? features;
  String? priceMonthly;
  String? priceYearly;
  String? requestLimit;
  String? sport;

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
    name: json["name"],
    features: json["features"],
    priceMonthly: json["price_monthly"],
    priceYearly: json["price_yearly"],
    requestLimit: json["request_limit"],
    sport: json["sport"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "features": features,
    "price_monthly": priceMonthly,
    "price_yearly": priceYearly,
    "request_limit": requestLimit,
    "sport": sport,
  };
}

class Sport {
  Sport({
    this.id,
    this.name,
    this.current,
  });

  int? id;
  String? name;
  bool? current;

  factory Sport.fromJson(Map<String, dynamic> json) => Sport(
    id: json["id"],
    name: json["name"],
    current: json["current"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "current": current,
  };
}

class Subscription {
  Subscription({
    this.startedAt,
    this.trialEndsAt,
    this.endsAt,
  });

  At? startedAt;
  At? trialEndsAt;
  At? endsAt;

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
    startedAt: json["started_at"],
    trialEndsAt: json["trial_ends_at"],
    endsAt: json["ends_at"],
  );

  Map<String, dynamic> toJson() => {
    "started_at": startedAt,
    "trial_ends_at": trialEndsAt,
    "ends_at": endsAt,
  };
}

class At {
  At({
    this.date,
    this.timezoneType,
    this.timezone,
  });

  DateTime? date;
  int? timezoneType;
  String? timezone;

  factory At.fromJson(Map<String, dynamic> json) => At(
    date: json["date"],
    timezoneType: json["timezone_type"],
    timezone: json["timezone"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "timezone_type": timezoneType,
    "timezone": timezone,
  };
}
