import 'package:digital_14/features/server/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'venue_model.g.dart';

@JsonSerializable()
class VenueModel {
  String? state;
  @JsonKey(name: 'name_v2')
  String? nameV2;
  @JsonKey(name: 'postal_code')
  String? postalCode;
  String? name;
  List<String>? links;
  String? timezone;
  String? url;
  double? score;
  LocationModel? location;
  String? address;
  String? country;
  @JsonKey(name: 'has_upcoming_events')
  bool? hasUpcomingEvents;
  @JsonKey(name: 'num_upcoming_events')
  int? numUpcomingEvents;
  String? city;
  String? slug;
  @JsonKey(name: 'extended_address')
  String? extendedAddress;
  int? id;
  int? popularity;
  @JsonKey(name: 'access_method')
  AccessMethodModel? accessMethod;
  @JsonKey(name: 'metro_code')
  int? metroCode;
  int? capacity;
  @JsonKey(name: 'display_location')
  String? displayLocation;

  VenueModel({
    this.state,
    this.nameV2,
    this.postalCode,
    this.name,
    this.links,
    this.timezone,
    this.url,
    this.score,
    this.location,
    this.address,
    this.country,
    this.hasUpcomingEvents,
    this.numUpcomingEvents,
    this.city,
    this.slug,
    this.extendedAddress,
    this.id,
    this.popularity,
    this.accessMethod,
    this.metroCode,
    this.capacity,
    this.displayLocation,
  });

  factory VenueModel.fromJson(Map<String, dynamic> json) =>
      _$VenueModelFromJson(json);

  Map<String, dynamic> toJson() => _$VenueModelToJson(this);
}
