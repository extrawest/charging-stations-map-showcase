import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../common/services/theme_box.dart';
import '../../features/geolocation/geolocation.dart';
import '../../features/profile/profile.dart';
import '../../features/theme/theme.dart';
import '../../features/wallet/wallet.dart';

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) =>
              ThemeBloc(Hive.box(HiveBoxBootsrapper.themeBoxName))
                ..add(const InitTheme()),
        ),
        BlocProvider<WalletCubit>(
          create: (context) => WalletCubit(
            walletRepository: context.read(),
          )..loadWalletModel(),
        ),
        BlocProvider<GeolocationCubit>(
          create: (context) => GeolocationCubit(
            geolocationService: context.read(),
          )..init(),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(
            authService: context.read(),
          )..init(),
        ),
      ],
      child: child,
    );
  }
}
