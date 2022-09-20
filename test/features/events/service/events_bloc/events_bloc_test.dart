import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:digital_14/features/events/service/repository/events_repository.dart';
import 'package:digital_14/features/events/service/shared_pref_helper.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'events_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<SharedPrefHelper>(),
  MockSpec<IEventsRepository>(),
])
void main() {
  late EventsBloc eventsBloc;
  late MockIEventsRepository repository;
  late MockSharedPrefHelper helper;
  const String searchRequest = 'testRequest';
  const int page = 1;
  const int perPage = 10;

  setUp(() {
    repository = MockIEventsRepository();
    helper = MockSharedPrefHelper();
    eventsBloc = EventsBloc(repository, helper);
  });

  final mockEventList = List.generate(30, (index) {
    return EventModel(
      title: '$index',
      performers: [
        PerformerModel(
          image:
              'https://frontofficesports.com/wp-content/uploads/2022/04/FOS-22-4.25-Oakland-Athletics.jpg',
        ),
      ],
      venue: VenueModel(
        city: 'New York',
        state: 'NY',
      ),
      datetimeUtc: '2012-03-10T00:00:00',
    );
  });

  final response = EventResponseModel(
    events: mockEventList,
    meta: MetaModel(),
  );

  test('Initial state should be empty', () {
    expect(
        eventsBloc.state,
        const EventsState(
          searchRequest: '',
          page: 1,
          perPage: 10,
          nextPage: 2,
        ));
  });

  blocTest<EventsBloc, EventsState>(
    'Should emit [EventsState] when data is gotten successfully',
    build: () {
      when(repository.getEvents(
        searchRequest: searchRequest,
        perPage: perPage,
        page: page,
      )).thenAnswer((_) async => response);
      return eventsBloc;
    },
    act: (bloc) => bloc.add(const EventsListEvent.search(
      searchRequest: searchRequest,
    )),
    wait: const Duration(milliseconds: 500),
    expect: () => [
      EventsState(
        searchRequest: searchRequest,
        page: page,
        perPage: perPage,
        nextPage: 2,
        eventsList: mockEventList,
      ),
    ],
    verify: (bloc) {
      verify(repository.getEvents(
          searchRequest: searchRequest, perPage: perPage, page: page));
    },
  );

  blocTest<EventsBloc, EventsState>(
    'Should emit [EventsState] when data is gotten successfully',
    build: () {
      when(repository.getEvents(
        searchRequest: searchRequest,
        perPage: perPage,
        page: page,
      )).thenAnswer((_) async => response);
      return eventsBloc;
    },
    act: (bloc) {
      bloc.add(const EventsListEvent.getEvents(
        searchRequest: searchRequest,
        page: 1,
        perPage: 10,
      ));
    },
    wait: const Duration(milliseconds: 500),
    expect: () => [
      EventsState(
        searchRequest: 'testRequest',
        page: 1,
        perPage: 10,
        nextPage: 2,
        eventsList: mockEventList,
      ),
    ],
  );

  blocTest<EventsBloc, EventsState>(
    'Should emit [EventsState] with empty search request and error object when there is a [HttpException]',
    build: () {
      when(repository.getEvents(
        searchRequest: searchRequest,
        perPage: perPage,
        page: page,
      )).thenAnswer((_) async => throw const HttpException('message'));
      return eventsBloc;
    },
    act: (bloc) {
      bloc.add(const EventsListEvent.getEvents(
        searchRequest: searchRequest,
        page: 1,
        perPage: 10,
      ));
    },
    wait: const Duration(milliseconds: 500),
    expect: () => [
      const EventsState(
        searchRequest: '',
        page: 1,
        perPage: 10,
        nextPage: 2,
        error: HttpException('message'),
      ),
    ],
  );
}
