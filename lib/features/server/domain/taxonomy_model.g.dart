// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxonomyModel _$TaxonomyModelFromJson(Map<String, dynamic> json) =>
    TaxonomyModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      parentId: json['parent_id'] as int?,
      documentSource: json['document_source'] == null
          ? null
          : DocumentSourceModel.fromJson(
              json['document_source'] as Map<String, dynamic>),
      rank: json['rank'] as int?,
    );

Map<String, dynamic> _$TaxonomyModelToJson(TaxonomyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent_id': instance.parentId,
      'document_source': instance.documentSource,
      'rank': instance.rank,
    };
