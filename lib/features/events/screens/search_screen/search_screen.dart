import 'package:digital_14/assets/colors/colors.dart';
import 'package:digital_14/features/events/screens/search_screen/search_screen_widget_model.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/event_item_widget.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'widgets/indicators/indicators.dart';

/// Widget screen with search results and search field app bar.
class SearchScreen extends ElementaryWidget<ISearchScreenWidgetModel> {
  /// Create an instance [PlaceResidenceScreen].
  const SearchScreen({
    Key? key,
    WidgetModelFactory wmFactory = searchScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISearchScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarBackground,
        title: const SearchAppBarWidget(),
      ),
      body: RefreshIndicator(
        onRefresh: () => Future.sync(
          () => wm.pagingController.refresh(),
        ),
        child: PagedListView<int, EventModel>(
          pagingController: wm.pagingController,
          builderDelegate: PagedChildBuilderDelegate<EventModel>(
            itemBuilder: (context, item, index) {
              return EventItemWidget(
                eventModel: item,
                onChooseEvent: () {
                  wm.openEventDetails(item);
                },
              );
            },
            firstPageErrorIndicatorBuilder: (_) => FirstPageErrorIndicator(
              title: wm.l10n.errorNeedRefresh,
              buttonTitle: wm.l10n.tryAgainButton,
              onTryAgain: wm.pagingController.retryLastFailedRequest,
            ),
            newPageErrorIndicatorBuilder: (_) {
              return NewPageErrorIndicator(
                title: '${wm.l10n.errorNeedRefresh}. ${wm.l10n.tryAgainButton}',
                onRefresh: wm.pagingController.retryLastFailedRequest,
              );
            },
            firstPageProgressIndicatorBuilder: (_) => const FirstPageProgressIndicator(),
            newPageProgressIndicatorBuilder: (_) => const NewPageProgressIndicator(),
            noItemsFoundIndicatorBuilder: (_) => NoItemsFoundIndicator(
              text: wm.l10n.nothingToShow,
            ),
          ),
        ),
      ),
    );
  }
}
