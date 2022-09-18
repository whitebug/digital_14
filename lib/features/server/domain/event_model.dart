import 'package:digital_14/features/server/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel {
  String? type;
  int? id;
  String? datetimeUtc;
  VenueModel? venue;
  bool? datetimeTbd;
  List<PerformerModel>? performers;
  bool? isOpen;
  List<String>? links;
  String? datetimeLocal;
  bool? timeTbd;
  String? shortTitle;
  String? visibleUntilUtc;
  StatisticsModel? stats;
  List<TaxonomyModel>? taxonomies;
  String? url;
  double? score;
  String? announceDate;
  String? createdAt;
  bool? dateTbd;
  String? title;
  double? popularity;
  String? description;
  String? status;
  AccessMethodModel? accessMethod;
  bool? conditional;
  bool? favorite;

  EventModel({
    this.type,
    this.id,
    this.datetimeUtc,
    this.venue,
    this.datetimeTbd,
    this.performers,
    this.isOpen,
    this.links,
    this.datetimeLocal,
    this.timeTbd,
    this.shortTitle,
    this.visibleUntilUtc,
    this.stats,
    this.taxonomies,
    this.url,
    this.score,
    this.announceDate,
    this.createdAt,
    this.dateTbd,
    this.title,
    this.popularity,
    this.description,
    this.status,
    this.accessMethod,
    this.conditional,
    this.favorite,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  static List<EventModel> fromJsonToList(dynamic data) {
    return (data as List).map((e) => EventModel.fromJson(e as Map<String, dynamic>)).toList();
  }
}
