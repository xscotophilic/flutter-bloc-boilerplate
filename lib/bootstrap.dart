import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '_internal/log/log.dart';
import 'presentation/app/app.dart';
import 'presentation/app/app_bloc_observer.dart';

void bootstrap() {
  FlutterError.onError = (details) {
    Log.danger(details.exceptionAsString(), details.stack);
  };

  Bloc.observer = AppBlocObserver();

  runZonedGuarded(
    () => runApp(
      const App(),
    ),
    (error, stackTrace) => Log.danger(error.toString(), stackTrace),
  );
}
