import 'package:digital_14/features/events/screens/event_screen/event_screen_widget_model.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// Widget screen with user info screen.
class EventScreen extends ElementaryWidget<EventScreenWidgetModel> {
  /// Create an instance [EventScreen].
  const EventScreen({
    Key? key,
    WidgetModelFactory wmFactory = eventScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IEventScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('event screen'),
      ),
      body: const SizedBox(),
    );
  }
}