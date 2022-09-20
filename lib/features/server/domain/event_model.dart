import 'package:digital_14/features/server/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel {
  String? type;
  int? id;
  @JsonKey(name: 'datetime_utc')
  String? datetimeUtc;
  VenueModel? venue;
  @JsonKey(name: 'datetime_tbd')
  bool? datetimeTbd;
  List<PerformerModel>? performers;
  @JsonKey(name: 'is_open')
  bool? isOpen;
  List<String>? links;
  @JsonKey(name: 'datetime_local')
  String? datetimeLocal;
  @JsonKey(name: 'time_tbd')
  bool? timeTbd;
  @JsonKey(name: 'short_title')
  String? shortTitle;
  @JsonKey(name: 'visible_until_utc')
  String? visibleUntilUtc;
  StatisticsModel? stats;
  List<TaxonomyModel>? taxonomies;
  String? url;
  double? score;
  @JsonKey(name: 'announce_date')
  String? announceDate;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'date_tbd')
  bool? dateTbd;
  String? title;
  double? popularity;
  String? description;
  String? status;
  @JsonKey(name: 'access_method')
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
    return (data as List)
        .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
