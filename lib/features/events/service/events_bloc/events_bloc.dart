import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digital_14/features/events/service/repository/events_repository.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

/// Bloc for manipulating with events and search requests
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final IEventsRepository _eventsRepository;

  EventsBloc(this._eventsRepository) : super(const EventsState()) {
    on<_GetEventsEvent>(_onGetEvents);
    on<_TurnPageEvent>(_onTurnPage);
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
      final List<EventModel> allEvents = [...state.eventsList ?? [], ...newEvents];
      emit(EventsState(
        eventsList: allEvents,
        page: event.page,
        perPage: event.perPage,
        nextPage: nextPage,
        metaModel: meta,
      ));
    } catch (e) {
      emit(EventsState(
        error: e.toString(),
        eventsList: state.eventsList,
        page: state.page,
        perPage: state.perPage,
      ));
    }
  }

  void _onTurnPage(
    _TurnPageEvent event,
    Emitter<EventsState> emit,
  ) {
    add(EventsEvent.getEvents(
      searchRequest: state.searchRequest,
      page: event.page ?? state.nextPage ?? 1,
    ));
  }
}
