
// ignore_for_file: avoid_classes_with_only_static_members

import 'package:hive_flutter/hive_flutter.dart';

class ThemeBox {
  static const String name = 'theme';
  static const String themeModeKey = 'themeMode';

  static Future<Box> init() async {
    await Hive.initFlutter();
    final themeBox = await Hive.openBox(ThemeBox.name);
    return themeBox;
  }
}
