import 'package:json_annotation/json_annotation.dart';

part 'division_model.g.dart';

@JsonSerializable()
class DivisionModel {
  int? taxonomyId;
  String? shortName;
  String? displayName;
  String? displayType;
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
