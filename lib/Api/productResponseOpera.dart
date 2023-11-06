// To parse this JSON data, do
//
//     final productResponseOpera = productResponseOperaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ProductResponseOpera productResponseOperaFromJson(String str) => ProductResponseOpera.fromJson(json.decode(str));

String productResponseOperaToJson(ProductResponseOpera data) => json.encode(data.toJson());

class ProductResponseOpera {
  ProductResponseOperaEmbedded embedded;
  ProductResponseOperaLinks links;
  Page page;

  ProductResponseOpera({
    required this.embedded,
    required this.links,
    required this.page,
  });

  factory ProductResponseOpera.fromJson(Map<String, dynamic> json) => ProductResponseOpera(
    embedded: ProductResponseOperaEmbedded.fromJson(json["_embedded"]),
    links: ProductResponseOperaLinks.fromJson(json["_links"]),
    page: Page.fromJson(json["page"]),
  );

  Map<String, dynamic> toJson() => {
    "_embedded": embedded.toJson(),
    "_links": links.toJson(),
    "page": page.toJson(),
  };
}

class ProductResponseOperaEmbedded {
  List<Event> events;

  ProductResponseOperaEmbedded({
    required this.events,
  });

  factory ProductResponseOperaEmbedded.fromJson(Map<String, dynamic> json) => ProductResponseOperaEmbedded(
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
  };
}

class Event {
  String name;
  EventType type;
  String id;
  bool test;
  Locale locale;
  List<Image> images;
  Dates dates;
  Ticketing ticketing;
  EventLinks links;
  String url;
  Sales sales;
  List<Classification> classifications;
  Promoter promoter;
  List<Promoter> promoters;
  List<PriceRange> priceRanges;
  Seatmap seatmap;
  Accessibility accessibility;
  AgeRestrictions ageRestrictions;
  EventEmbedded embedded;
  List<Outlet> outlets;
  String info;
  String pleaseNote;
  List<Product> products;

