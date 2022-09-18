import 'dart:async';

import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:elementary/elementary.dart';

/// Model for [DetailsScreen]
class DetailsScreenModel extends ElementaryModel {
  /// Bloc for working with profile states.
  final EventsBloc _eventBloc;

  /// Stream to track the state of the [EventsBloc]
  Stream<EventsState> get eventStateStream => _eventBloc.stream;

  /// Gives the current state.
  EventsState get currentState => _eventBloc.state;

  /// Create an instance [DetailsScreenModel].
  DetailsScreenModel(
    this._eventBloc,
    ErrorHandler errorHandler,
  ) : super(errorHandler: errorHandler);
}
