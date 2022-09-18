// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DivisionModel _$DivisionModelFromJson(Map<String, dynamic> json) =>
    DivisionModel(
      taxonomyId: json['taxonomy_id'] as int?,
      shortName: json['short_name'] as String?,
      displayName: json['display_name'] as String?,
      displayType: json['display_type'] as String?,
      divisionLevel: json['division_level'] as int?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$DivisionModelToJson(DivisionModel instance) =>
    <String, dynamic>{
      'taxonomy_id': instance.taxonomyId,
      'short_name': instance.shortName,
      'display_name': instance.displayName,
      'display_type': instance.displayType,
      'division_level': instance.divisionLevel,
      'slug': instance.slug,
    };
