import 'package:digital_14/features/server/domain/domain.dart';
import 'package:digital_14/features/server/events/events_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const String baseUrl = 'https://api.seatgeek.com';

/// Repository interface for working with events.
abstract class IEventsRepository {
  /// Return events list
  Future<EventResponseModel> getEvents({
    required String searchRequest,
    required int perPage,
    required int page,
  });
}

/// Repository for working with events by using [EventsClient].
class EventsRepository implements IEventsRepository {
  final EventsClient eventsClient;
  final Dio dio;

  /// Create an instance [MockProfileRepository].
  const EventsRepository({
    required this.eventsClient,
    required this.dio,
  });

  @override
  Future<EventResponseModel> getEvents({
    required String searchRequest,
    required int perPage,
    required int page,
  }) async {
    if (searchRequest.isEmpty) {
      return EventResponseModel(
        events: [],
        meta: MetaModel(),
      );
    }
    final Map<String, dynamic> queries = {};
    queries['q'] = searchRequest;
    queries['per_page'] = perPage;
    queries['page'] = page;
    queries['client_id'] = dotenv.env['CLIENT_ID'];
    queries['client_secret'] = dotenv.env['CLIENT_SECRET'];

    final EventResponseModel profile = await eventsClient.getEvents(queries);
    return profile;
  }
}
