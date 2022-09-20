import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget_model.dart';
import 'package:digital_14/features/events/service/events_bloc/events_bloc.dart';
import 'package:digital_14/features/events/service/repository/events_repository.dart';
import 'package:digital_14/features/events/service/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../flutter_test_config.dart';

@GenerateNiceMocks([
  MockSpec<ISearchAppBarWidgetModel>(),
  MockSpec<SharedPrefHelper>(),
  MockSpec<IEventsRepository>(),
])
import 'search_app_bar_widget_test.mocks.dart';

void main() {
  const searchAppBar = SearchAppBarWidget();
  final searchAppBarWm = MockISearchAppBarWidgetModel();
  final helper = MockSharedPrefHelper();
  final repository = MockIEventsRepository();
  setUp(() {
    when(searchAppBarWm.showCancelButton).thenAnswer(
      (_) => ValueNotifier(true),
    );
    when(searchAppBarWm.searchFieldController).thenAnswer(
      (_) => TextEditingController(),
    );
  });

  testGoldens('Search app bar screen golden test', (tester) async {
    await tester.pumpWidgetBuilder(
      BlocProvider(
        create: (context) => EventsBloc(repository, helper),
        child: getWidgetWithMediaQuery(
          searchAppBar.build(searchAppBarWm),
        ),
      ),
    );
    await screenMatchesGolden(tester, 'search_app_bar_widget');
  });
}
