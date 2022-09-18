import 'package:json_annotation/json_annotation.dart';

part 'access_method_model.g.dart';

@JsonSerializable()
class AccessMethodModel {
  String? method;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'employee_only')
  bool? employeeOnly;

  AccessMethodModel({
    this.method,
    this.createdAt,
    this.employeeOnly,
  });

  factory AccessMethodModel.fromJson(Map<String, dynamic> json) =>
      _$AccessMethodModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccessMethodModelToJson(this);
}
