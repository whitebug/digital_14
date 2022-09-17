import 'package:digital_14/features/app/di/app_scope.dart';
import 'package:digital_14/features/common/widgets/di_scope/di_scope.dart';
import 'package:digital_14/features/navigation/domain/delegate/app_router_delegate.dart';
import 'package:digital_14/features/navigation/domain/entity/app_coordinate.dart';
import 'package:digital_14/features/navigation/domain/parser/app_route_information_parser.dart';
import 'package:digital_14/features/navigation/service/coordinator.dart';
import 'package:digital_14/l10n/l10n.dart';
import 'package:flutter/material.dart';

/// App widget.
class App extends StatefulWidget {
  /// Create an instance [App].
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  late IAppScope _scope;

  @override
  void initState() {
    super.initState();
    _scope = AppScope();
    _setupRouting(_scope.coordinator);
  }

  @override
  Widget build(BuildContext context) {
    return DiScope<IAppScope>(
      factory: () {
        return _scope;
      },
      child: MaterialApp.router(
        routeInformationParser: AppRouteInformationParser(),
        routerDelegate: AppRouterDelegate(_scope.coordinator),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }

  void _setupRouting(Coordinator coordinator) {
    coordinator
      ..initialCoordinate = AppCoordinates.searchScreen
      ..registerCoordinates('/', appCoordinates);
  }
}
