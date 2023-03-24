import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../common/services/theme_box.dart';

import '../../features/features.dart';
import '../di/injector_module.dart';

class GlobalRepositoryProvider extends StatelessWidget {
  const GlobalRepositoryProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<StationRepository>(
          create: (context) => StationRepositoryImpl(
            apiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<WalletRepository>(
          create: (context) => WalletRepositoryImpl(
            apiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<GeolocationService>(
          create: (context) => GeolocationServiceImpl(),
        ),
        RepositoryProvider<AuthService>(
          create: (context) => FirebaseAuthService(
            googleSignIn: InjectorModule.locator(),
            firebaseAuth: InjectorModule.locator(),
          ),
        ),
      ],
      child: child,
    );
  }
}
