import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../geolocation/geolocation.dart';
import '../repositories/stations_repository.dart';
import 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit({
    required StationRepository stationRepository,
    required LatLng? location,
  })  : _stationRepository = stationRepository,
        super(MapsState.initial(location: location));

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
    loadClusterItems();
  }

  Future<void> loadClusterItems() async {
    emit(state.copyWith(isLocationLoading: true));

    // await requestGeolocatorPermission();

    emit(state.copyWith(isLocationLoading: false));

    if (state.location == null) {
      return emit(
        state.copyWith(
          clusterItems: state.stations
              .map((station) => station.clusterItem(distance: null))
              .toList(),
        ),
      );
    }

    final clusterItems = state.stations
        .map(
          (station) => station.clusterItem(
            distance: GeolocationService.calculateDistance(
              station.position,
              state.location!,
            ),
          ),
        )
        .toList();

    emit(state.copyWith(clusterItems: clusterItems));
  }

  void setMapType(MapType mapType) {
    emit(state.copyWith(mapType: mapType));
  }
}
