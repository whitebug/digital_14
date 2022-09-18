import 'package:json_annotation/json_annotation.dart';

part 'division_model.g.dart';

@JsonSerializable()
class DivisionModel {
  @JsonKey(name: 'taxonomy_id')
  int? taxonomyId;
  @JsonKey(name: 'short_name')
  String? shortName;
  @JsonKey(name: 'display_name')
  String? displayName;
  @JsonKey(name: 'display_type')
  String? displayType;
  @JsonKey(name: 'division_level')
  int? divisionLevel;
  String? slug;

  DivisionModel({
    this.taxonomyId,
    this.shortName,
    this.displayName,
    this.displayType,
    this.divisionLevel,
    this.slug,
  });

  factory DivisionModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DivisionModelToJson(this);
}
