import 'dart:async';

import 'package:digital_14/features/events/service/shared_pref_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digital_14/features/events/service/repository/events_repository.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

const String favoriteEventListKey = 'favoriteEventListKey';

/// Bloc for manipulating with events and search requests
class EventsBloc extends Bloc<EventsListEvent, EventsState> {
  final IEventsRepository _eventsRepository;
  final SharedPrefHelper _helper;

  EventsBloc(
    this._eventsRepository,
    this._helper,
  ) : super(const EventsState()) {
    on<_GetEventsEvent>(_onGetEvents);
    on<_TurnPageEvent>(_onTurnPage);
    on<_ResetEvent>(_onReset);
    on<_FavoriteEvent>(_onFavorite);
  }

  List<EventModel> _markFavorites({
    required List<EventModel> list,
    required List<String> favorites,
  }) {
    for (int i = 0; i < list.length; i++) {
      if (favorites.contains(list[i].id.toString())) {
        list[i].favorite = true;
      }
    }
    return list;
  }

  List<EventModel> _getAllEvents({
    required List<EventModel> newEvents,
    required bool searchNotChanged,
    required List<String> favorites,
  }) {
    final List<EventModel> oldEvents = state.eventsList ?? [];
    final List<EventModel> oldFavoriteEvents = _markFavorites(
      list: oldEvents,
      favorites: favorites,
    );
    final List<EventModel> newFavoriteEvents = _markFavorites(
      list: newEvents,
      favorites: favorites,
    );
    if (searchNotChanged) {
      return [...oldFavoriteEvents, ...newFavoriteEvents];
    } else {
      return newFavoriteEvents;
    }
  }

  Future<void> _onGetEvents(
    _GetEventsEvent event,
    Emitter<EventsState> emit,
  ) async {
    try {
      final EventResponseModel? result = await _eventsRepository.getEvents(
        searchRequest: event.searchRequest,
        page: event.page,
        perPage: event.perPage,
      );
      if (result == null) {
        return;
      }
      final bool searchNotChanged = event.searchRequest == state.searchRequest;
      final List<EventModel> newEvents = result.events;
      final MetaModel meta = result.metaModel;
      final int perPage = meta.perPage ?? event.perPage;
      final int currentPage = meta.page ?? event.page;
      final isLastPage = newEvents.length < perPage;
      final nextPage = isLastPage ? null : currentPage + 1;
      final List<String> favorites = await _helper.get(favoriteEventListKey) ?? [];
      final List<EventModel> allEvents = _getAllEvents(
        newEvents: newEvents,
        searchNotChanged: searchNotChanged,
        favorites: favorites,
      );
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
    final int nextPage = event.page ?? state.nextPage ?? defaultFirstPage;
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

  Future<void> _storeFavoriteState({
    required String eventId,
    required bool favorite,
  }) async {
    List<String>? favoritesList = await _helper.get(favoriteEventListKey);
    favoritesList?.remove(eventId);
    if (favorite) {
      favoritesList?.add(eventId);
    }
    _helper.set(favoriteEventListKey, favoritesList ?? [eventId]);
  }

  Future<void> _onFavorite(
    _FavoriteEvent event,
    Emitter<EventsState> emit,
  ) async {
    final List<EventModel>? eventsList = state.eventsList;
    if (eventsList == null) {
      return;
    }
    final int index = eventsList.indexWhere(
      (element) => element.id == event.eventModel.id,
    );
    if (index < 0) {
      return;
    }
    _storeFavoriteState(
      eventId: event.eventModel.id!.toString(),
      favorite: event.favorite,
    );
    // If [favorite] is null, thus it is false
    final ifFavorite = event.eventModel.favorite ?? false;
    // Toggle favorite
    eventsList[index].favorite = !ifFavorite;
    emit(state.copyWith(eventsList: eventsList));
  }
}
