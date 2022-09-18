import 'dart:async';

import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';

/// Model for [DetailsScreen]
class DetailsScreenModel extends ElementaryModel {
  /// Bloc for working with profile states.
  final EventsBloc _eventBloc;

  /// Stream to track the state of the [EventsBloc]
  Stream<EventsState> get eventsStateStream => _eventBloc.stream;

  /// Gives the current state.
  EventsState get currentState => _eventBloc.state;

  /// If event is favorite
  final ValueNotifier<bool> eventIsFavorite = ValueNotifier(false);

  /// Create an instance [DetailsScreenModel].
  DetailsScreenModel(
    this._eventBloc,
    ErrorHandler errorHandler,
  ) : super(errorHandler: errorHandler);

  /// Change event's favorite value
  void toggleFavorite(EventModel? eventModel) {
    if (eventModel != null) {
      changeFavoriteUi(!eventIsFavorite.value);
      _eventBloc.add(EventsListEvent.favorite(
        eventModel: eventModel,
        favorite: eventIsFavorite.value,
      ));
    }
  }

  /// Update UI favorite status
  void changeFavoriteUi(bool favorite) {
    eventIsFavorite.value = favorite;
  }
}
