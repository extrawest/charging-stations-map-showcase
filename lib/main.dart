import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_project_starter/common/di/injector_module.dart';
import '../common/configuration/configuration.dart';
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

  runApp(const App());
}
