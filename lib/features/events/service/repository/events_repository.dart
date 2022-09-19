import 'dart:io';

import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
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

class MockRepository implements IEventsRepository {
  final EventsClient eventsClient;

  /// Create an instance [MockProfileRepository].
  const MockRepository(this.eventsClient);

  @override
  Future<EventResponseModel> getEvents({
    required String searchRequest,
    int? perPage = defaultPerPage,
    int? page = defaultFirstPage,
  }) {
    if (perPage == null) {
      return Future.delayed(const Duration(seconds: 1)).then(
        (value) => EventResponseModel(
          events: [],
          meta: MetaModel(),
        ),
      );
    }

    final mockEventList = List.generate(30, (index) {
      return EventModel(
        title: '$searchRequest $index',
        performers: [
          PerformerModel(
            image: 'https://frontofficesports.com/wp-content/uploads/2022/04/FOS-22-4.25-Oakland-Athletics.jpg',
          ),
        ],
        venue: VenueModel(
          city: 'New York',
          state: 'NY',
        ),
        datetimeUtc: '2012-03-10T00:00:00',
      );
    });

    final part1 = mockEventList.sublist(0, perPage);
    final part2 = mockEventList.sublist(perPage, perPage * 2);
    switch (page) {
      case 1:
        return Future.delayed(const Duration(seconds: 1)).then(
          (value) => EventResponseModel(
            events: part1,
            meta: MetaModel(),
          ),
        );
      case 2:
        return Future.delayed(const Duration(seconds: 1)).then(
          (value) => EventResponseModel(
            events: part2,
            meta: MetaModel(),
          ),
        );
      case 3:
        return Future.delayed(const Duration(seconds: 1)).then(
          (value) => throw const HttpException('exception'),
        );
      default:
        return Future.delayed(const Duration(seconds: 1)).then(
          (value) => EventResponseModel(
            events: [],
            meta: MetaModel(),
          ),
        );
    }
  }
}
