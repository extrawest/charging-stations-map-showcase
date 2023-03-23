import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../features/profile/services/auth_service.dart';

import '../../common/di/injector_module.dart';
import '../../features/features.dart';

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
        )
      ],
      child: child,
    );
  }
}
