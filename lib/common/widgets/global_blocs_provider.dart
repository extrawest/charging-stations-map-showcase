import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/geolocation/geolocation.dart';
import '../../features/profile/profile.dart';
import '../../features/theme/theme.dart';
import '../../features/wallet/wallet.dart';

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({
    super.key,
    required this.child,
    required this.themeBox,
  });

  final Widget child;
  final Box themeBox;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(themeBox)..add(const InitTheme()),
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
