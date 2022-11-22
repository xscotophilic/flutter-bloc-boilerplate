import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:locale_api/locale_api.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc({
    required LocaleApi localeApi,
  }) : super(const LocaleState()) {
    on<InitLocaleEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            status: () => LocaleStatus.loading,
          ),
        );
        localeApi.initLocale();
        final Locale locale = localeApi.locale;
        emit(
          state.copyWith(
            status: () => LocaleStatus.changed,
            locale: () => locale,
          ),
        );
      },
    );

    on<ChangeLocaleEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            status: () => LocaleStatus.loading,
          ),
        );
        await localeApi.changeLocale(event.locale);
        final Locale locale = localeApi.locale;
        emit(
          state.copyWith(
            status: () => LocaleStatus.changed,
            locale: () => locale,
          ),
        );
      },
    );
  }
}
