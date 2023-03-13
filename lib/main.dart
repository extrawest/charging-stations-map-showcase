import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/configuration/configuration.dart';
import '../common/di/injector_module.dart';
import 'common/services/theme_box.dart';
import '../common/utils/utils.dart';
import '../common/widgets/global_blocs_provider.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocalization.initialize();
  await setupLogger();
  await InjectorModule.inject();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  final themeBox = await ThemeBox.init();

  runApp(
    EasyLocalization(
      supportedLocales: AppLocalization.supportedLocales,
      path: AppLocalization.translationsFolderPath,
      fallbackLocale: AppLocalization.englishLocale,
      child: GlobalBlocProvider(
        themeBox: themeBox,
        child: const App(),
      ),
    ),
  );
}
