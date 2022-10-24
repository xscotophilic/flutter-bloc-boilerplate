import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:theme_api/theme_api.dart';

void main() {
  late ThemeApi themeapi;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    themeapi = ThemeApi(plugin: sharedPreferences);
  });

  test(
    'test theme api default theme value',
    () async {
      expect(themeapi.isLightThemeMode, equals(true));
    },
  );

  test(
    'test initTheme Function when no value found locally (in stored prefs)',
    () async {
      themeapi.initTheme();
      expect(themeapi.isLightThemeMode, equals(true));
    },
  );

  test(
    'test initTheme Function when  value of theme found locally (in stored prefs)',
    () async {
      themeapi.initTheme();
      themeapi.initTheme();
      expect(themeapi.isLightThemeMode, equals(true));
    },
  );

  test(
    'test toogle theme where _isLightThemeMode is null',
    () async {
      themeapi.toogleTheme();
      expect(themeapi.isLightThemeMode, equals(true));
    },
  );

  test(
    'test toogle theme where _isLightThemeMode is not null',
    () async {
      themeapi.initTheme();
      themeapi.toogleTheme();
      expect(themeapi.isLightThemeMode, equals(false));
    },
  );
}
