import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_strategy/url_strategy.dart';

import '../common/configuration/configuration.dart';
import '../common/di/injector_module.dart';
import '../common/utils/utils.dart';
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
  // setPathUrlStrategy();

  runApp(
    EasyLocalization(
      supportedLocales: AppLocalization.supportedLocales,
      path: AppLocalization.translationsFolderPath,
      fallbackLocale: AppLocalization.englishLocale,
      child: const App(),
    ),
  );
}
