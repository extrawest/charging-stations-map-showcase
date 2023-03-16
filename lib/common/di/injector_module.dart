// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/features.dart';
import '../../network/dio_client_bootstraper.dart';

abstract class InjectorModule {
  static final GetIt locator = GetIt.asNewInstance();
  static Future<void> inject() async {
    final dioClient = await DioClienBootstraper.inializeDioClient();
    locator.registerSingleton<Dio>(dioClient);
    locator.registerLazySingleton<StationsApiService>(
      () => StationsApiService(locator()),
    );
    locator.registerSingleton<GeolocationService>(GeolocationServiceImpl());
    locator.registerLazySingleton<StationRepository>(
      () => StationRepositoryImpl(apiService: locator()),
    );
  }
}
