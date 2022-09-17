part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    @Default('') String searchRequest,
    List<EventModel>? eventsList,
    @Default(1) int page,
    @Default(10) int perPage,
    MetaModel? metaModel,
    String? error,
    int? nextPage,
  }) = EventsListState;
}