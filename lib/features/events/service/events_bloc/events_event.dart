part of 'events_bloc.dart';

@freezed
class EventsListEvent with _$EventsListEvent {
  /// Getting events that fits to [searchRequest]
  const factory EventsListEvent.getEvents({
    required String searchRequest,
    required int page,
    required int perPage,
  }) = _GetEventsEvent;

  /// Get search request
  const factory EventsListEvent.search({
    required String searchRequest,
  }) = _SearchEvent;

  /// Get the next page with the same search request
  const factory EventsListEvent.turnPage({
    int? page,
  }) = _TurnPageEvent;

  /// Reset results
  const factory EventsListEvent.reset() = _ResetEvent;

  const factory EventsListEvent.favorite({
    required EventModel eventModel,
    required bool favorite,
  }) = _FavoriteEvent;
}
