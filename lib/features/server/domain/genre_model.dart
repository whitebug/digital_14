import 'package:digital_14/features/server/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'genre_model.g.dart';

@JsonSerializable()
class GenreModel {
  int? id;
  String? name;
  String? slug;
  bool? primary;
  ImageModel? images;
  String? image;
  @JsonKey(name: 'document_source')
  DocumentSourceModel? documentSource;

  GenreModel({
    this.id,
    this.name,
    this.slug,
    this.primary,
    this.images,
    this.image,
    this.documentSource,
  });

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);
}
