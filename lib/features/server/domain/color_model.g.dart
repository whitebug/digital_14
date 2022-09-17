// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) => ColorModel(
      all: (json['all'] as List<dynamic>?)?.map((e) => e as String).toList(),
      iconic: json['iconic'] as String?,
      primary:
          (json['primary'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ColorModelToJson(ColorModel instance) =>
    <String, dynamic>{
      'all': instance.all,
      'iconic': instance.iconic,
      'primary': instance.primary,
    };
