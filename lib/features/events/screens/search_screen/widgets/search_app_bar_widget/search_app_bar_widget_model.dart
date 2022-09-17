import 'dart:async';

import 'package:async/async.dart';
import 'package:digital_14/features/app/di/app_scope.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_model.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget.dart';
import 'package:digital_14/l10n/l10n.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

SearchAppBarWidgetModel searchAppBarWidgetModelFactory(
  BuildContext context,
) {
  final appDependencies = context.read<IAppScope>();
  final model = SearchAppBarModel(appDependencies.eventsBloc);
  return SearchAppBarWidgetModel(
    model: model,
  );
}

class SearchAppBarWidgetModel extends WidgetModel<SearchAppBarWidget, SearchAppBarModel>
    implements ISearchAppBarWidgetModel {
  final TextEditingController _searchFieldController = TextEditingController();
  late final AppLocalizations _l10n;

  @override
  TextEditingController get searchFieldController => _searchFieldController;

  @override
  AppLocalizations get l10n => _l10n;

  Timer? _debounceTimer;
  CancelableOperation<String>? _cancelableCitiesLoader;

  SearchAppBarWidgetModel({
    required SearchAppBarModel model,
  }) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _l10n = context.l10n;
    _searchFieldController.addListener(_controllerListener);
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _cancelableCitiesLoader?.cancel();
    _searchFieldController.removeListener(_controllerListener);
    super.dispose();
  }

  @override
  void onCancelPressed() {
    searchFieldController.text = '';
  }

  void _controllerListener() {
    _cancelableCitiesLoader?.cancel();
    _cancelableCitiesLoader = null;

    _debounceTimer?.cancel();
    _debounceTimer = _getDebounceEventsLoader(searchFieldController.text);
  }

  Timer _getDebounceEventsLoader(String request) {
    return Timer(
      const Duration(seconds: 2),
      () {
        final cancelableCitiesLoader = _getCancelableEventLoader(request)
          ..then((searchRequest) {
            _cancelableCitiesLoader = null;
            if (searchRequest != '') {
              model.searchForEvents(searchRequest);
            }
          });
        _cancelableCitiesLoader = cancelableCitiesLoader;
      },
    );
  }

  CancelableOperation<String> _getCancelableEventLoader(String searchRequest) {
    return CancelableOperation<String>.fromFuture(
      Future.microtask(() => searchRequest),
    );
  }
}

/// Interface of [ISearchAppBarWidgetModel].
abstract class ISearchAppBarWidgetModel extends IWidgetModel {
  /// Text editing controller.
  TextEditingController get searchFieldController;

  /// Localization
  AppLocalizations get l10n;

  /// Action of Cancel button
  void onCancelPressed();
}
