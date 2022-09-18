// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentSourceModel _$DocumentSourceModelFromJson(Map<String, dynamic> json) =>
    DocumentSourceModel(
      sourceType: json['source_type'] as String?,
      generationType: json['generation_type'] as String?,
    );

Map<String, dynamic> _$DocumentSourceModelToJson(
        DocumentSourceModel instance) =>
    <String, dynamic>{
      'source_type': instance.sourceType,
      'generation_type': instance.generationType,
    };
