import 'package:digital_14/features/app/di/app_scope.dart';
import 'package:digital_14/features/events/screens/event_screen/event_screen.dart';
import 'package:digital_14/features/events/screens/event_screen/event_screen_model.dart';
import 'package:digital_14/features/navigation/service/coordinator.dart';
import 'package:digital_14/l10n/l10n.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Factory for [EventScreenWidgetModel].
EventScreenWidgetModel eventScreenWidgetModelFactory(
  BuildContext context,
) {
  final appDependencies = context.read<IAppScope>();
  final model = EventScreenModel(
    appDependencies.eventsBloc,
    appDependencies.errorHandler,
  );
  final coordinator = appDependencies.coordinator;
  return EventScreenWidgetModel(
    model: model,
    coordinator: coordinator,
  );
}

/// Widget Model for [EventScreen].
class EventScreenWidgetModel extends WidgetModel<EventScreen, EventScreenModel> implements IEventScreenWidgetModel {
  /// Coordinator for navigation.
  final Coordinator coordinator;
  //late final StreamSubscription<EventsState> _stateStatusSubscription;
  late final AppLocalizations _l10n;

  @override
  AppLocalizations get l10n => _l10n;

  /// Create an instance [EventScreenWidgetModel].
  EventScreenWidgetModel({
    required EventScreenModel model,
    required this.coordinator,
  }) : super(model);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = context.l10n;
  }

  @override
  void dispose() {
    //_stateStatusSubscription.cancel();
    super.dispose();
  }
}

/// Interface of [EventScreenWidgetModel].
abstract class IEventScreenWidgetModel extends IWidgetModel {
/// Localization
  AppLocalizations get l10n;
}
