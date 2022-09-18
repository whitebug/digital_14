import 'package:digital_14/features/server/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'performer_model.g.dart';

@JsonSerializable()
class PerformerModel {
  String? type;
  String? name;
  String? image;
  int? id;
  ImageModel? images;
  List<DivisionModel>? divisions;
  @JsonKey(name: 'has_upcoming_events')
  bool? hasUpcomingEvents;
  bool? primary;
  StatisticsModel? stats;
  List<TaxonomyModel>? taxonomies;
  @JsonKey(name: 'image_attribution')
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  @JsonKey(name: 'home_venue_id')
  int? homeVenueId;
  @JsonKey(name: 'short_name')
  String? shortName;
  @JsonKey(name: 'num_upcoming_events')
  int? numUpcomingEvents;
  ColorModel? colors;
  @JsonKey(name: 'image_license')
  String? imageLicense;
  List<GenreModel>? genres;
  int? popularity;
  LocationModel? location;
  @JsonKey(name: 'image_rights_message')
  String? imageRightsMessage;
  @JsonKey(name: 'home_team')
  bool? homeTeam;
  @JsonKey(name: 'away_team')
  bool? awayTeam;

  PerformerModel({
    this.type,
    this.name,
    this.image,
    this.id,
    this.images,
    this.divisions,
    this.hasUpcomingEvents,
    this.primary,
    this.stats,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.homeVenueId,
    this.shortName,
    this.numUpcomingEvents,
    this.colors,
    this.imageLicense,
    this.genres,
    this.popularity,
    this.location,
    this.imageRightsMessage,
    this.homeTeam,
    this.awayTeam,
  });

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json);

  Map<String, dynamic> toJson() => _$PerformerModelToJson(this);
}
