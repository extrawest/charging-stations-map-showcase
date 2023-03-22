import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../common/failure/failure.dart';
import '../models/geolocation_permission.dart';
import '../services/geolocation_service.dart';
import 'geolocation_state.dart';

class GeolocationCubit extends Cubit<GeolocationState> {
  GeolocationCubit({
    required GeolocationService geolocationService,
  })  : _geolocationService = geolocationService,
        super(GeolocationState.initial());

  final GeolocationService _geolocationService;

  Future<void> init() async {
    await requestGeolocatorPermission();
    await loadPosition();
  }

  Future<void> loadPosition() async {
    if (state.permission.isDenied) return;
    emit(state.copyWith(isLoading: true));
    final geopositionResult = await _geolocationService.getCurrentPosition();
    emit(
      geopositionResult.match(
        (failure) => state.copyWith(failure: failure),
        (position) => state.copyWith(position: position),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }

  Future<void> requestGeolocatorPermission() async {
    final isServiceEnabledResult =
        await _geolocationService.checkIfGeolocationServiceEnabled();

    final newState = await isServiceEnabledResult
        .bindFuture(_requestPermissionIfEnabled)
        .match(
          (failure) => state.copyWith(failure: failure),
          (permission) => state.copyWith(permission: permission),
        )
        .run();

    emit(newState);
  }

  Future<Either<Failure, GeolocationPermission>> _requestPermissionIfEnabled(
    bool isEnabled,
  ) async {
    if (!isEnabled) {
      return const Left(GeolocationServiceDisabledFailure());
    }
    final permissionResult =
        await _geolocationService.requestGeolocationPermission();

    return permissionResult;
  }

  Future<void> openLocationSettings() async {
    final openSettingsResult = await _geolocationService.openLocationSettings();
    openSettingsResult.mapLeft(
      (failure) => emit(state.copyWith(failure: failure)),
    );
  }
}
