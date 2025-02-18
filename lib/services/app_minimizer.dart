import 'dart:io';

import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class AppMinimizer {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 6,
      errorMethodCount: 12,
      printEmojis: false,
    ),
  );

  static Future<void> minimizeApp() async {
    const platform = MethodChannel('com.haiztek.workout_app/app_minimizer');

    try {
      if (Platform.isAndroid) {
        await platform.invokeMethod('minimizeApp');
      }
    } on PlatformException catch (e) {
      _logger.e(e.toString(), error: e);
    }
  }
}
