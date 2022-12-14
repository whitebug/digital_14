import 'package:json_annotation/json_annotation.dart';

import 'domain.dart';

part 'event_response_model.g.dart';

/// Response of api event search request
@JsonSerializable()
class EventResponseModel {
  List<EventModel> events;
  MetaModel meta;
  EventResponseModel({
    required this.events,
    required this.meta,
  });

  factory EventResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EventResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventResponseModelToJson(this);
}
