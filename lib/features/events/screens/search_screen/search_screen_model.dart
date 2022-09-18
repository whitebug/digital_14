import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:elementary/elementary.dart';

/// Model for [SearchScreen].
class SearchScreenModel extends ElementaryModel {
  /// Bloc for working with profile states.
  final EventsBloc _eventsBloc;

  /// Stream to track the state of the [EventsBloc].
  Stream<EventsState> get eventsStateStream => _eventsBloc.stream;

  /// Gives the current state.
  EventsState get currentState => _eventsBloc.state;

  /// Create an instance [SearchScreenModel].
  SearchScreenModel(
    this._eventsBloc,
    ErrorHandler errorHandler,
  ) : super(errorHandler: errorHandler);

  /// Get events of a [page] or if it's null - the next page
  void turnPage({int? page}) {
    _eventsBloc.add(EventsListEvent.turnPage(page: page));
  }
}
