import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class ImageModel {
  String? s1200x525;
  String? s1200x627;
  String? s136x136;
  String? s500700;
  String? s800x320;
  String? banner;
  String? block;
  String? criteo130160;
  String? criteo170235;
  String? criteo205100;
  String? criteo400300;
  String? fb100x72;
  String? fb600315;
  String? huge;
  String? ipadEventModal;
  String? ipadHeader;
  String? ipadMiniExplore;
  String? mongo;
  String? squareMid;
  String? triggitFbAd;

  ImageModel({
    this.s1200x525,
    this.s1200x627,
    this.s136x136,
    this.s500700,
    this.s800x320,
    this.banner,
    this.block,
    this.criteo130160,
    this.criteo170235,
    this.criteo205100,
    this.criteo400300,
    this.fb100x72,
    this.fb600315,
    this.huge,
    this.ipadEventModal,
    this.ipadHeader,
    this.ipadMiniExplore,
    this.mongo,
    this.squareMid,
    this.triggitFbAd,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
