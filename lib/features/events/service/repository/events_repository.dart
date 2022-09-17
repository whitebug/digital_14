import 'package:digital_14/features/server/domain/domain.dart';
import 'package:digital_14/features/server/events/events_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Repository interface for working with events.
abstract class IEventsRepository {
  /// Return events list
  Future<EventResponseModel> getEvents({
    required String searchRequest,
    int? perPage = 10,
    int? page = 1,
  });
}

/// Repository for working with events by using [EventsClient].
class EventsRepository implements IEventsRepository {
  final EventsClient eventsClient;

  /// Create an instance [MockProfileRepository].
  const EventsRepository(this.eventsClient);

  @override
  Future<EventResponseModel> getEvents({
    required String searchRequest,
    int? perPage = 10,
    int? page = 1,
  }) async {
    final Map<String, dynamic> queries = {};
    queries['q'] = searchRequest;
    queries['per_page'] = perPage;
    queries['page'] = page;
    queries['client_id'] = dotenv.env['CLIENT_ID'];
    queries['client_secret'] = dotenv.env['CLIENT_SECRET'];

    final profile = await eventsClient.getEvents(queries);
    return profile;
  }
}

class MockRepository implements IEventsRepository {
  final EventsClient eventsClient;

  /// Create an instance [MockProfileRepository].
  const MockRepository(this.eventsClient);

  @override
  Future<EventResponseModel> getEvents({
    required String searchRequest,
    int? perPage = 10,
    int? page = 1,
  }) {
    if (perPage == null) {
      return Future.delayed(const Duration(seconds: 1)).then(
        (value) => EventResponseModel(
          events: [],
          metaModel: MetaModel(),
        ),
      );
    }

    final mockEventList = List.generate(30, (index) {
      return EventModel(title: '$searchRequest $index');
    });

    final part1 = mockEventList.sublist(0, perPage);
    final part2 = mockEventList.sublist(perPage, perPage * 2);
    final part3 = mockEventList.sublist(perPage * 2, perPage * 2 + 4);
    switch (page) {
      case 1:
        return Future.delayed(const Duration(seconds: 1)).then(
          (value) => EventResponseModel(
            events: part1,
            metaModel: MetaModel(),
          ),
        );
      case 2:
        return Future.delayed(const Duration(seconds: 1)).then(
          (value) => EventResponseModel(
            events: part2,
            metaModel: MetaModel(),
          ),
        );
      case 3:
        return Future.delayed(const Duration(seconds: 1)).then(
              (value) => EventResponseModel(
            events: part3,
            metaModel: MetaModel(),
          ),
        );
      default:
        return Future.delayed(const Duration(seconds: 1)).then(
              (value) => EventResponseModel(
            events: [],
            metaModel: MetaModel(),
          ),
        );
    }
  }
}
