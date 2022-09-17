import 'package:digital_14/features/server/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'taxonomy_model.g.dart';

@JsonSerializable()
class TaxonomyModel {
  int? id;
  String? name;
  int? parentId;
  DocumentSourceModel? documentSource;
  int? rank;

  TaxonomyModel({
    this.id,
    this.name,
    this.parentId,
    this.documentSource,
    this.rank,
  });

  factory TaxonomyModel.fromJson(Map<String, dynamic> json) =>
      _$TaxonomyModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaxonomyModelToJson(this);
}
