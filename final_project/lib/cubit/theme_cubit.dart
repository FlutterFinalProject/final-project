import 'package:bloc/bloc.dart';
import 'package:final_project/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial(customTheme['Light']));
  changeTheme(String themKey) {
    emit(ThemeState(customTheme[themKey]));
  }
}
