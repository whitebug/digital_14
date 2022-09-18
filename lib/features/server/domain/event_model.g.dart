// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      type: json['type'] as String?,
      id: json['id'] as int?,
      datetimeUtc: json['datetimeUtc'] as String?,
      venue: json['venue'] == null
          ? null
          : VenueModel.fromJson(json['venue'] as Map<String, dynamic>),
      datetimeTbd: json['datetimeTbd'] as bool?,
      performers: (json['performers'] as List<dynamic>?)
          ?.map((e) => PerformerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOpen: json['isOpen'] as bool?,
      links:
          (json['links'] as List<dynamic>?)?.map((e) => e as String).toList(),
      datetimeLocal: json['datetimeLocal'] as String?,
      timeTbd: json['timeTbd'] as bool?,
      shortTitle: json['shortTitle'] as String?,
      visibleUntilUtc: json['visibleUntilUtc'] as String?,
      stats: json['stats'] == null
          ? null
          : StatisticsModel.fromJson(json['stats'] as Map<String, dynamic>),
      taxonomies: (json['taxonomies'] as List<dynamic>?)
          ?.map((e) => TaxonomyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      announceDate: json['announceDate'] as String?,
      createdAt: json['createdAt'] as String?,
      dateTbd: json['dateTbd'] as bool?,
      title: json['title'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      description: json['description'] as String?,
      status: json['status'] as String?,
      accessMethod: json['accessMethod'] == null
          ? null
          : AccessMethodModel.fromJson(
              json['accessMethod'] as Map<String, dynamic>),
      conditional: json['conditional'] as bool?,
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'datetimeUtc': instance.datetimeUtc,
      'venue': instance.venue,
      'datetimeTbd': instance.datetimeTbd,
      'performers': instance.performers,
      'isOpen': instance.isOpen,
      'links': instance.links,
      'datetimeLocal': instance.datetimeLocal,
      'timeTbd': instance.timeTbd,
      'shortTitle': instance.shortTitle,
      'visibleUntilUtc': instance.visibleUntilUtc,
      'stats': instance.stats,
      'taxonomies': instance.taxonomies,
      'url': instance.url,
      'score': instance.score,
      'announceDate': instance.announceDate,
      'createdAt': instance.createdAt,
      'dateTbd': instance.dateTbd,
      'title': instance.title,
      'popularity': instance.popularity,
      'description': instance.description,
      'status': instance.status,
      'accessMethod': instance.accessMethod,
      'conditional': instance.conditional,
      'favorite': instance.favorite,
    };
