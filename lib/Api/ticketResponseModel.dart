// To parse this JSON data, do
//
//     final ticketResponseModel = ticketResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TicketResponseModel ticketResponseModelFromJson(String str) => TicketResponseModel.fromJson(json.decode(str));

String ticketResponseModelToJson(TicketResponseModel data) => json.encode(data.toJson());

class TicketResponseModel {
  TicketResponseModelEmbedded embedded;
  TicketResponseModelLinks links;
  Page page;

  TicketResponseModel({
    required this.embedded,
    required this.links,
    required this.page,
  });

  factory TicketResponseModel.fromJson(Map<String, dynamic> json) => TicketResponseModel(
    embedded: TicketResponseModelEmbedded.fromJson(json["_embedded"]),
    links: TicketResponseModelLinks.fromJson(json["_links"]),
    page: Page.fromJson(json["page"]),
  );

  Map<String, dynamic> toJson() => {
    "_embedded": embedded.toJson(),
    "_links": links.toJson(),
    "page": page.toJson(),
  };
}

class TicketResponseModelEmbedded {
  List<Event> events;

  TicketResponseModelEmbedded({
    required this.events,
  });

  factory TicketResponseModelEmbedded.fromJson(Map<String, dynamic> json) => TicketResponseModelEmbedded(
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
  };
}

class Event {
  AttractionName name;
  EventType type;
  String id;
  bool test;
  String url;
  Locale locale;
  List<Image> images;
  Sales sales;
  Dates dates;
  List<Classification> classifications;
  Promoter promoter;
  List<Promoter> promoters;
  String pleaseNote;
  List<PriceRange> priceRanges;
  List<Product> products;
  Seatmap seatmap;
  Accessibility accessibility;
  TicketLimit ticketLimit;
  AgeRestrictions ageRestrictions;
  Ticketing ticketing;
  EventLinks links;
  EventEmbedded embedded;

  Event({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.images,
    required this.sales,
    required this.dates,
    required this.classifications,
    required this.promoter,
    required this.promoters,
    required this.pleaseNote,
    required this.priceRanges,
    required this.products,
    required this.seatmap,
    required this.accessibility,
    required this.ticketLimit,
    required this.ageRestrictions,
    required this.ticketing,
    required this.links,
    required this.embedded,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    name: attractionNameValues.map[json["name"]]!,
    type: eventTypeValues.map[json["type"]]!,
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    sales: Sales.fromJson(json["sales"]),
    dates: Dates.fromJson(json["dates"]),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    promoter: Promoter.fromJson(json["promoter"]),
    promoters: List<Promoter>.from(json["promoters"].map((x) => Promoter.fromJson(x))),
    pleaseNote: json["pleaseNote"],
    priceRanges: List<PriceRange>.from(json["priceRanges"].map((x) => PriceRange.fromJson(x))),
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    seatmap: Seatmap.fromJson(json["seatmap"]),
    accessibility: Accessibility.fromJson(json["accessibility"]),
    ticketLimit: TicketLimit.fromJson(json["ticketLimit"]),
    ageRestrictions: AgeRestrictions.fromJson(json["ageRestrictions"]),
    ticketing: Ticketing.fromJson(json["ticketing"]),
    links: EventLinks.fromJson(json["_links"]),
    embedded: EventEmbedded.fromJson(json["_embedded"]),
  );

  Map<String, dynamic> toJson() => {
    "name": attractionNameValues.reverse[name],
    "type": eventTypeValues.reverse[type],
    "id": id,
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "sales": sales.toJson(),
    "dates": dates.toJson(),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "promoter": promoter.toJson(),
    "promoters": List<dynamic>.from(promoters.map((x) => x.toJson())),
    "pleaseNote": pleaseNote,
    "priceRanges": List<dynamic>.from(priceRanges.map((x) => x.toJson())),
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "seatmap": seatmap.toJson(),
    "accessibility": accessibility.toJson(),
    "ticketLimit": ticketLimit.toJson(),
    "ageRestrictions": ageRestrictions.toJson(),
    "ticketing": ticketing.toJson(),
    "_links": links.toJson(),
    "_embedded": embedded.toJson(),
  };
}

class Accessibility {
  String info;
  int ticketLimit;

  Accessibility({
    required this.info,
    required this.ticketLimit,
  });

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
    info: json["info"],
    ticketLimit: json["ticketLimit"],
  );

  Map<String, dynamic> toJson() => {
    "info": info,
    "ticketLimit": ticketLimit,
  };
}

