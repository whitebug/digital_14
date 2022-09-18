import 'package:json_annotation/json_annotation.dart';

part 'document_source_model.g.dart';

@JsonSerializable()
class DocumentSourceModel {
  @JsonKey(name: 'source_type')
  String? sourceType;
  @JsonKey(name: 'generation_type')
  String? generationType;

  DocumentSourceModel({
    this.sourceType,
    this.generationType,
  });

  factory DocumentSourceModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentSourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentSourceModelToJson(this);
}
