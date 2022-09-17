part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  /// Getting events that fits to [searchRequest]
  const factory EventsEvent.getEvents({
    required String searchRequest,
    @Default(1) int page,
    @Default(10) int perPage,
  }) = _GetEventsEvent;

  /// Get the next page with the same search request
  const factory EventsEvent.turnPage({
    int? page,
  }) = _TurnPageEvent;
}
