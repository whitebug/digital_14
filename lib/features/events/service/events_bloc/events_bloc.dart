import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digital_14/features/events/service/repository/events_repository.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

/// Bloc for manipulating with events and search requests
class EventsBloc extends Bloc<EventsListEvent, EventsState> {
  final IEventsRepository _eventsRepository;

  EventsBloc(this._eventsRepository) : super(const EventsState()) {
    on<_GetEventsEvent>(_onGetEvents);
    on<_TurnPageEvent>(_onTurnPage);
    on<_ResetEvent>(_onReset);
  }

  Future<void> _onGetEvents(
    _GetEventsEvent event,
    Emitter<EventsState> emit,
  ) async {
    try {
      final EventResponseModel result = await _eventsRepository.getEvents(
        searchRequest: event.searchRequest,
        page: event.page,
        perPage: event.perPage,
      );
      final List<EventModel> newEvents = result.events;
      final MetaModel meta = result.metaModel;
      final int perPage = meta.perPage ?? event.perPage;
      final int currentPage = meta.page ?? event.page;
      final isLastPage = newEvents.length < perPage;
      final nextPage = isLastPage ? null : currentPage + 1;
      final List<EventModel> oldEvents = state.eventsList ?? [];
      final List<EventModel> allEvents = [...oldEvents, ...newEvents];
      emit(EventsState(
        eventsList: allEvents,
        page: event.page,
        perPage: event.perPage,
        nextPage: nextPage,
        metaModel: meta,
      ));
    } catch (error) {
      emit(state.copyWith(error: error));
    }
  }

  void _onTurnPage(
    _TurnPageEvent event,
    Emitter<EventsState> emit,
  ) {
    final int nextPage = event.page ?? state.nextPage ?? 1;
    add(EventsListEvent.getEvents(
      searchRequest: state.searchRequest,
      page: nextPage,
    ));
  }

  void _onReset(
    _ResetEvent event,
    Emitter<EventsState> emit,
  ) {
    emit(const EventsState());
  }
}
