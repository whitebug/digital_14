// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) => GenreModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      primary: json['primary'] as bool?,
      images: json['images'] == null
          ? null
          : ImageModel.fromJson(json['images'] as Map<String, dynamic>),
      image: json['image'] as String?,
      documentSource: json['documentSource'] == null
          ? null
          : DocumentSourceModel.fromJson(
              json['documentSource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenreModelToJson(GenreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'primary': instance.primary,
      'images': instance.images,
      'image': instance.image,
      'documentSource': instance.documentSource,
    };
