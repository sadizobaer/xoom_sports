// To parse this JSON data, do
//
//     final fixtureByDate = fixtureByDateFromJson(jsonString);

import 'dart:convert';

FixtureByDate? fixtureByDateFromJson(String str) => FixtureByDate.fromJson(json.decode(str));

String fixtureByDateToJson(FixtureByDate? data) => json.encode(data!.toJson());

class FixtureByDate {
  FixtureByDate({
    this.data,
    this.meta,
  });

  List<Matches?>? data;
  Meta? meta;

  factory FixtureByDate.fromJson(Map<String, dynamic> json) => FixtureByDate(
    data: json["data"] == null ? [] : json["data"] == null ? [] : List<Matches?>.from(json["data"]!.map((x) => Matches.fromJson(x))),
    meta: json["meta"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())),
    "meta": meta,
  };
}

class Matches {
  Matches({
    this.id,
    this.leagueId,
    this.seasonId,
    this.stageId,
    this.roundId,
    this.groupId,
    this.aggregateId,
    this.venueId,
    this.refereeId,
    this.localteamId,
    this.visitorteamId,
    this.winnerTeamId,
    this.weatherReport,
    this.commentaries,
    this.attendance,
    this.pitch,
    this.details,
    this.neutralVenue,
    this.winningOddsCalculated,
    this.formations,
    this.scores,
    this.time,
    this.coaches,
    this.standings,
    this.assistants,
    this.leg,
    this.colors,
    this.deleted,
    this.isPlaceholder,
  });

  int? id;
  int? leagueId;
  int? seasonId;
  int? stageId;
  int? roundId;
  dynamic groupId;
  dynamic aggregateId;
  int? venueId;
  int? refereeId;
  int? localteamId;
  int? visitorteamId;
  int? winnerTeamId;
  WeatherReport? weatherReport;
  bool? commentaries;
  int? attendance;
  Pitch? pitch;
  String? details;
  bool? neutralVenue;
  bool? winningOddsCalculated;
  Formations? formations;
  Scores? scores;
  Time? time;
  Coaches? coaches;
  Standings? standings;
  Assistants? assistants;
  Leg? leg;
  Colors? colors;
  bool? deleted;
  bool? isPlaceholder;

  factory Matches.fromJson(Map<String, dynamic> json) => Matches(
    id: json["id"],
    leagueId: json["league_id"],
    seasonId: json["season_id"],
    stageId: json["stage_id"],
    roundId: json["round_id"],
    groupId: json["group_id"],
    aggregateId: json["aggregate_id"],
    venueId: json["venue_id"],
    refereeId: json["referee_id"],
    localteamId: json["localteam_id"],
    visitorteamId: json["visitorteam_id"],
    winnerTeamId: json["winner_team_id"],
    weatherReport: json["weather_report"],
    commentaries: json["commentaries"],
    attendance: json["attendance"],
    pitch: json["pitch"],
    details: json["details"],
    neutralVenue: json["neutral_venue"],
    winningOddsCalculated: json["winning_odds_calculated"],
    formations: json["formations"],
    scores: json["scores"],
    time: json["time"],
    coaches: json["coaches"],
    standings: json["standings"],
    assistants: json["assistants"],
    leg: json["leg"],
    colors: json["colors"],
    deleted: json["deleted"],
    isPlaceholder: json["is_placeholder"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "league_id": leagueId,
    "season_id": seasonId,
    "stage_id": stageId,
    "round_id": roundId,
    "group_id": groupId,
    "aggregate_id": aggregateId,
    "venue_id": venueId,
    "referee_id": refereeId,
    "localteam_id": localteamId,
    "visitorteam_id": visitorteamId,
    "winner_team_id": winnerTeamId,
    "weather_report": weatherReport,
    "commentaries": commentaries,
    "attendance": attendance,
    "pitch": pitch,
    "details": details,
    "neutral_venue": neutralVenue,
    "winning_odds_calculated": winningOddsCalculated,
    "formations": formations,
    "scores": scores,
    "time": time,
    "coaches": coaches,
    "standings": standings,
    "assistants": assistants,
    "leg": leg,
    "colors": colors,
    "deleted": deleted,
    "is_placeholder": isPlaceholder,
  };
}

class Assistants {
  Assistants({
    this.firstAssistantId,
    this.secondAssistantId,
    this.fourthOfficialId,
  });

  int? firstAssistantId;
  int? secondAssistantId;
  int? fourthOfficialId;

  factory Assistants.fromJson(Map<String, dynamic> json) => Assistants(
    firstAssistantId: json["first_assistant_id"],
    secondAssistantId: json["second_assistant_id"],
    fourthOfficialId: json["fourth_official_id"],
  );

  Map<String, dynamic> toJson() => {
    "first_assistant_id": firstAssistantId,
    "second_assistant_id": secondAssistantId,
    "fourth_official_id": fourthOfficialId,
  };
}

class Coaches {
  Coaches({
    this.localteamCoachId,
    this.visitorteamCoachId,
  });

