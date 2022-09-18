import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';

class SearchAppBarModel extends ElementaryModel {
  final EventsBloc _eventsBloc;

  final ValueNotifier<bool> showCancelButton = ValueNotifier(false);

  SearchAppBarModel(this._eventsBloc);

  /// Select events that fits to [searchRequest]
  void searchForEvents(String searchRequest) {
    _eventsBloc.add(EventsListEvent.getEvents(
      searchRequest: searchRequest,
    ));
  }

  /// Show or hide cancel button
  void changeCancelButtonVisibility(bool visible) {
    showCancelButton.value = visible;
  }

  /// Reset search and results
  void resetSearch() {
    _eventsBloc.add(const EventsListEvent.reset());
  }
}
