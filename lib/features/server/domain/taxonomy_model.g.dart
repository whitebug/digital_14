// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxonomyModel _$TaxonomyModelFromJson(Map<String, dynamic> json) =>
    TaxonomyModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      parentId: json['parentId'] as int?,
      documentSource: json['documentSource'] == null
          ? null
          : DocumentSourceModel.fromJson(
              json['documentSource'] as Map<String, dynamic>),
      rank: json['rank'] as int?,
    );

Map<String, dynamic> _$TaxonomyModelToJson(TaxonomyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
      'documentSource': instance.documentSource,
      'rank': instance.rank,
    };
