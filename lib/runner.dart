import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:surf_logger/surf_logger.dart';

import 'features/app/app.dart';

/// App launch.
Future<void> run() async {
  _initLogger();
  await dotenv.load(fileName: '.env');
  runApp(const App());
}

void _initLogger() {
  Logger.addStrategy(DebugLogStrategy());
}
