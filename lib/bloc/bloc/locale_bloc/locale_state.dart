part of 'locale_bloc.dart';

// Initial state not used anywhere
enum LocaleStatus { initial, loading, changed, failure }

class LocaleState extends Equatable {
  const LocaleState({
    this.status = LocaleStatus.initial,
    this.locale = const Locale('en'),
  });

  final LocaleStatus status;
  final Locale locale;

  LocaleState copyWith({
    LocaleStatus Function()? status,
    Locale Function()? locale,
  }) {
    return LocaleState(
      status: status != null ? status() : this.status,
      locale: locale != null ? locale() : this.locale,
    );
  }

  @override
  List<Object?> get props => [
        status,
        locale,
      ];
}
