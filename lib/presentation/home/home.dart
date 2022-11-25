import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc/locale_bloc/locale_bloc.dart';
import '../../bloc/bloc/theme_bloc/theme_bloc.dart';
import '../../l10n/l10n.dart';

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
          // Dropdown to change language
          const LanguageSelector(),
        ],
      ),
    );
  }
}

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector>
    with TranslationMixin {
  @override
  Widget build(BuildContext context) {
    // use minimum width
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) => DropdownButton(
        value: state.locale,
        items: [
          DropdownMenuItem(
            value: const Locale('en'),
            child: Text(translations.enLanguageName),
          ),
          DropdownMenuItem(
            value: const Locale('hi', 'IN'),
            child: Text(translations.hiLanguageName),
          ),
        ],
        onChanged: (locale) {
          if (locale != null) {
            context.read<LocaleBloc>().add(ChangeLocaleEvent(locale: locale));
          }
        },
        isExpanded: true,
        underline: const SizedBox(),
      ),
    );
  }
}
