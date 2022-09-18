// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) =>
    PerformerModel(
      type: json['type'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      images: json['images'] == null
          ? null
          : ImageModel.fromJson(json['images'] as Map<String, dynamic>),
      divisions: (json['divisions'] as List<dynamic>?)
          ?.map((e) => DivisionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasUpcomingEvents: json['has_upcoming_events'] as bool?,
      primary: json['primary'] as bool?,
      stats: json['stats'] == null
          ? null
          : StatisticsModel.fromJson(json['stats'] as Map<String, dynamic>),
      taxonomies: (json['taxonomies'] as List<dynamic>?)
          ?.map((e) => TaxonomyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageAttribution: json['image_attribution'] as String?,
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      slug: json['slug'] as String?,
      homeVenueId: json['home_venue_id'] as int?,
      shortName: json['short_name'] as String?,
      numUpcomingEvents: json['num_upcoming_events'] as int?,
      colors: json['colors'] == null
          ? null
          : ColorModel.fromJson(json['colors'] as Map<String, dynamic>),
      imageLicense: json['image_license'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularity: json['popularity'] as int?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      imageRightsMessage: json['image_rights_message'] as String?,
      homeTeam: json['home_team'] as bool?,
      awayTeam: json['away_team'] as bool?,
    );

Map<String, dynamic> _$PerformerModelToJson(PerformerModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'images': instance.images,
      'divisions': instance.divisions,
      'has_upcoming_events': instance.hasUpcomingEvents,
      'primary': instance.primary,
      'stats': instance.stats,
      'taxonomies': instance.taxonomies,
      'image_attribution': instance.imageAttribution,
      'url': instance.url,
      'score': instance.score,
      'slug': instance.slug,
      'home_venue_id': instance.homeVenueId,
      'short_name': instance.shortName,
      'num_upcoming_events': instance.numUpcomingEvents,
      'colors': instance.colors,
      'image_license': instance.imageLicense,
      'genres': instance.genres,
      'popularity': instance.popularity,
      'location': instance.location,
      'image_rights_message': instance.imageRightsMessage,
      'home_team': instance.homeTeam,
      'away_team': instance.awayTeam,
    };
