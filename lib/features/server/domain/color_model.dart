import 'package:json_annotation/json_annotation.dart';

part 'color_model.g.dart';

@JsonSerializable()
class ColorModel {
  List<String>? all;
  String? iconic;
  List<String>? primary;

  ColorModel({
    this.all,
    this.iconic,
    this.primary,
  });

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ColorModelToJson(this);
}
