part of 'theme_bloc.dart';

// Initial state not used anywhere
enum ThemeStatus { initial, loading, changed, failure }

class ThemeState extends Equatable {
  const ThemeState({
    this.status = ThemeStatus.initial,
    this.isLightThemeMode = true,
  });

  final ThemeStatus status;
  final bool isLightThemeMode;

  ThemeState copyWith({
    ThemeStatus Function()? status,
    bool Function()? isLightThemeMode,
  }) {
    return ThemeState(
      status: status != null ? status() : this.status,
      isLightThemeMode:
          isLightThemeMode != null ? isLightThemeMode() : this.isLightThemeMode,
    );
  }

  @override
  List<Object?> get props => [
        status,
        isLightThemeMode,
      ];
}
