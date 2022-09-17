// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DivisionModel _$DivisionModelFromJson(Map<String, dynamic> json) =>
    DivisionModel(
      taxonomyId: json['taxonomyId'] as int?,
      shortName: json['shortName'] as String?,
      displayName: json['displayName'] as String?,
      displayType: json['displayType'] as String?,
      divisionLevel: json['divisionLevel'] as int?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$DivisionModelToJson(DivisionModel instance) =>
    <String, dynamic>{
      'taxonomyId': instance.taxonomyId,
      'shortName': instance.shortName,
      'displayName': instance.displayName,
      'displayType': instance.displayType,
      'divisionLevel': instance.divisionLevel,
      'slug': instance.slug,
    };
