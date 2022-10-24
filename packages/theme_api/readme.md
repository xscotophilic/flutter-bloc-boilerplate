How to use theme_api

- the Theme BLoC is provided in example folder

- Create ThemeApi instance
```
final ThemeApi themeApi = ThemeApi(
  plugin: await SharedPreferences.getInstance(),
);
```

- wrap the child with block provider in which you want to use theme bloc
```dart
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
```

- Wrap MaterialApp with Bloc builder and based on state of selected theme, pass theme data to MaterialApp
```dart
BlocBuilder<ThemeBloc, ThemeState>(
  builder: (context, state) {
    return MaterialApp(
      title: 'App title',
      debugShowCheckedModeBanner: false,
      theme: state.isLightThemeMode ? AppTheme.light : AppTheme.dark,
      home: const HomeScreen(),
    );
  },
);
```