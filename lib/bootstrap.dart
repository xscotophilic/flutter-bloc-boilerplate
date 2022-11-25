import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locale_api/locale_api.dart';
import 'package:theme_api/theme_api.dart';

import '_internal/log/log.dart';
import 'bloc/bloc/locale_bloc/locale_bloc.dart';
import 'bloc/bloc/theme_bloc/theme_bloc.dart';
import 'presentation/app/app.dart';
import 'presentation/app/app_bloc_observer.dart';

Future<void> bootstrap() async {
  FlutterError.onError = (details) {
    Log.danger(details.exceptionAsString(), data: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  final ThemeApi themeApi = ThemeApi(
    plugin: await SharedPreferences.getInstance(),
  );

  final LocaleApi localeApi = LocaleApi(
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
          ),
          BlocProvider(
            create: (context) => LocaleBloc(localeApi: localeApi)
              ..add(
                const InitLocaleEvent(),
              ),
          )
        ],
        child: const App(),
      ),
    ),
    (error, stackTrace) => Log.danger(error.toString(), data: stackTrace),
  );
}