  int? localteamCoachId;
  int? visitorteamCoachId;

  factory Coaches.fromJson(Map<String, dynamic> json) => Coaches(
    localteamCoachId: json["localteam_coach_id"],
    visitorteamCoachId: json["visitorteam_coach_id"],
  );

  Map<String, dynamic> toJson() => {
    "localteam_coach_id": localteamCoachId,
    "visitorteam_coach_id": visitorteamCoachId,
  };
}

class Colors {
  Colors({
    this.localteam,
    this.visitorteam,
  });

  Team? localteam;
  Team? visitorteam;

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
    localteam: json["localteam"],
    visitorteam: json["visitorteam"],
  );

  Map<String, dynamic> toJson() => {
    "localteam": localteam,
    "visitorteam": visitorteam,
  };
}

class Team {
  Team({
    this.color,
    this.kitColors,
  });

  String? color;
  String? kitColors;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    color: json["color"],
    kitColors: json["kit_colors"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "kit_colors": kitColors,
  };
}

class Formations {
  Formations({
    this.localteamFormation,
    this.visitorteamFormation,
  });

  String? localteamFormation;
  String? visitorteamFormation;

  factory Formations.fromJson(Map<String, dynamic> json) => Formations(
    localteamFormation: json["localteam_formation"],
    visitorteamFormation: json["visitorteam_formation"],
  );

  Map<String, dynamic> toJson() => {
    "localteam_formation": localteamFormation,
    "visitorteam_formation": visitorteamFormation,
  };
}

enum Leg { THE_11 }

final legValues = EnumValues({
  "1/1": Leg.THE_11
});

enum Pitch { GOOD }

final pitchValues = EnumValues({
  "Good": Pitch.GOOD
});

class Scores {
  Scores({
    this.localteamScore,
    this.visitorteamScore,
    this.localteamPenScore,
    this.visitorteamPenScore,
    this.htScore,
    this.ftScore,
    this.etScore,
    this.psScore,
  });

  int? localteamScore;
  int? visitorteamScore;
  int? localteamPenScore;
  int? visitorteamPenScore;
  String? htScore;
  String? ftScore;
  String? etScore;
  String? psScore;

  factory Scores.fromJson(Map<String, dynamic> json) => Scores(
    localteamScore: json["localteam_score"],
    visitorteamScore: json["visitorteam_score"],
    localteamPenScore: json["localteam_pen_score"],
    visitorteamPenScore: json["visitorteam_pen_score"],
    htScore: json["ht_score"],
    ftScore: json["ft_score"],
    etScore: json["et_score"],
    psScore: json["ps_score"],
  );

  Map<String, dynamic> toJson() => {
    "localteam_score": localteamScore,
    "visitorteam_score": visitorteamScore,
    "localteam_pen_score": localteamPenScore,
    "visitorteam_pen_score": visitorteamPenScore,
    "ht_score": htScore,
    "ft_score": ftScore,
    "et_score": etScore,
    "ps_score": psScore,
  };
}

class Standings {
  Standings({
    this.localteamPosition,
    this.visitorteamPosition,
  });

  int? localteamPosition;
  int? visitorteamPosition;

  factory Standings.fromJson(Map<String, dynamic> json) => Standings(
    localteamPosition: json["localteam_position"],
    visitorteamPosition: json["visitorteam_position"],
  );

  Map<String, dynamic> toJson() => {
    "localteam_position": localteamPosition,
    "visitorteam_position": visitorteamPosition,
  };
}

class Time {
  Time({
    this.status,
    this.startingAt,
    this.minute,
    this.second,
    this.addedTime,
    this.extraMinute,
    this.injuryTime,
  });

  Status? status;
  StartingAt? startingAt;
  int? minute;
  String? second;
  int? addedTime;
  dynamic extraMinute;
  int? injuryTime;

  factory Time.fromJson(Map<String, dynamic> json) => Time(
    status: json["status"],
    startingAt: json["starting_at"],
    minute: json["minute"],
    second: json["second"],
    addedTime: json["added_time"],
    extraMinute: json["extra_minute"],
    injuryTime: json["injury_time"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "starting_at": startingAt,
    "minute": minute,
    "second": second,
    "added_time": addedTime,
    "extra_minute": extraMinute,
    "injury_time": injuryTime,
  };
}

class StartingAt {
  StartingAt({
    this.dateTime,
    this.date,
    this.time,
    this.timestamp,
    this.timezone,
  });

  DateTime? dateTime;
  DateTime? date;
  String? time;
  int? timestamp;
  Timezone? timezone;

  factory StartingAt.fromJson(Map<String, dynamic> json) => StartingAt(
    dateTime: json["date_time"],
    date: json["date"],
    time: json["time"],
    timestamp: json["timestamp"],
    timezone: json["timezone"],
  );

