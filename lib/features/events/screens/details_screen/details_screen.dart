import 'package:cached_network_image/cached_network_image.dart';
import 'package:digital_14/assets/colors/colors.dart';
import 'package:digital_14/assets/typography/app_typography.dart';
import 'package:digital_14/features/events/screens/details_screen/details_screen_widget_model.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/event_item_widget.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// Widget screen with event details
class DetailsScreen extends ElementaryWidget<DetailsScreenWidgetModel> {
  /// Create an instance [DetailsScreen]
  const DetailsScreen({
    this.eventModel,
    Key? key,
    WidgetModelFactory wmFactory = detailsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final EventModel? eventModel;

  @override
  Widget build(IDetailsScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${wm.eventModel?.title}',
          style: AppTypography.titleBold.copyWith(color: black),
        ),
        centerTitle: false,
        leading: const BackButton(
          color: backButton,
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(color: appBarBackground),
            const SizedBox(height: 15.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                height: 200.0,
                width: wm.screenWidth,
                child: wm.imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: wm.imageUrl!,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => EventImage.icon,
                        fit: BoxFit.fill,
                      )
                    : const ColoredBox(
                        color: hintColor,
                        child: EventImage.icon,
                      ),
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              EventItemWidget.formatTime(time: wm.eventModel?.datetimeUtc),
              style: AppTypography.titleBold,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10.0),
            Text(
              '${eventModel?.venue?.city}, ${eventModel?.venue?.state}',
              style: AppTypography.cardBody.copyWith(color: textColorPrimary),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
