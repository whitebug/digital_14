import 'package:digital_14/features/server/domain/domain.dart';
import 'package:digital_14/util/urls.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'events_client.g.dart';

@RestApi()
abstract class EventsClient {
  factory EventsClient(Dio dio, {String baseUrl}) = _EventsClient;

  @GET(AppUrls.events)
  Future<EventResponseModel> getEvents(
    @Queries() Map<String, dynamic> queries,
  );
}
