import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maps_app/common/widgets/global_repository_provider.dart';

import 'app.dart';
import 'common/configuration/configuration.dart';
import 'common/di/injector_module.dart';
import 'common/services/theme_box.dart';
import 'common/utils/logger.dart';
import 'common/widgets/global_blocs_provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppLocalization.initialize();
  await setupLogger();
  await InjectorModule.inject();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  await HiveBoxBootsrapper.init();

  runApp(
    EasyLocalization(
      path: AppLocalization.translationsFolderPath,
      supportedLocales: AppLocalization.supportedLocales,
      fallbackLocale: AppLocalization.englishLocale,
      child: const GlobalRepositoryProvider(
        child: GlobalBlocProvider(
          child: App(),
        ),
      ),
    ),
  );
}