  Event({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.locale,
    required this.images,
    required this.dates,
    required this.ticketing,
    required this.links,
    required this.url,
    required this.sales,
    required this.classifications,
    required this.promoter,
    required this.promoters,
    required this.priceRanges,
    required this.seatmap,
    required this.accessibility,
    required this.ageRestrictions,
    required this.embedded,
    required this.outlets,
    required this.info,
    required this.pleaseNote,
    required this.products,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    name: json["name"],
    type: eventTypeValues.map[json["type"]]!,
    id: json["id"],
    test: json["test"],
    locale: localeValues.map[json["locale"]]!,
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    dates: Dates.fromJson(json["dates"]),
    ticketing: Ticketing.fromJson(json["ticketing"]),
    links: EventLinks.fromJson(json["_links"]),
    url: json["url"],
    sales: Sales.fromJson(json["sales"]),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    promoter: Promoter.fromJson(json["promoter"]),
    promoters: List<Promoter>.from(json["promoters"].map((x) => Promoter.fromJson(x))),
    priceRanges: List<PriceRange>.from(json["priceRanges"].map((x) => PriceRange.fromJson(x))),
    seatmap: Seatmap.fromJson(json["seatmap"]),
    accessibility: Accessibility.fromJson(json["accessibility"]),
    ageRestrictions: AgeRestrictions.fromJson(json["ageRestrictions"]),
    embedded: EventEmbedded.fromJson(json["_embedded"]),
    outlets: List<Outlet>.from(json["outlets"].map((x) => Outlet.fromJson(x))),
    info: json["info"],
    pleaseNote: json["pleaseNote"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": eventTypeValues.reverse[type],
    "id": id,
    "test": test,
    "locale": localeValues.reverse[locale],
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "dates": dates.toJson(),
    "ticketing": ticketing.toJson(),
    "_links": links.toJson(),
    "url": url,
    "sales": sales.toJson(),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "promoter": promoter.toJson(),
    "promoters": List<dynamic>.from(promoters.map((x) => x.toJson())),
    "priceRanges": List<dynamic>.from(priceRanges.map((x) => x.toJson())),
    "seatmap": seatmap.toJson(),
    "accessibility": accessibility.toJson(),
    "ageRestrictions": ageRestrictions.toJson(),
    "_embedded": embedded.toJson(),
    "outlets": List<dynamic>.from(outlets.map((x) => x.toJson())),
    "info": info,
    "pleaseNote": pleaseNote,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Accessibility {
  int ticketLimit;

  Accessibility({
    required this.ticketLimit,
  });

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
    ticketLimit: json["ticketLimit"],
  );

  Map<String, dynamic> toJson() => {
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
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

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
  OFFSALE,
  ONSALE
}

final codeValues = EnumValues({
  "offsale": Code.OFFSALE,
  "onsale": Code.ONSALE
});

enum Timezone {
  AMERICA_CHICAGO,
  AMERICA_LOS_ANGELES,
  AMERICA_NEW_YORK,
  EUROPE_BRUSSELS
}

final timezoneValues = EnumValues({
  "America/Chicago": Timezone.AMERICA_CHICAGO,
  "America/Los_Angeles": Timezone.AMERICA_LOS_ANGELES,
  "America/New_York": Timezone.AMERICA_NEW_YORK,
  "Europe/Brussels": Timezone.EUROPE_BRUSSELS
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
  String name;
  AttractionType type;
  String id;
  bool test;
  String url;
  Locale locale;
  List<String> aliases;
  List<Image> images;
  List<Classification> classifications;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;
  ExternalLinks externalLinks;

  Attraction({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.aliases,
    required this.images,
    required this.classifications,
    required this.upcomingEvents,
    required this.links,
    required this.externalLinks,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) => Attraction(
    name: json["name"],
    type: attractionTypeValues.map[json["type"]]!,
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: localeValues.map[json["locale"]]!,
    aliases: List<String>.from(json["aliases"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
    externalLinks: ExternalLinks.fromJson(json["externalLinks"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": attractionTypeValues.reverse[type],
    "id": id,
    "test": test,
    "url": url,
    "locale": localeValues.reverse[locale],
    "aliases": List<dynamic>.from(aliases.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
    "externalLinks": externalLinks.toJson(),
  };
}

class ExternalLinks {
  List<Facebook> youtube;
  List<Facebook> facebook;
  List<Facebook> instagram;
  List<Facebook> homepage;

  ExternalLinks({
    required this.youtube,
    required this.facebook,
    required this.instagram,
    required this.homepage,
  });

  factory ExternalLinks.fromJson(Map<String, dynamic> json) => ExternalLinks(
    youtube: List<Facebook>.from(json["youtube"].map((x) => Facebook.fromJson(x))),
    facebook: List<Facebook>.from(json["facebook"].map((x) => Facebook.fromJson(x))),
    instagram: List<Facebook>.from(json["instagram"].map((x) => Facebook.fromJson(x))),
    homepage: List<Facebook>.from(json["homepage"].map((x) => Facebook.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "youtube": List<dynamic>.from(youtube.map((x) => x.toJson())),
    "facebook": List<dynamic>.from(facebook.map((x) => x.toJson())),
    "instagram": List<dynamic>.from(instagram.map((x) => x.toJson())),
    "homepage": List<dynamic>.from(homepage.map((x) => x.toJson())),
  };
}

class Facebook {
  String url;

  Facebook({
    required this.url,
  });

  factory Facebook.fromJson(Map<String, dynamic> json) => Facebook(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

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
  int tmr;
  int ticketnet;
  int mfxBe;

  UpcomingEvents({
    required this.ticketmaster,
    required this.total,
    required this.filtered,
    required this.tmr,
    required this.ticketnet,
    required this.mfxBe,
  });

  factory UpcomingEvents.fromJson(Map<String, dynamic> json) => UpcomingEvents(
    ticketmaster: json["ticketmaster"],
    total: json["_total"],
    filtered: json["_filtered"],
    tmr: json["tmr"],
    ticketnet: json["ticketnet"],
    mfxBe: json["mfx-be"],
  );

  Map<String, dynamic> toJson() => {
    "ticketmaster": ticketmaster,
    "_total": total,
    "_filtered": filtered,
    "tmr": tmr,
    "ticketnet": ticketnet,
    "mfx-be": mfxBe,
  };
}

class Venue {
  String name;
  VenueType type;
  String id;
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
  Ada ada;
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
    required this.ada,
    required this.links,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    name: json["name"],
    type: venueTypeValues.map[json["type"]]!,
    id: json["id"],
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
    ada: Ada.fromJson(json["ada"]),
    links: AttractionLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": venueTypeValues.reverse[type],
    "id": id,
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
    "ada": ada.toJson(),
    "_links": links.toJson(),
  };
}

class Ada {
  String adaPhones;
  String adaCustomCopy;
  String adaHours;

  Ada({
    required this.adaPhones,
    required this.adaCustomCopy,
    required this.adaHours,
  });

  factory Ada.fromJson(Map<String, dynamic> json) => Ada(
    adaPhones: json["adaPhones"],
    adaCustomCopy: json["adaCustomCopy"],
    adaHours: json["adaHours"],
  );

  Map<String, dynamic> toJson() => {
    "adaPhones": adaPhones,
    "adaCustomCopy": adaCustomCopy,
    "adaHours": adaHours,
  };
}

class Address {
  String line1;

  Address({
    required this.line1,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    line1: json["line1"],
  );

  Map<String, dynamic> toJson() => {
    "line1": line1,
  };
}

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
  String name;

  City({
    required this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

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
  BE,
  US
}

final countryCodeValues = EnumValues({
  "BE": CountryCode.BE,
  "US": CountryCode.US
});

enum CountryName {
  BELGIUM,
  UNITED_STATES_OF_AMERICA
}

final countryNameValues = EnumValues({
  "Belgium": CountryName.BELGIUM,
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
  String childRule;
  String generalRule;

  GeneralInfo({
    required this.childRule,
    required this.generalRule,
  });

  factory GeneralInfo.fromJson(Map<String, dynamic> json) => GeneralInfo(
    childRule: json["childRule"],
    generalRule: json["generalRule"],
  );

  Map<String, dynamic> toJson() => {
    "childRule": childRule,
    "generalRule": generalRule,
  };
}

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

class State {
  String name;
  String stateCode;

  State({
    required this.name,
    required this.stateCode,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
    name: json["name"],
    stateCode: json["stateCode"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "stateCode": stateCode,
  };
}

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

class Outlet {
  String url;
  OutletType type;

  Outlet({
    required this.url,
    required this.type,
  });

  factory Outlet.fromJson(Map<String, dynamic> json) => Outlet(
    url: json["url"],
    type: outletTypeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "type": outletTypeValues.reverse[type],
  };
}

enum OutletType {
  TM_MARKET_PLACE,
  VENUE_BOX_OFFICE
}

final outletTypeValues = EnumValues({
  "tmMarketPlace": OutletType.TM_MARKET_PLACE,
  "venueBoxOffice": OutletType.VENUE_BOX_OFFICE
});

class PriceRange {
  PriceRangeType type;
  Currency currency;
  double min;
  double max;

  PriceRange({
    required this.type,
    required this.currency,
    required this.min,
    required this.max,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    type: priceRangeTypeValues.map[json["type"]]!,
    currency: currencyValues.map[json["currency"]]!,
    min: json["min"]?.toDouble(),
    max: json["max"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "type": priceRangeTypeValues.reverse[type],
    "currency": currencyValues.reverse[currency],
    "min": min,
    "max": max,
  };
}

enum Currency {
  EUR,
  USD
}

final currencyValues = EnumValues({
  "EUR": Currency.EUR,
  "USD": Currency.USD
});

enum PriceRangeType {
  STANDARD,
  STANDARD_INCLUDING_FEES
}

final priceRangeTypeValues = EnumValues({
  "standard": PriceRangeType.STANDARD,
  "standard including fees": PriceRangeType.STANDARD_INCLUDING_FEES
});

class Product {
  String name;
  String id;
  String url;
  String type;
  List<Classification> classifications;

  Product({
    required this.name,
    required this.id,
    required this.url,
    required this.type,
    required this.classifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json["name"],
    id: json["id"],
    url: json["url"],
    type: json["type"],
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "url": url,
    "type": type,
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
  };
}

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
  PROMOTED_BY_VENUE_NTL_USA
}

final descriptionValues = EnumValues({
  "PROMOTED BY VENUE / NTL / USA": Description.PROMOTED_BY_VENUE_NTL_USA
});

enum PromoterName {
  PRAGUE_CLASSICS_S_R_O,
  PROMOTED_BY_VENUE
}

final promoterNameValues = EnumValues({
  "Prague Classics s.r.o.": PromoterName.PRAGUE_CLASSICS_S_R_O,
  "PROMOTED BY VENUE": PromoterName.PROMOTED_BY_VENUE
});

class Sales {
  Public public;

  Sales({
    required this.public,
  });

  factory Sales.fromJson(Map<String, dynamic> json) => Sales(
    public: Public.fromJson(json["public"]),
  );

  Map<String, dynamic> toJson() => {
    "public": public.toJson(),
  };
}

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

class Ticketing {
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

class ProductResponseOperaLinks {
  First first;
  First self;
  First next;
  First last;

  ProductResponseOperaLinks({
    required this.first,
    required this.self,
    required this.next,
    required this.last,
  });

  factory ProductResponseOperaLinks.fromJson(Map<String, dynamic> json) => ProductResponseOperaLinks(
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
