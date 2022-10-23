import 'dart:async';

import 'package:flutter/material.dart';

import 'presentation/app/app.dart';

void bootstrap() {
  FlutterError.onError = (details) {
    // Log Error
  };

  runZonedGuarded(
    () => runApp(
      const App(),
    ),
    (error, stackTrace) {
      // Log Error
    },
  );
}