  Map<String, dynamic> toJson() => {
    "date_time": dateTime,
    "date": date,
    "time": time,
    "timestamp": timestamp,
    "timezone": timezone,
  };
}

enum Timezone { UTC }

final timezoneValues = EnumValues({
  "UTC": Timezone.UTC
});

enum Status { FT, POSTP, NS, CANCL, EMPTY }

final statusValues = EnumValues({
  "CANCL": Status.CANCL,
  "": Status.EMPTY,
  "FT": Status.FT,
  "NS": Status.NS,
  "POSTP": Status.POSTP
});

class WeatherReport {
  WeatherReport({
    this.code,
    this.type,
    this.icon,
    this.temperature,
    this.temperatureCelcius,
    this.clouds,
    this.humidity,
    this.pressure,
    this.wind,
    this.coordinates,
    this.updatedAt,
  });

  Code? code;
  String? type;
  String? icon;
  Temperature? temperature;
  Temperature? temperatureCelcius;
  String? clouds;
  String? humidity;
  int? pressure;
  Wind? wind;
  Coordinates? coordinates;
  DateTime? updatedAt;

  factory WeatherReport.fromJson(Map<String, dynamic> json) => WeatherReport(
    code: json["code"],
    type: json["type"],
    icon: json["icon"],
    temperature: json["temperature"],
    temperatureCelcius: json["temperature_celcius"],
    clouds: json["clouds"],
    humidity: json["humidity"],
    pressure: json["pressure"],
    wind: json["wind"],
    coordinates: json["coordinates"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "type": type,
    "icon": icon,
    "temperature": temperature,
    "temperature_celcius": temperatureCelcius,
    "clouds": clouds,
    "humidity": humidity,
    "pressure": pressure,
    "wind": wind,
    "coordinates": coordinates,
    "updated_at": updatedAt,
  };
}

enum Code { CLEAR, CLOUDS, RAIN, HAZE, DRIZZLE }

final codeValues = EnumValues({
  "clear": Code.CLEAR,
  "clouds": Code.CLOUDS,
  "drizzle": Code.DRIZZLE,
  "haze": Code.HAZE,
  "rain": Code.RAIN
});

class Coordinates {
  Coordinates({
    this.lat,
    this.lon,
  });

  double? lat;
  double? lon;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
    lat: json["lat"],
    lon: json["lon"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lon": lon,
  };
}

class Temperature {
  Temperature({
    this.temp,
    this.unit,
  });

  double? temp;
  Unit? unit;

  factory Temperature.fromJson(Map<String, dynamic> json) => Temperature(
    temp: json["temp"],
    unit: json["unit"],
  );

  Map<String, dynamic> toJson() => {
    "temp": temp,
    "unit": unit,
  };
}

enum Unit { FAHRENHEIT, CELCIUS }

final unitValues = EnumValues({
  "celcius": Unit.CELCIUS,
  "fahrenheit": Unit.FAHRENHEIT
});

class Wind {
  Wind({
    this.speed,
    this.degree,
  });

  String? speed;
  int? degree;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
    speed: json["speed"],
    degree: json["degree"],
  );

  Map<String, dynamic> toJson() => {
    "speed": speed,
    "degree": degree,
  };
}

class Meta {
  Meta({
    this.subscription,
    this.plans,
    this.addOns,
    this.sports,
    this.pagination,
  });

  Subscription? subscription;
  List<Plan?>? plans;
  List<dynamic>? addOns;
  List<Sport?>? sports;
  Pagination? pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    subscription: json["subscription"],
    plans: json["plans"] == null ? [] : json["plans"] == null ? [] : List<Plan?>.from(json["plans"]!.map((x) => Plan.fromJson(x))),
    addOns: json["add-ons"] == null ? [] : json["add-ons"] == null ? [] : List<dynamic>.from(json["add-ons"]!.map((x) => x)),
    sports: json["sports"] == null ? [] : json["sports"] == null ? [] : List<Sport?>.from(json["sports"]!.map((x) => Sport.fromJson(x))),
    pagination: json["pagination"],
  );

  Map<String, dynamic> toJson() => {
    "subscription": subscription,
    "plans": plans == null ? [] : plans == null ? [] : List<dynamic>.from(plans!.map((x) => x!.toJson())),
    "add-ons": addOns == null ? [] : addOns == null ? [] : List<dynamic>.from(addOns!.map((x) => x)),
    "sports": sports == null ? [] : sports == null ? [] : List<dynamic>.from(sports!.map((x) => x!.toJson())),
    "pagination": pagination,
  };
}

class Pagination {
  Pagination({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.links,
  });

  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;
  Links? links;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    total: json["total"],
    count: json["count"],
    perPage: json["per_page"],
    currentPage: json["current_page"],
    totalPages: json["total_pages"],
    links: json["links"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "count": count,
    "per_page": perPage,
    "current_page": currentPage,
    "total_pages": totalPages,
    "links": links,
  };
}

class Links {
  Links({
    this.next,
  });

  String? next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "next": next,
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
  Timezone? timezone;

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

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
