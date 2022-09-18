import 'package:cached_network_image/cached_network_image.dart';
import 'package:digital_14/assets/colors/colors.dart';
import 'package:digital_14/assets/typography/app_typography.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const double itemHeight = 90.0;

/// Event card at [SearchScreen] list
class EventItemWidget extends StatelessWidget {
  const EventItemWidget({
    required this.eventModel,
    required this.onChooseEvent,
    Key? key,
  }) : super(key: key);

  final EventModel eventModel;
  final VoidCallback onChooseEvent;

  static DateFormat formatter = DateFormat('E, dd MM yyyy h:m a');

  static String formatTime({required String? time}) {
    if (time == null) {
      return '';
    }
    final DateTime date = DateTime.parse(time);
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChooseEvent,
      child: SizedBox(
        height: itemHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  EventImage(
                    imageUrl: eventModel.performers?.first.image,
                    favorite: eventModel.favorite,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                        right: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${eventModel.title}',
                            style: AppTypography.cardTitleBold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${eventModel.venue?.city}, ${eventModel.venue?.state}',
                            style: AppTypography.cardBody,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            formatTime(time: eventModel.datetimeUtc),
                            style: AppTypography.cardBody,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: appBarBackground),
          ],
        ),
      ),
    );
  }
}

/// Event image with favorite icon
class EventImage extends StatelessWidget {
  const EventImage({
    this.imageUrl,
    this.favorite,
    Key? key,
  }) : super(key: key);

  final String? imageUrl;
  final bool? favorite;

  static const Icon icon = Icon(
    Icons.broken_image_outlined,
    color: appBarBackground,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: itemHeight,
          height: itemHeight,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                width: 55.0,
                height: 55.0,
                child: imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: imageUrl!,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => icon,
                        fit: BoxFit.fill,
                      )
                    : const ColoredBox(
                        color: hintColor,
                        child: icon,
                      ),
              ),
            ),
          ),
        ),
        if (favorite == true)
          const Positioned(
            top: 2.0,
            left: 5.0,
            child: HeartWithBorder(iconHeight: 25.0),
          )
      ],
    );
  }
}

/// Icon that denotes a favorite event
class HeartWithBorder extends StatelessWidget {
  const HeartWithBorder({
    required this.iconHeight,
    Key? key,
  }) : super(key: key);

  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    const double borderWidth = 6.0;
    return Stack(
      children: [
        Icon(
          Icons.favorite,
          color: white,
          size: iconHeight,
        ),
        Positioned.fill(
          child: Icon(
            Icons.favorite,
            color: btnColor,
            size: iconHeight - borderWidth,
          ),
        ),
      ],
    );
  }
}
