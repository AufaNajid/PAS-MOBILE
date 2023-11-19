import 'dart:convert';

TicketModel allTicketModelFromJson(String str) => TicketModel.fromJson(json.decode(str));

Event ticketModelFromJson(String str) =>
    Event.fromJson(json.decode(str));

class TicketModel {
  TicketEmbedded? embedded;

  TicketModel({this.embedded});

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      TicketModel(embedded: TicketEmbedded.fromJson(json["_embedded"]));

}

class TicketEmbedded {
  List<Event> events;

  TicketEmbedded({
    required this.events,
  });

  factory TicketEmbedded.fromJson(Map<String, dynamic> json) => TicketEmbedded(
      events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))));
}

/*EVENT*/
class Event {
  String name, id;
  // String? info;
  Dates? dates;
  // Promoter? promoter;
  Embedded? embedded;
  List<Image>? images;
  // List<PriceRange>? priceRanges;
  // List<Classification>? classifications;
  // Locale? locale;


  Event({
    required this.name,
    required this.id,
    this.dates,
    // this.promoter,
    this.embedded,
    this.images,
    // this.priceRanges,
    // required this.classifications,
    // required this.locale,
    // this.info,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    name: json["name"],
    id: json["id"],
    // info: json["info"],
    dates: Dates.fromJson(json["dates"]),
    // promoter: Promoter.fromJson(json["promoter"]),
    embedded: Embedded.fromJson(json["_embedded"]),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    // priceRanges: (json["priceRanges"] as List<dynamic>?)
    //     ?.map((x) => PriceRange.fromJson(x))
    //     .toList(),
    // classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    // locale: localeValues.map[json["locale"]]!,
  );
}

/*DATE*/
class Dates {
  Start start;

  Dates({required this.start});

  factory Dates.fromJson(Map<String, dynamic> json) =>
      Dates(start: Start.fromJson(json["start"]));
}

class Start {
  String localDate, localTime;

  Start({required this.localDate, required this.localTime});

  factory Start.fromJson(Map<String, dynamic> json) =>
      Start(localDate: json["localDate"], localTime: json["localTime"]);
}




/*PROMOTER*/
class Promoter {
  String name;

  Promoter({required this.name});

  factory Promoter.fromJson(Map<String, dynamic> json) =>
      Promoter(name: json["name"]);
}

/*PRICE*/
class PriceRange {
  String type;
  String currency;
  double min;
  double max;

  PriceRange({
    required this.type,
    required this.currency,
    required this.min,
    required this.max,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    type: json["type"],
    currency: json["currency"],
    min: json["min"].toDouble(),
    max: json["max"].toDouble(),
  );
}

/*IMAGES*/
class Image {
  String ratio, url;
  int width, height;

  Image(
      {required this.ratio,
        required this.url,
        required this.width,
        required this.height});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
      ratio: json["ratio"],
      url: json["url"],
      width: json["width"],
      height: json["height"]);
}

class Embedded {
  List<Venue> venues;

  Embedded({
    required this.venues,
  });

  factory Embedded.fromJson(Map<String, dynamic> json) => Embedded(
      venues: List<Venue>.from(json["venues"].map((x) => Venue.fromJson(x))));
}

/*VENUE*/
class Venue {
  String name;

  Venue({required this.name});

  factory Venue.fromJson(Map<String, dynamic> json) =>
      Venue(name: json["name"]);
}



class Classification {
  bool primary;
  Genre segment;
  Genre genre;
  Genre subGenre;
  Genre type;
  Genre subType;
  bool family;

  Classification({
    required this.primary,
    required this.segment,
    required this.genre,
    required this.subGenre,
    required this.type,
    required this.subType,
    required this.family,
  });

  factory Classification.fromJson(Map<String, dynamic> json) => Classification(
    primary: json["primary"],
    segment: Genre.fromJson(json["segment"]),
    genre: Genre.fromJson(json["genre"]),
    subGenre: Genre.fromJson(json["subGenre"]),
    type: Genre.fromJson(json["type"]),
    subType: Genre.fromJson(json["subType"]),
    family: json["family"],
  );

  Map<String, dynamic> toJson() => {
    "primary": primary,
    "segment": segment.toJson(),
    "genre": genre.toJson(),
    "subGenre": subGenre.toJson(),
    "type": type.toJson(),
    "subType": subType.toJson(),
    "family": family,
  };
}

class Genre {
  String id;
  NameEnum name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: nameEnumValues.map[json["name"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameEnumValues.reverse[name],
  };
}

enum NameEnum {
  ARTS_THEATRE,
  CENTRAL_ILLINOIS,
  CHICAGOLAND_AND_NORTHERN_IL,
  MEAL_PACKAGE,
  MISCELLANEOUS,
  MUSICAL,
  PARKING,
  REGULAR,
  THEATRE,
  UNDEFINED,
  UPSELL
}

final nameEnumValues = EnumValues({
  "Arts & Theatre": NameEnum.ARTS_THEATRE,
  "Central Illinois": NameEnum.CENTRAL_ILLINOIS,
  "Chicagoland and Northern Il": NameEnum.CHICAGOLAND_AND_NORTHERN_IL,
  "Meal Package": NameEnum.MEAL_PACKAGE,
  "Miscellaneous": NameEnum.MISCELLANEOUS,
  "Musical": NameEnum.MUSICAL,
  "Parking": NameEnum.PARKING,
  "Regular": NameEnum.REGULAR,
  "Theatre": NameEnum.THEATRE,
  "Undefined": NameEnum.UNDEFINED,
  "Upsell": NameEnum.UPSELL
});


class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

enum Locale {
  EN_US
}

final localeValues = EnumValues({
  "en-us": Locale.EN_US
});
