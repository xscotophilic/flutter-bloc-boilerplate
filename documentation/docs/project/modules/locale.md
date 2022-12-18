# Locale

[[toc]]

## Locale API

The Locale API package provides a set of functions to help you manage the locale of your application.

Locale api can manage languageCode, countryCode. In initialisation, the locale is set to the default locale of the device if the values are not stored in the shared preferences.

### Directory Structure

| **Directory Or File** | **Description** |
| --- | --- |
| root/packages/locale_api | Contains the locale api package. |
| root/packages/locale_api/lib | Contains the source code for the locale api package. |
| root/packages/locale_api/lib/src | Contains the source code for the locale api package. |
| root/packages/locale_api/lib/locale_api.dart | Is used to export all the files in the package. |
| root/packages/locale_api/lib/src/locale_api.dart | Contains the source code for the locale api package, and is responsible for storing, retrieving and changing the locale. |
| root/packages/locale_api/example | Contains the example app for the use of locale api package. |
| root/packages/locale_api/test | Contains the test files for the locale api package. |


### Usage
To use the locale package, add the following dependency in the `pubspec.yaml` file of your project:

```yaml
dependencies:
  locale_api:
    path: packages/locale_api
```

To import the theme package, add the following import statement in your dart file:

```dart
import 'package:locale_api/locale_api.dart';
```

Create instance of LocaleApi by calling the `LocaleApi` constructor. The constructor takes a `SharedPreferences` instance as a parameter. The `SharedPreferences` instance is used to store/ access languageCode and countryCode in the local storage.

```dart
final LocaleApi localeApi = LocaleApi(
  plugin: await SharedPreferences.getInstance(),
);
```

When the app is launched, you need to call initLocale method to set the locale depending on the value stored in the local storage. If no value is present in the local storage, the locale is set depending on the user's device settings.

```dart
localeApi.initLocale();
```

To get locale value, call the `locale` getter.

```dart
final Locale locale = localeApi.locale;
```

To change locale, call the `changeLocale` method.

```dart
localeApi.changeLocale();
```

Generally we use bloc to manage the state of the app. You can check the example directory for the complete implementation.

Use bloc builder to listen to the locale changes and update the locale of the app.

```dart
BlocBuilder<LocaleBloc, LocaleState>(
  builder: (context, localeState) => MaterialApp(
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: L10n.all,
    locale: L10n.all.contains(localeState.locale)
        ? localeState.locale
        : L10n.all.first,
  ),
);
```

## Locale Bloc

The Locale Bloc is used to manage the state of the locale. It listens to the locale changes and notifies the listeners, it is used to change the locale values also. For more details check example directory of the locale package.