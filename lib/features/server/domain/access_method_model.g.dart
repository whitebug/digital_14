// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessMethodModel _$AccessMethodModelFromJson(Map<String, dynamic> json) =>
    AccessMethodModel(
      method: json['method'] as String?,
      createdAt: json['createdAt'] as String?,
      employeeOnly: json['employeeOnly'] as bool?,
    );

Map<String, dynamic> _$AccessMethodModelToJson(AccessMethodModel instance) =>
    <String, dynamic>{
      'method': instance.method,
      'createdAt': instance.createdAt,
      'employeeOnly': instance.employeeOnly,
    };
