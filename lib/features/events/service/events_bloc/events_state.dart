part of 'events_bloc.dart';

const int defaultFirstPage = 1;
const int defaultPerPage = 10;

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required String searchRequest,
    required int page,
    required int perPage,
    int? nextPage,
    List<EventModel>? eventsList,
    dynamic error,
    bool? favoriteUpdate,
  }) = EventsListState;
}
