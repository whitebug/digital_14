// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessMethodModel _$AccessMethodModelFromJson(Map<String, dynamic> json) =>
    AccessMethodModel(
      method: json['method'] as String?,
      createdAt: json['created_at'] as String?,
      employeeOnly: json['employee_only'] as bool?,
    );

Map<String, dynamic> _$AccessMethodModelToJson(AccessMethodModel instance) =>
    <String, dynamic>{
      'method': instance.method,
      'created_at': instance.createdAt,
      'employee_only': instance.employeeOnly,
    };
