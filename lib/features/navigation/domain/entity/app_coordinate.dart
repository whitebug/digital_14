import 'package:digital_14/features/events/screens/event_screen/event_screen.dart';
import 'package:digital_14/features/events/screens/search_screen/search_screen.dart';
import 'package:digital_14/features/navigation/domain/entity/coordinate.dart';

/// A set of routes for the entire app.
class AppCoordinates implements Coordinate {
  /// Events searching screen
  static const searchScreen = AppCoordinates._('search');

  /// Widget screen with event info.
  static const eventScreen = AppCoordinates._('event_info');

  final String _value;

  const AppCoordinates._(this._value);

  @override
  String toString() => _value;
}

/// List of main routes of the app.
final Map<AppCoordinates, CoordinateBuilder> appCoordinates = {
  AppCoordinates.searchScreen: (_, __) => const SearchScreen(),
  AppCoordinates.eventScreen: (_, __) => const EventScreen(),
};
