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
      hasUpcomingEvents: json['hasUpcomingEvents'] as bool?,
      primary: json['primary'] as bool?,
      stats: json['stats'] == null
          ? null
          : StatisticsModel.fromJson(json['stats'] as Map<String, dynamic>),
      taxonomies: (json['taxonomies'] as List<dynamic>?)
          ?.map((e) => TaxonomyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageAttribution: json['imageAttribution'] as String?,
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      slug: json['slug'] as String?,
      homeVenueId: json['homeVenueId'] as int?,
      shortName: json['shortName'] as String?,
      numUpcomingEvents: json['numUpcomingEvents'] as int?,
      colors: json['colors'] == null
          ? null
          : ColorModel.fromJson(json['colors'] as Map<String, dynamic>),
      imageLicense: json['imageLicense'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularity: json['popularity'] as int?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      imageRightsMessage: json['imageRightsMessage'] as String?,
      homeTeam: json['homeTeam'] as bool?,
      awayTeam: json['awayTeam'] as bool?,
    );

Map<String, dynamic> _$PerformerModelToJson(PerformerModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'images': instance.images,
      'divisions': instance.divisions,
      'hasUpcomingEvents': instance.hasUpcomingEvents,
      'primary': instance.primary,
      'stats': instance.stats,
      'taxonomies': instance.taxonomies,
      'imageAttribution': instance.imageAttribution,
      'url': instance.url,
      'score': instance.score,
      'slug': instance.slug,
      'homeVenueId': instance.homeVenueId,
      'shortName': instance.shortName,
      'numUpcomingEvents': instance.numUpcomingEvents,
      'colors': instance.colors,
      'imageLicense': instance.imageLicense,
      'genres': instance.genres,
      'popularity': instance.popularity,
      'location': instance.location,
      'imageRightsMessage': instance.imageRightsMessage,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
    };
