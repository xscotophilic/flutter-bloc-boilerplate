# Theme

[[toc]]

## Theme API

The Theme API is used to check if app is in dark mode or light mode. It also provides a way to toggle between the two modes. The value is persisted in the local storage irrespective of the device/ platform.

Initially when no value is present in the local storage, the theme is set depending on the user's device settings. If the user's device is set to dark mode, the app will be in dark mode by default. If the user's device is set to light mode, the app will be in light mode by default.

Theme API uses shared preferences to store the theme value. The key used to store the theme mode is `isLightThemeMode`.

### Directory Structure

| **Directory Or File** | **Description** |
| --- | --- |
| root/packages/theme_api | Contains the theme package. |
| root/packages/theme_api/lib | Contains the source code for the theme package. |
| root/packages/theme_api/lib/src | Contains the source code for the theme package. |
| root/packages/theme_api/lib/theme_api.dart | Is used to export all the files in the package. |
| root/packages/theme_api/lib/src/theme_api.dart | Contains the source code for the theme package, and is responsible for storing, retrieving and toggling the theme mode. |
| root/packages/theme_api/example | Contains the example app for the use of theme package. |
| root/packages/theme_api/test | Contains the test files for the theme package. |

### Usage

To use the theme package, add the following dependency in the `pubspec.yaml` file of your project:

```yaml
dependencies:
  theme_api:
    path: packages/theme_api
```

To import the theme package, add the following import statement in your dart file:

```dart
import 'package:theme_api/theme_api.dart';
```

Create instance of ThemeApi by calling the `ThemeApi` constructor. The constructor takes a `SharedPreferences` instance as a parameter. The `SharedPreferences` instance is used to store the theme mode value in the local storage.

```dart
final ThemeApi themeApi = ThemeApi(
  plugin: await SharedPreferences.getInstance(),
);
```

When the app is launched, you need to call initTheme method to set the theme mode depending on the value stored in the local storage. If no value is present in the local storage, the theme mode is set depending on the user's device settings.

```dart
themeApi.initTheme();
```

To check theme mode, call the `isLightThemeMode` getter.

```dart
final bool isLightThemeMode = themeApi.isLightThemeMode;
```

To toggle theme mode, call the `toggleThemeMode` method.

```dart
themeApi.toggleThemeMode();
```

Generally we use bloc to manage the state of the app. You can check the example directory for the complete implementation.


Use bloc builder to listen to the theme mode changes and update the theme of the app.

```dart
BlocBuilder<ThemeBloc, ThemeState>(
  builder: (context, themeState) => MaterialApp(
    theme: themeState.isLightThemeMode ? AppTheme.light : AppTheme.dark,
    home: const Initializer(),
  ),
),
```

## Theme Bloc

The Theme Bloc is used to manage the state of the theme mode. It listens to the theme mode changes and notifies the listeners. For more details check example directory of the theme package.

## Theme Data

The Theme Data is used to store the theme data for the app. It contains the theme data for both light and dark mode. The theme related values are stored in the `AppTheme` class. Which is present in the `lib/_internal/theme/theme.dart` file. The `AppTheme` class contains the following properties: `light` and `dark`. The `light` and `dark` properties are of type `ThemeData`. The `ThemeData` class is present in the `package:flutter/material.dart` package. 

AppTheme contains most commonly used theme related values i.e. primary color, accent color, info color, success color, warning color, danger color, background color, scaffold background color, text theme, icon theme, etc.

### Directory Structure

| **Directory Or File** | **Description** |
| --- | --- |
| _internal/theme/theme.dart | Contains the AppTheme class. And all theme related values are stored in this class. |
| _internal/theme/style.dart | Contains all the style related values. |

### Usage

To use the theme data, add the following import statement in your dart file:

```dart
import 'package:template/_internal/theme/theme.dart';
```

To get the theme data for light mode, use the `light` property of the `AppTheme` class.

```dart
final ThemeData lightTheme = AppTheme.light;
```

To get the theme data for dark mode, use the `dark` property of the `AppTheme` class.

```dart
final ThemeData darkTheme = AppTheme.dark;
```

To get primary color, use the `primarySwatch` property of the `AppTheme` class.

```dart
final MaterialColor primarySwatch = AppTheme.primarySwatch;
```

To get secondary color, use the `secondarySwatch` property of the `AppTheme` class.

```dart
final MaterialColor secondarySwatch = AppTheme.secondarySwatch;
```

Likewise, you can get all the swatches from the `AppTheme` class. We have info, success, warning, danger swatches also.