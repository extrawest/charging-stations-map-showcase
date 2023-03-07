import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'common/configuration/configuration.dart';
import 'common/router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: AppLocalization.supportedLocales,
      path: AppLocalization.translationsFolderPath,
      fallbackLocale: AppLocalization.englishLocale,
      child: MaterialApp.router(
        title: 'Maps App',
        routerConfig: goRouter,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
