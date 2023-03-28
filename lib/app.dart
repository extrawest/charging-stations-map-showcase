import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/theme/theme.dart';
import 'common/router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: kIsWeb,
      isToolbarVisible: false,
      builder: (context) => MaterialApp.router(
        theme: context.read<ThemeBloc>().themeData,
        title: 'Maps App',
        routerConfig: goRouter,
        useInheritedMediaQuery: true,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
