import 'package:digital_14/features/events/screens/details_screen/details_screen.dart';
import 'package:digital_14/features/events/screens/details_screen/details_screen_widget_model.dart';
import 'package:digital_14/features/server/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../flutter_test_config.dart';

@GenerateNiceMocks(
    [MockSpec<IDetailsScreenWidgetModel>(), MockSpec<BaseCacheManager>()])
import 'detail_screen_test.mocks.dart';

void main() {
  const detailsScreen = DetailsScreen();
  final detailsWm = MockIDetailsScreenWidgetModel();
  final cacheManager = MockBaseCacheManager();
  const String tImageUrl =
      'https://frontofficesports.com/wp-content/uploads/2022/04/FOS-22-4.25-Oakland-Athletics.jpg';
  final EventModel tEventModel = EventModel(
    title: 'Event title',
    performers: [
      PerformerModel(
        image: tImageUrl,
      ),
    ],
    venue: VenueModel(
      city: 'New York',
      state: 'NY',
    ),
    datetimeUtc: '2012-03-10T00:00:00',
  );

  setUp(() {
    when(detailsWm.eventIsFavorite).thenAnswer(
      (_) => ValueNotifier(true),
    );
    when(detailsWm.eventModel).thenAnswer(
      (_) => tEventModel,
    );
    when(detailsWm.cacheManager).thenAnswer(
      (_) => cacheManager,
    );
  });

  testGoldens('Details screen golden test', (tester) async {
    await tester.pumpWidgetBuilder(
      getWidgetWithMediaQuery(
        detailsScreen.build(detailsWm),
      ),
    );
    await multiScreenGolden(tester, 'details_screen');
  });
}
