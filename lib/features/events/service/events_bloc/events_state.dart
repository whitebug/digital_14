part of 'events_bloc.dart';

const int defaultFirstPage = 1;

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    @Default('') String searchRequest,
    List<EventModel>? eventsList,
    @Default(defaultFirstPage) int page,
    @Default(10) int perPage,
    MetaModel? metaModel,
    dynamic error,
    int? nextPage,
  }) = EventsListState;
}