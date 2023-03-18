import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/failure/failure.dart';
import '../models/geolocation_permission.dart';
import '../repositories/stations_repository.dart';
import '../services/geolocation_service.dart';
import 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit({
    required StationRepository stationRepository,
    required GeolocationService geolocationService,
  })  : _stationRepository = stationRepository,
        _geolocationService = geolocationService,
        super(MapsState.initial());

  final StationRepository _stationRepository;
  final GeolocationService _geolocationService;

  Future<void> loadStations() async {
    emit(state.copyWith(isLoading: true));
    final stationsResult = await _stationRepository.retrieveStations();
    emit(
      stationsResult.match(
        (failure) => state.copyWith(failure: failure),
        (stations) => state.copyWith(stations: stations),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }

  Future<void> requestGeolocatorPermission() async {
    final isServiceEnabledResult =
        await _geolocationService.checkIfGeolocationServiceEnabled();

    final newState = await isServiceEnabledResult
        .bindFuture(requestPermissionIfEnabled)
        .match(
          (failure) => state.copyWith(failure: failure),
          (permission) => state.copyWith(permission: permission),
        )
        .run();

    emit(newState);
  }

  Future<Either<Failure, GeolocationPermission>> requestPermissionIfEnabled(
    bool isEnabled,
  ) async {
    if (!isEnabled) {
      return const Left(GeolocationServiceDisabledFailure());
    }
    final permissionResult =
        await _geolocationService.requestGeolocationPermission();

    return permissionResult;
  }

  Future<void> locate({
    required ValueSetter<LatLng> onLocate,
  }) async {
    final locationResult = await _geolocationService.getCurrentPosition();

    locationResult.match(
      (failure) => emit(state.copyWith(failure: failure)),
      onLocate,
    );
  }

  Future<void> openLocationSettings() async {
    final openSettingsResult = await _geolocationService.openLocationSettings();
    openSettingsResult.mapLeft(
      (failure) => emit(state.copyWith(failure: failure)),
    );
  }

  void setMapType(MapType mapType) {
    emit(state.copyWith(mapType: mapType));
  }
}
