import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:digital_14/features/events/service/repository/events_repository.dart';
import 'package:digital_14/features/events/service/shared_pref_helper.dart';
import 'package:digital_14/features/navigation/service/coordinator.dart';
import 'package:digital_14/features/server/events/events_client.dart';
import 'package:digital_14/util/default_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';

/// Scope of dependencies which need through all app's life.
class AppScope implements IAppScope {
  late final Dio _dio;
  late final ErrorHandler _errorHandler;
  late final Coordinator _coordinator;
  late final EventsClient _eventsClient;
  late final EventsBloc _eventsBloc;
  late final IEventsRepository _eventsRepository;
  late final SharedPrefHelper _sharedPrefHelper;

  @override
  ErrorHandler get errorHandler => _errorHandler;

  @override
  Coordinator get coordinator => _coordinator;

  @override
  EventsBloc get eventsBloc => _eventsBloc;

  @override
  IEventsRepository get eventsRepository => _eventsRepository;

  @override
  SharedPrefHelper get sharedHelper => _sharedPrefHelper;

  /// Create an instance [AppScope].
  AppScope() {
    _sharedPrefHelper = SharedPrefHelper();
    _errorHandler = DefaultErrorHandler();
    _coordinator = Coordinator();
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    _eventsClient = EventsClient(_dio);
    _eventsRepository = EventsRepository(
      eventsClient: _eventsClient,
      dio: _dio,
    );
    _eventsBloc = EventsBloc(
      _eventsRepository,
      _sharedPrefHelper,
    );
  }
}

/// App dependencies.
abstract class IAppScope {
  /// Interface for handle error in business logic.
  ErrorHandler get errorHandler;

  /// Class that coordinates navigation for the whole app.
  Coordinator get coordinator;

  /// Bloc for working with events states.
  EventsBloc get eventsBloc;

  /// Repository for events
  IEventsRepository get eventsRepository;

  /// Storage
  SharedPrefHelper get sharedHelper;
}
