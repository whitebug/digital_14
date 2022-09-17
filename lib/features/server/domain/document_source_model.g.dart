// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentSourceModel _$DocumentSourceModelFromJson(Map<String, dynamic> json) =>
    DocumentSourceModel(
      sourceType: json['sourceType'] as String?,
      generationType: json['generationType'] as String?,
    );

Map<String, dynamic> _$DocumentSourceModelToJson(
        DocumentSourceModel instance) =>
    <String, dynamic>{
      'sourceType': instance.sourceType,
      'generationType': instance.generationType,
    };