class AgeRestrictions {
  bool legalAgeEnforced;

  AgeRestrictions({
    required this.legalAgeEnforced,
  });

  factory AgeRestrictions.fromJson(Map<String, dynamic> json) => AgeRestrictions(
    legalAgeEnforced: json["legalAgeEnforced"],
  );

  Map<String, dynamic> toJson() => {
    "legalAgeEnforced": legalAgeEnforced,
  };
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

class Dates {
  Start start;
  Timezone timezone;
  Status status;
  bool spanMultipleDays;

  Dates({
    required this.start,
    required this.timezone,
    required this.status,
    required this.spanMultipleDays,
  });

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
    start: Start.fromJson(json["start"]),
    timezone: timezoneValues.map[json["timezone"]]!,
    status: Status.fromJson(json["status"]),
    spanMultipleDays: json["spanMultipleDays"],
  );

  Map<String, dynamic> toJson() => {
    "start": start.toJson(),
    "timezone": timezoneValues.reverse[timezone],
    "status": status.toJson(),
    "spanMultipleDays": spanMultipleDays,
  };
}

class Start {
  DateTime localDate;
  String localTime;
  DateTime dateTime;
  bool dateTbd;
  bool dateTba;
  bool timeTba;
  bool noSpecificTime;

  Start({
    required this.localDate,
    required this.localTime,
    required this.dateTime,
    required this.dateTbd,
    required this.dateTba,
    required this.timeTba,
    required this.noSpecificTime,
  });

  factory Start.fromJson(Map<String, dynamic> json) => Start(
    localDate: DateTime.parse(json["localDate"]),
    localTime: json["localTime"],
    dateTime: DateTime.parse(json["dateTime"]),
    dateTbd: json["dateTBD"],
    dateTba: json["dateTBA"],
    timeTba: json["timeTBA"],
    noSpecificTime: json["noSpecificTime"],
  );

  Map<String, dynamic> toJson() => {
    "localDate": "${localDate.year.toString().padLeft(4, '0')}-${localDate.month.toString().padLeft(2, '0')}-${localDate.day.toString().padLeft(2, '0')}",
    "localTime": localTime,
    "dateTime": dateTime.toIso8601String(),
    "dateTBD": dateTbd,
    "dateTBA": dateTba,
    "timeTBA": timeTba,
    "noSpecificTime": noSpecificTime,
  };
}

class Status {
  Code code;

  Status({
    required this.code,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    code: codeValues.map[json["code"]]!,
  );

  Map<String, dynamic> toJson() => {
    "code": codeValues.reverse[code],
  };
}

enum Code {
  ONSALE
}

final codeValues = EnumValues({
  "onsale": Code.ONSALE
});

enum Timezone {
  AMERICA_CHICAGO
}

final timezoneValues = EnumValues({
  "America/Chicago": Timezone.AMERICA_CHICAGO
});

class EventEmbedded {
  List<Venue> venues;
  List<Attraction> attractions;

  EventEmbedded({
    required this.venues,
    required this.attractions,
  });

