import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:elementary/elementary.dart';

class SearchAppBarModel extends ElementaryModel {
  final EventsBloc _eventsBloc;

  SearchAppBarModel(this._eventsBloc);

  void searchForEvents(String searchRequest) {
    _eventsBloc.add(EventsEvent.getEvents(
      searchRequest: searchRequest,
    ));
  }
}
