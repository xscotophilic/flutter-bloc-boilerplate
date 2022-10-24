import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_api/theme_api.dart';

import '_internal/log/log.dart';
import 'presentation/app/app.dart';
import 'presentation/app/app_bloc_observer.dart';
import 'presentation/app/theme_bloc/theme_bloc.dart';

Future<void> bootstrap() async {
  FlutterError.onError = (details) {
    Log.danger(details.exceptionAsString(), details.stack);
  };

  Bloc.observer = AppBlocObserver();

  final ThemeApi themeApi = ThemeApi(
    plugin: await SharedPreferences.getInstance(),
  );

  runZonedGuarded(
    () => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeBloc(themeAPI: themeApi)
              ..add(
                const InitThemeEvent(),
              ),
          )
        ],
        child: const App(),
      ),
    ),
    (error, stackTrace) => Log.danger(error.toString(), stackTrace),
  );
}
