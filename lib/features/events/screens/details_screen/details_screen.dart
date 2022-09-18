import 'package:digital_14/features/events/screens/details_screen/details_screen_widget_model.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// Widget screen with event details
class DetailsScreen extends ElementaryWidget<DetailsScreenWidgetModel> {
  /// Create an instance [DetailsScreen]
  const DetailsScreen({
    Key? key,
    WidgetModelFactory wmFactory = detailsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IDetailsScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('event screen'),
      ),
      body: const SizedBox(),
    );
  }
}