import 'dart:async';

import 'package:flutter/material.dart';

import '_internal/log/log.dart';
import 'presentation/app/app.dart';

void bootstrap() {
  FlutterError.onError = (details) {
    Log.danger(details.exceptionAsString(), details.stack);
  };

  runZonedGuarded(
    () => runApp(
      const App(),
    ),
    (error, stackTrace) => Log.danger(error.toString(), stackTrace),
  );
}
