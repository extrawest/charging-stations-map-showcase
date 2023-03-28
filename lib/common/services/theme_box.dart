// ignore_for_file: avoid_classes_with_only_static_members

import 'package:hive_flutter/hive_flutter.dart';
import '../../features/favourites/favourites.dart';

typedef ThemeModeValue = String?;

class HiveBoxBootsrapper {
  static const String themeBoxName = 'theme';
  static const String themeModeKey = 'themeMode';

  static const String favouritesBoxName = 'favourites';

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<FavouritesHistoryModel>(
      FavouritesHistoryModelAdapter(),
    );
    await Hive.openBox<ThemeModeValue>(themeBoxName);
    await Hive.openBox<FavouritesHistoryModel>(favouritesBoxName);
  }
}