  factory EventEmbedded.fromJson(Map<String, dynamic> json) => EventEmbedded(
    venues: List<Venue>.from(json["venues"].map((x) => Venue.fromJson(x))),
    attractions: List<Attraction>.from(json["attractions"].map((x) => Attraction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "venues": List<dynamic>.from(venues.map((x) => x.toJson())),
    "attractions": List<dynamic>.from(attractions.map((x) => x.toJson())),
  };
}

class Attraction {
  AttractionName name;
  AttractionType type;
  AttractionId id;
  bool test;
  String url;
  Locale locale;
  List<Image> images;
  List<Classification> classifications;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;

  Attraction({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.images,
    required this.classifications,
    required this.upcomingEvents,
    required this.links,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) => Attraction(
    name: attractionNameValues.map[json["name"]]!,
    type: attractionTypeValues.map[json["type"]]!,
    id: attractionIdValues.map[json["id"]]!,
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": attractionNameValues.reverse[name],
    "type": attractionTypeValues.reverse[type],
    "id": attractionIdValues.reverse[id],
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
  };
}

enum AttractionId {
  K8_V_Z917_FO_D0,
  K8_V_Z917_U_P4_V
}

final attractionIdValues = EnumValues({
  "K8vZ917foD0": AttractionId.K8_V_Z917_FO_D0,
  "K8vZ917uP4V": AttractionId.K8_V_Z917_U_P4_V
});

class Image {
  Ratio ratio;
  String url;
  int width;
  int height;
  bool fallback;

  Image({
    required this.ratio,
    required this.url,
    required this.width,
    required this.height,
    required this.fallback,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    ratio: ratioValues.map[json["ratio"]]!,
    url: json["url"],
    width: json["width"],
    height: json["height"],
    fallback: json["fallback"],
  );

  Map<String, dynamic> toJson() => {
    "ratio": ratioValues.reverse[ratio],
    "url": url,
    "width": width,
    "height": height,
    "fallback": fallback,
  };
}

enum Ratio {
  THE_169,
  THE_32,
  THE_43
}

final ratioValues = EnumValues({
  "16_9": Ratio.THE_169,
  "3_2": Ratio.THE_32,
  "4_3": Ratio.THE_43
});

class AttractionLinks {
  First self;

  AttractionLinks({
    required this.self,
  });

  factory AttractionLinks.fromJson(Map<String, dynamic> json) => AttractionLinks(
    self: First.fromJson(json["self"]),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
  };
}

class First {
  String href;

  First({
    required this.href,
  });

  factory First.fromJson(Map<String, dynamic> json) => First(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

enum Locale {
  EN_US
}

final localeValues = EnumValues({
  "en-us": Locale.EN_US
});

enum AttractionName {
  BROADWAY_IN_CHICAGO,
  HAMILTON_CHICAGO
}

final attractionNameValues = EnumValues({
  "Broadway In Chicago": AttractionName.BROADWAY_IN_CHICAGO,
  "Hamilton (Chicago)": AttractionName.HAMILTON_CHICAGO
});

enum AttractionType {
  ATTRACTION
}

final attractionTypeValues = EnumValues({
  "attraction": AttractionType.ATTRACTION
});

class UpcomingEvents {
  int ticketmaster;
  int total;
  int filtered;

  UpcomingEvents({
    required this.ticketmaster,
    required this.total,
    required this.filtered,
  });

  factory UpcomingEvents.fromJson(Map<String, dynamic> json) => UpcomingEvents(
    ticketmaster: json["ticketmaster"],
    total: json["_total"],
    filtered: json["_filtered"],
  );

  Map<String, dynamic> toJson() => {
    "ticketmaster": ticketmaster,
    "_total": total,
    "_filtered": filtered,
  };
}

class Venue {
  VenueName name;
  VenueType type;
  VenueId id;
  bool test;
  String url;
  Locale locale;
  List<Image> images;
  String postalCode;
  Timezone timezone;
  City city;
  State state;
  Country country;
  Address address;
  Location location;
  List<Genre> markets;
  List<Dma> dmas;
  BoxOfficeInfo boxOfficeInfo;
  String parkingDetail;
  String accessibleSeatingDetail;
  GeneralInfo generalInfo;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;

  Venue({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.images,
    required this.postalCode,
    required this.timezone,
    required this.city,
    required this.state,
    required this.country,
    required this.address,
    required this.location,
    required this.markets,
    required this.dmas,
    required this.boxOfficeInfo,
    required this.parkingDetail,
    required this.accessibleSeatingDetail,
    required this.generalInfo,
    required this.upcomingEvents,
    required this.links,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    name: venueNameValues.map[json["name"]]!,
    type: venueTypeValues.map[json["type"]]!,
    id: venueIdValues.map[json["id"]]!,
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    postalCode: json["postalCode"],
    timezone: timezoneValues.map[json["timezone"]]!,
    city: City.fromJson(json["city"]),
    state: State.fromJson(json["state"]),
    country: Country.fromJson(json["country"]),
    address: Address.fromJson(json["address"]),
    location: Location.fromJson(json["location"]),
    markets: List<Genre>.from(json["markets"].map((x) => Genre.fromJson(x))),
    dmas: List<Dma>.from(json["dmas"].map((x) => Dma.fromJson(x))),
    boxOfficeInfo: BoxOfficeInfo.fromJson(json["boxOfficeInfo"]),
    parkingDetail: json["parkingDetail"],
    accessibleSeatingDetail: json["accessibleSeatingDetail"],
    generalInfo: GeneralInfo.fromJson(json["generalInfo"]),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": venueNameValues.reverse[name],
    "type": venueTypeValues.reverse[type],
    "id": venueIdValues.reverse[id],
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "postalCode": postalCode,
    "timezone": timezoneValues.reverse[timezone],
    "city": city.toJson(),
    "state": state.toJson(),
    "country": country.toJson(),
    "address": address.toJson(),
    "location": location.toJson(),
    "markets": List<dynamic>.from(markets.map((x) => x.toJson())),
    "dmas": List<dynamic>.from(dmas.map((x) => x.toJson())),
    "boxOfficeInfo": boxOfficeInfo.toJson(),
    "parkingDetail": parkingDetail,
    "accessibleSeatingDetail": accessibleSeatingDetail,
    "generalInfo": generalInfo.toJson(),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
  };
}

class Address {
  Line1 line1;

  Address({
    required this.line1,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    line1: line1Values.map[json["line1"]]!,
  );

  Map<String, dynamic> toJson() => {
    "line1": line1Values.reverse[line1],
  };
}

enum Line1 {
  THE_24_W_RANDOLPH
}

final line1Values = EnumValues({
  "24 W Randolph": Line1.THE_24_W_RANDOLPH
});

class BoxOfficeInfo {
  String phoneNumberDetail;
  String openHoursDetail;
  String acceptedPaymentDetail;
  String willCallDetail;

  BoxOfficeInfo({
    required this.phoneNumberDetail,
    required this.openHoursDetail,
    required this.acceptedPaymentDetail,
    required this.willCallDetail,
  });

  factory BoxOfficeInfo.fromJson(Map<String, dynamic> json) => BoxOfficeInfo(
    phoneNumberDetail: json["phoneNumberDetail"],
    openHoursDetail: json["openHoursDetail"],
    acceptedPaymentDetail: json["acceptedPaymentDetail"],
    willCallDetail: json["willCallDetail"],
  );

  Map<String, dynamic> toJson() => {
    "phoneNumberDetail": phoneNumberDetail,
    "openHoursDetail": openHoursDetail,
    "acceptedPaymentDetail": acceptedPaymentDetail,
    "willCallDetail": willCallDetail,
  };
}

class City {
  CityName name;

  City({
    required this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
    name: cityNameValues.map[json["name"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": cityNameValues.reverse[name],
  };
}

enum CityName {
  CHICAGO
}

final cityNameValues = EnumValues({
  "Chicago": CityName.CHICAGO
});

class Country {
  CountryName name;
  CountryCode countryCode;

  Country({
    required this.name,
    required this.countryCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    name: countryNameValues.map[json["name"]]!,
    countryCode: countryCodeValues.map[json["countryCode"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": countryNameValues.reverse[name],
    "countryCode": countryCodeValues.reverse[countryCode],
  };
}

enum CountryCode {
  US
}

final countryCodeValues = EnumValues({
  "US": CountryCode.US
});

enum CountryName {
  UNITED_STATES_OF_AMERICA
}

final countryNameValues = EnumValues({
  "United States Of America": CountryName.UNITED_STATES_OF_AMERICA
});

class Dma {
  int id;

  Dma({
    required this.id,
  });

  factory Dma.fromJson(Map<String, dynamic> json) => Dma(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class GeneralInfo {
  String generalRule;
  String childRule;

  GeneralInfo({
    required this.generalRule,
    required this.childRule,
  });

  factory GeneralInfo.fromJson(Map<String, dynamic> json) => GeneralInfo(
    generalRule: json["generalRule"],
    childRule: json["childRule"],
  );

  Map<String, dynamic> toJson() => {
    "generalRule": generalRule,
    "childRule": childRule,
  };
}

enum VenueId {
  KOV_ZP_ZAFAJ7_A
}

final venueIdValues = EnumValues({
  "KovZpZAFAJ7A": VenueId.KOV_ZP_ZAFAJ7_A
});

class Location {
  String longitude;
  String latitude;

  Location({
    required this.longitude,
    required this.latitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    longitude: json["longitude"],
    latitude: json["latitude"],
  );

  Map<String, dynamic> toJson() => {
    "longitude": longitude,
    "latitude": latitude,
  };
}

enum VenueName {
  JAMES_M_NEDERLANDER_THEATRE
}

final venueNameValues = EnumValues({
  "James M. Nederlander Theatre": VenueName.JAMES_M_NEDERLANDER_THEATRE
});

class State {
  StateName name;
  StateCode stateCode;

  State({
    required this.name,
    required this.stateCode,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
    name: stateNameValues.map[json["name"]]!,
    stateCode: stateCodeValues.map[json["stateCode"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": stateNameValues.reverse[name],
    "stateCode": stateCodeValues.reverse[stateCode],
  };
}

enum StateName {
  ILLINOIS
}

final stateNameValues = EnumValues({
  "Illinois": StateName.ILLINOIS
});

enum StateCode {
  IL
}

final stateCodeValues = EnumValues({
  "IL": StateCode.IL
});

enum VenueType {
  VENUE
}

final venueTypeValues = EnumValues({
  "venue": VenueType.VENUE
});

class EventLinks {
  First self;
  List<First> attractions;
  List<First> venues;

  EventLinks({
    required this.self,
    required this.attractions,
    required this.venues,
  });

  factory EventLinks.fromJson(Map<String, dynamic> json) => EventLinks(
    self: First.fromJson(json["self"]),
    attractions: List<First>.from(json["attractions"].map((x) => First.fromJson(x))),
    venues: List<First>.from(json["venues"].map((x) => First.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
    "attractions": List<dynamic>.from(attractions.map((x) => x.toJson())),
    "venues": List<dynamic>.from(venues.map((x) => x.toJson())),
  };
}

class PriceRange {
  PriceRangeType type;
  Currency currency;
  int min;
  int max;

  PriceRange({
    required this.type,
    required this.currency,
    required this.min,
    required this.max,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    type: priceRangeTypeValues.map[json["type"]]!,
    currency: currencyValues.map[json["currency"]]!,
    min: json["min"],
    max: json["max"],
  );

  Map<String, dynamic> toJson() => {
    "type": priceRangeTypeValues.reverse[type],
    "currency": currencyValues.reverse[currency],
    "min": min,
    "max": max,
  };
}

enum Currency {
  USD
}

final currencyValues = EnumValues({
  "USD": Currency.USD
});

enum PriceRangeType {
  STANDARD
}

final priceRangeTypeValues = EnumValues({
  "standard": PriceRangeType.STANDARD
});

class Product {
  ProductName name;
  String id;
  String url;
  NameEnum type;
  List<Classification> classifications;

  Product({
    required this.name,
    required this.id,
    required this.url,
    required this.type,
    required this.classifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: productNameValues.map[json["name"]]!,
    id: json["id"],
    url: json["url"],
    type: nameEnumValues.map[json["type"]]!,
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": productNameValues.reverse[name],
    "id": id,
    "url": url,
    "type": nameEnumValues.reverse[type],
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
  };
}

enum ProductName {
  ADVANCE_PARKING,
  BROADWAY_IN_CHICAGO_SUITE_SERVICE
}

final productNameValues = EnumValues({
  "Advance Parking": ProductName.ADVANCE_PARKING,
  "Broadway In Chicago Suite Service": ProductName.BROADWAY_IN_CHICAGO_SUITE_SERVICE
});

class Promoter {
  String id;
  PromoterName name;
  Description description;

  Promoter({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Promoter.fromJson(Map<String, dynamic> json) => Promoter(
    id: json["id"],
    name: promoterNameValues.map[json["name"]]!,
    description: descriptionValues.map[json["description"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": promoterNameValues.reverse[name],
    "description": descriptionValues.reverse[description],
  };
}

enum Description {
  BROADWAY_IN_CHICAGO_LOC_CHICAGO
}

final descriptionValues = EnumValues({
  "BROADWAY IN CHICAGO / LOC / CHICAGO": Description.BROADWAY_IN_CHICAGO_LOC_CHICAGO
});

enum PromoterName {
  BROADWAY_IN_CHICAGO
}

final promoterNameValues = EnumValues({
  "BROADWAY IN CHICAGO": PromoterName.BROADWAY_IN_CHICAGO
});

class Sales {
  Public public;
  List<Presale> presales;

  Sales({
    required this.public,
    required this.presales,
  });

  factory Sales.fromJson(Map<String, dynamic> json) => Sales(
    public: Public.fromJson(json["public"]),
    presales: List<Presale>.from(json["presales"].map((x) => Presale.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "public": public.toJson(),
    "presales": List<dynamic>.from(presales.map((x) => x.toJson())),
  };
}

class Presale {
  DateTime startDateTime;
  DateTime endDateTime;
  PresaleName name;
  String description;

  Presale({
    required this.startDateTime,
    required this.endDateTime,
    required this.name,
    required this.description,
  });

  factory Presale.fromJson(Map<String, dynamic> json) => Presale(
    startDateTime: DateTime.parse(json["startDateTime"]),
    endDateTime: DateTime.parse(json["endDateTime"]),
    name: presaleNameValues.map[json["name"]]!,
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime.toIso8601String(),
    "endDateTime": endDateTime.toIso8601String(),
    "name": presaleNameValues.reverse[name],
    "description": description,
  };
}

enum PresaleName {
  ME_3_PROMOTIONAL_OFFER,
  ONLINE_PRESALES,
  ONLINE_PRE_SALES
}

final presaleNameValues = EnumValues({
  "Me + 3 Promotional Offer": PresaleName.ME_3_PROMOTIONAL_OFFER,
  "Online Presales": PresaleName.ONLINE_PRESALES,
  "Online Pre-Sales": PresaleName.ONLINE_PRE_SALES
});

class Public {
  DateTime startDateTime;
  bool startTbd;
  bool startTba;
  DateTime endDateTime;

  Public({
    required this.startDateTime,
    required this.startTbd,
    required this.startTba,
    required this.endDateTime,
  });

  factory Public.fromJson(Map<String, dynamic> json) => Public(
    startDateTime: DateTime.parse(json["startDateTime"]),
    startTbd: json["startTBD"],
    startTba: json["startTBA"],
    endDateTime: DateTime.parse(json["endDateTime"]),
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime.toIso8601String(),
    "startTBD": startTbd,
    "startTBA": startTba,
    "endDateTime": endDateTime.toIso8601String(),
  };
}

class Seatmap {
  String staticUrl;

  Seatmap({
    required this.staticUrl,
  });

  factory Seatmap.fromJson(Map<String, dynamic> json) => Seatmap(
    staticUrl: json["staticUrl"],
  );

  Map<String, dynamic> toJson() => {
    "staticUrl": staticUrl,
  };
}

class TicketLimit {
  Info info;

  TicketLimit({
    required this.info,
  });

  factory TicketLimit.fromJson(Map<String, dynamic> json) => TicketLimit(
    info: infoValues.map[json["info"]]!,
  );

  Map<String, dynamic> toJson() => {
    "info": infoValues.reverse[info],
  };
}

enum Info {
  THERE_IS_AN_OVERALL_9_TICKET_LIMIT_FOR_THIS_EVENT
}

final infoValues = EnumValues({
  "There is an overall 9 ticket limit for this event.": Info.THERE_IS_AN_OVERALL_9_TICKET_LIMIT_FOR_THIS_EVENT
});

class  Ticketing {
  AllInclusivePricing safeTix;
  AllInclusivePricing allInclusivePricing;

  Ticketing({
    required this.safeTix,
    required this.allInclusivePricing,
  });

  factory Ticketing.fromJson(Map<String, dynamic> json) => Ticketing(
    safeTix: AllInclusivePricing.fromJson(json["safeTix"]),
    allInclusivePricing: AllInclusivePricing.fromJson(json["allInclusivePricing"]),
  );

  Map<String, dynamic> toJson() => {
    "safeTix": safeTix.toJson(),
    "allInclusivePricing": allInclusivePricing.toJson(),
  };
}

class AllInclusivePricing {
  bool enabled;

  AllInclusivePricing({
    required this.enabled,
  });

  factory AllInclusivePricing.fromJson(Map<String, dynamic> json) => AllInclusivePricing(
    enabled: json["enabled"],
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
  };
}

enum EventType {
  EVENT
}

final eventTypeValues = EnumValues({
  "event": EventType.EVENT
});

class TicketResponseModelLinks {
  First first;
  First self;
  First next;
  First last;

  TicketResponseModelLinks({
    required this.first,
    required this.self,
    required this.next,
    required this.last,
  });

  factory TicketResponseModelLinks.fromJson(Map<String, dynamic> json) => TicketResponseModelLinks(
    first: First.fromJson(json["first"]),
    self: First.fromJson(json["self"]),
    next: First.fromJson(json["next"]),
    last: First.fromJson(json["last"]),
  );

  Map<String, dynamic> toJson() => {
    "first": first.toJson(),
    "self": self.toJson(),
    "next": next.toJson(),
    "last": last.toJson(),
  };
}

class Page {
  int size;
  int totalElements;
  int totalPages;
  int number;

  Page({
    required this.size,
    required this.totalElements,
    required this.totalPages,
    required this.number,
  });

  factory Page.fromJson(Map<String, dynamic> json) => Page(
    size: json["size"],
    totalElements: json["totalElements"],
    totalPages: json["totalPages"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "size": size,
    "totalElements": totalElements,
    "totalPages": totalPages,
    "number": number,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
