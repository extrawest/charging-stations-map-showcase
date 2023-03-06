import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project_starter/common/router.dart';
import 'package:flutter_bloc_project_starter/common/services/credentials_loader.dart';
import 'package:flutter_bloc_project_starter/common/utils/app_utils.dart';
import 'package:flutter_bloc_project_starter/features/posts/repositories/posts_repository.dart';
import 'package:flutter_bloc_project_starter/features/posts/services/services.dart';
import 'package:flutter_bloc_project_starter/features/theme/bloc/theme_bloc.dart';
import 'package:flutter_bloc_project_starter/features/theme/theme_info.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_strategy/url_strategy.dart';

import 'common/assets.dart';
import 'common/services/database_boxes.dart';
import 'common/utils/logger.dart';
import 'network/api_client.dart';

const isProductionEnvKey = 'IS_PRODUCTION';
const englishLocale = Locale('en', 'US');
const ukrainianLocale = Locale('uk', 'UA');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  setPathUrlStrategy();

  await Hive.initFlutter();
  final themeBox = await Hive.openBox(ThemeBox.name);

  final credentials = await loadCredentials();
  setupLogger();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  final app = EasyLocalization(
    supportedLocales: const [englishLocale, ukrainianLocale],
    path: translationsFolderPath,
    fallbackLocale: englishLocale,
    child: BlocProvider(
      create: (context) => ThemeBloc(themeBox)..add(const InitTheme()),
      child: _RepositoriesHolder(credentials, child: const Application()),
    ),
  );
  // Setup of the services used in the application
  runApp(app);
}

class _RepositoriesHolder extends StatelessWidget {
  final Widget child;
  final Credentials credentials;

  const _RepositoriesHolder(
    this.credentials, {
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // put your common repositories and services here
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => PostsRepositoryImpl(
            postsApiService: PostsApiServiceImpl(
              ApiClientImpl(apiDomain: credentials.apiDomain),
            ),
          ),
        ),
        RepositoryProvider.value(
          value: ApiClientImpl(apiDomain: credentials.apiDomain),
        ),
      ],
      child: Builder(builder: (context) => child),
    );
  }
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Flutter BLoC Starter',
          routerConfig: goRouter,
          darkTheme: darkTheme,
          theme: state.themeData,
          themeMode: state.themeMode,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        );
      },
    );
  }
}