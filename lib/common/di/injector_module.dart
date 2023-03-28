// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../common/utils/load_credentials.dart';
import '../../features/maps/maps.dart';
import '../../features/wallet/wallet.dart';
import '../../network/remove_data_from_get_request_interceptor.dart';

part '../services/google_sign_in_bootstraper.dart';
part '../../network/dio_client_bootstraper.dart';

class InjectorModule {
  static final GetIt locator = GetIt.asNewInstance();
  Future<void> inject() async {
    final dioClient = await _DioClienBootstraper().inializeDioClient();
    locator.registerSingleton<Dio>(dioClient);

    final googleSignIn =
        await _GoogleSignInBootstraper().intitializeGoogleSignIn();
    locator.registerSingleton<GoogleSignIn>(googleSignIn);

    locator.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

    locator.registerLazySingleton<StationsApiService>(
      () => StationsApiService(locator()),
    );

    locator.registerLazySingleton<WalletApiService>(
      () => WalletApiService(locator()),
    );
  }
}
