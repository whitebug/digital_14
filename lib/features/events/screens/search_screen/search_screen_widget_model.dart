import 'dart:async';

import 'package:digital_14/features/app/di/app_scope.dart';
import 'package:digital_14/features/events/screens/search_screen/search_screen.dart';
import 'package:digital_14/features/events/screens/search_screen/search_screen_model.dart';
import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:digital_14/features/navigation/service/coordinator.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:digital_14/l10n/l10n.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

/// Factory for [SearchScreenWidgetModel].
SearchScreenWidgetModel searchScreenWidgetModelFactory(
  BuildContext context,
) {
  final appDependencies = context.read<IAppScope>();
  final model = SearchScreenModel(
    appDependencies.eventsBloc,
    appDependencies.errorHandler,
  );
  final coordinator = appDependencies.coordinator;
  return SearchScreenWidgetModel(
    model: model,
    coordinator: coordinator,
  );
}

/// Widget Model for [SearchScreen].
class SearchScreenWidgetModel extends WidgetModel<SearchScreen, SearchScreenModel> implements ISearchScreenWidgetModel {
  /// Coordinator for navigation.
  final Coordinator coordinator;

  late final StreamSubscription<EventsState> _stateStatusSubscription;

  late final AppLocalizations _l10n;

  final PagingController<int, EventModel> _pagingController = PagingController(firstPageKey: 0);

  @override
  PagingController<int, EventModel> get pagingController => _pagingController;

  @override
  AppLocalizations get l10n => _l10n;

  /// Create an instance [PlaceResidenceScreenWidgetModel].
  SearchScreenWidgetModel({
    required SearchScreenModel model,
    required this.coordinator,
  }) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _l10n = context.l10n;
    _stateStatusSubscription = model.eventsStateStream.listen(_updateState);
    _pagingController.addPageRequestListener((pageKey) {
      model.turnPage(page: pageKey);
    });
  }

  @override
  void dispose() {
    _stateStatusSubscription.cancel();
    _pagingController.dispose();
    super.dispose();
  }

  void _updateState(EventsState state) {
    _pagingController.value = PagingState(
      itemList: state.eventsList,
      nextPageKey: state.nextPage,
      error: state.error,
    );
  }
}

/// Interface of [SearchScreenWidgetModel].
abstract class ISearchScreenWidgetModel extends IWidgetModel {
  /// Controller for a event list view
  PagingController<int, EventModel> get pagingController;
  /// Localization
  AppLocalizations get l10n;
}
