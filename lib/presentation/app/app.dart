import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/app_config.dart';
import '../../constants/theme.dart';
import '../initializer/initializer.dart';
import 'theme_bloc/theme_bloc.dart';
// import '../l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: AppConfig.config.appTitle,
          debugShowCheckedModeBanner: false,
          theme: state.isLightThemeMode ? AppTheme.light : AppTheme.dark,
          home: const Initializer(),
        );
      },
    );
  }
}
