import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weatherplay/l10n/l10n.dart';
import 'package:intl/intl.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit({required Locale locale}) : super(LanguageState(locale: locale));

  void setLang(Locale locale) {
    String sysLocale = Intl.getCurrentLocale();

    if(L10n.all.contains(locale)) {
      emit(LanguageState(locale: locale));
    } else {
      emit(LanguageState(locale: Locale(sysLocale)));
    }
  }
}