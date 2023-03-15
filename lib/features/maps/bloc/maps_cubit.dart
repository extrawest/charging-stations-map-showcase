import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/failure/failure.dart';
import '../repositories/stations_repository.dart';

import 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit({required StationRepository stationRepository})
      : _stationRepository = stationRepository,
        super(MapsState.initial());

  final StationRepository _stationRepository;

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

  void updateMarker(Set<Marker> markers) {
    emit(state.copyWith(markers: markers));
  }

  Future<void> requestGeolocatorPermission() async {
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        emit(
            state.copyWith(failure: const GeolocationServiceDisabledFailure()));
      }

      final initialPermission = await Geolocator.checkPermission();

      if (initialPermission == LocationPermission.denied) {
        final permission = await Geolocator.requestPermission();
        emit(state.copyWith(locationPermission: permission));
      } else {
        emit(state.copyWith(locationPermission: initialPermission));
      }
    } catch (e) {
      emit(state.copyWith(failure: GeolocationFailure(message: e.toString())));
    }
  }

  Future<void> locate({required ValueSetter<LatLng> onLocate}) async {
    try {
      if (state.locationPermission == LocationPermission.unableToDetermine) {
        await requestGeolocatorPermission();
      }

      if (state.locationPermission == LocationPermission.always ||
          state.locationPermission == LocationPermission.whileInUse) {
        final position = await Geolocator.getCurrentPosition();
        final location = LatLng(position.latitude, position.longitude);
        emit(state.copyWith(location: location));
        onLocate(location);
      }
    } catch (e) {
      emit(state.copyWith(failure: GeolocationFailure(message: e.toString())));
    }
  }

  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
}
