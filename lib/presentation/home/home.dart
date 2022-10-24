import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/theme_bloc/theme_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) => Center(
              child: Switch(
                value: !state.isLightThemeMode,
                onChanged: (_) {
                  context.read<ThemeBloc>().add(
                        const ToggleThemeEvent(),
                      );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
