import 'package:digital_14/features/events/screens/details_screen/details_screen.dart';
import 'package:digital_14/features/events/screens/search_screen/search_screen.dart';
import 'package:digital_14/features/navigation/domain/entity/coordinate.dart';
import 'package:digital_14/features/server/domain/domain.dart';

/// A set of routes for the entire app.
class AppCoordinates implements Coordinate {
  /// Events searching screen
  static const searchScreen = AppCoordinates._('search');

  /// Widget screen with event details.
  static const detailsScreen = AppCoordinates._('event_details');

  final String _value;

  const AppCoordinates._(this._value);

  @override
  String toString() => _value;
}

/// List of main routes of the app.
final Map<AppCoordinates, CoordinateBuilder> appCoordinates = {
  AppCoordinates.searchScreen: (_, __) => const SearchScreen(),
  AppCoordinates.detailsScreen: (_, Object? arguments) {
    final EventModel? eventModel = arguments as EventModel?;
    return DetailsScreen(eventModel: eventModel);
  },
};
