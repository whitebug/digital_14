import 'package:digital_14/features/app/di/app_scope.dart';
import 'package:digital_14/features/events/screens/details_screen/details_screen.dart';
import 'package:digital_14/features/events/screens/details_screen/details_screen_model.dart';
import 'package:digital_14/features/navigation/service/coordinator.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:digital_14/l10n/l10n.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Factory for [DetailsScreenWidgetModel].
DetailsScreenWidgetModel detailsScreenWidgetModelFactory(
  BuildContext context,
) {
  final appDependencies = context.read<IAppScope>();
  final model = DetailsScreenModel(
    appDependencies.eventsBloc,
    appDependencies.errorHandler,
  );
  final coordinator = appDependencies.coordinator;
  return DetailsScreenWidgetModel(
    model: model,
    coordinator: coordinator,
  );
}

/// Widget Model for [EventScreen].
class DetailsScreenWidgetModel extends WidgetModel<DetailsScreen, DetailsScreenModel>
    implements IDetailsScreenWidgetModel {
  /// Coordinator for navigation.
  final Coordinator coordinator;
  late final AppLocalizations _l10n;

  @override
  AppLocalizations get l10n => _l10n;

  @override
  EventModel? get eventModel => widget.eventModel;

  @override
  String? get imageUrl => eventModel?.performers?.first.image;

  @override
  double get screenWidth => MediaQuery.of(context).size.width;

  @override
  ValueNotifier<bool> get eventIsFavorite => model.eventIsFavorite;

      /// Create an instance [DetailsScreenWidgetModel].
  DetailsScreenWidgetModel({
    required DetailsScreenModel model,
    required this.coordinator,
  }) : super(model);


  @override
  void initWidgetModel() {
    super.initWidgetModel();
    model.changeFavoriteUi(model.eventIsFavorite.value);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = context.l10n;
  }

  @override
  void toggleFavorite() {
    model.toggleFavorite(eventModel);
    model.changeFavoriteUi(!model.eventIsFavorite.value);
  }
}

/// Interface of [DetailsScreenWidgetModel].
abstract class IDetailsScreenWidgetModel extends IWidgetModel {
  /// Localization
  AppLocalizations get l10n;

  /// Selected event
  EventModel? get eventModel;

  /// Image url
  String? get imageUrl;

  double get screenWidth;

  void toggleFavorite();

  ValueNotifier<bool> get eventIsFavorite;
}
