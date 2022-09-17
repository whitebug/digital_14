// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventResponseModel _$EventResponseModelFromJson(Map<String, dynamic> json) =>
    EventResponseModel(
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaModel: MetaModel.fromJson(json['metaModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventResponseModelToJson(EventResponseModel instance) =>
    <String, dynamic>{
      'events': instance.events,
      'metaModel': instance.metaModel,
    };
