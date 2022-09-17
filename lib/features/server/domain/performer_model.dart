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
  bool? hasUpcomingEvents;
  bool? primary;
  StatisticsModel? stats;
  List<TaxonomyModel>? taxonomies;
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  int? homeVenueId;
  String? shortName;
  int? numUpcomingEvents;
  ColorModel? colors;
  String? imageLicense;
  List<GenreModel>? genres;
  int? popularity;
  LocationModel? location;
  String? imageRightsMessage;
  bool? homeTeam;
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
