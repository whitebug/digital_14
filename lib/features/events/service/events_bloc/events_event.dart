part of 'events_bloc.dart';

@freezed
class EventsListEvent with _$EventsListEvent {
  /// Getting events that fits to [searchRequest]
  const factory EventsListEvent.getEvents({
    required String searchRequest,
    @Default(defaultFirstPage) int page,
    @Default(10) int perPage,
  }) = _GetEventsEvent;

  /// Get the next page with the same search request
  const factory EventsListEvent.turnPage({
    int? page,
  }) = _TurnPageEvent;

  /// Reset results
  const factory EventsListEvent.reset() = _ResetEvent;
}
