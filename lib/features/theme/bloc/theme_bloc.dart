import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../common/services/services.dart';
import '../../../common/utils/utils.dart';
import '../theme_info.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final Box<ThemeModeValue> _themeBox;

  ThemeBloc(this._themeBox) : super(ThemeState.initial()) {
    on<SetTheme>((SetTheme event, Emitter<ThemeState> emit) async {
      await _themeBox.put(
        HiveBoxBootsrapper.themeModeKey,
        EnumToString().parse(event.themeMode),
      );
      emit(state.copyWith(themeMode: event.themeMode));
    });

    on<InitTheme>((InitTheme event, Emitter<ThemeState> emit) async {
      ThemeMode? themeMode = EnumToString().fromString(
        ThemeMode.values,
        _themeBox.get(HiveBoxBootsrapper.themeModeKey),
      );
      themeMode ??= ThemeMode.system;
      await _themeBox.put(
          HiveBoxBootsrapper.themeModeKey, EnumToString().parse(themeMode));
      emit(state.copyWith(themeMode: themeMode));
    });
  }

  ThemeData get themeData => state.themeData;

  void switchTheme() {
    switch (state.themeMode) {
      case ThemeMode.light:
        add(const SetTheme(ThemeMode.dark));
        break;
      case ThemeMode.dark:
        add(const SetTheme(ThemeMode.light));
        break;
      case ThemeMode.system:
        add(const SetTheme(ThemeMode.light));
        break;
    }
  }
}
