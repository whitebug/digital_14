import 'package:json_annotation/json_annotation.dart';

part 'access_method_model.g.dart';

@JsonSerializable()
class AccessMethodModel {
  String? method;
  String? createdAt;
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
