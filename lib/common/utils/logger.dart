import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'get_flavor.dart';

final log = Logger('EW');

Future<void> setupLogger() async {
  final flavor = await getFlavor();
  final isProd = flavor == 'prod';

  Logger.root.level = isProd ? Level.OFF : Level.ALL;
  Logger.root.onRecord.listen((record) {
    // It's used for printing in dev environment
    // ignore: avoid_print
    print('${record.level.name}, ${record.time}, '
        'Msg: ${record.message}, '
        '${record.error != null ? 'Error: ${record.error}, ' : ''}'
        '${record.stackTrace != null ? 'StackTrace: ${record.stackTrace}' : ''}');
  });

  if (isProd) {
    EasyLocalization.logger.enableBuildModes = [];
  }
  Bloc.observer = AppBlocObserver();
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log.fine(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log.fine(transition);
  }
}
