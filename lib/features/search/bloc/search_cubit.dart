import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../geolocation/geolocation.dart';
import '../../maps/maps.dart';
import '../models/station_with_distance_model.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({
    required StationRepository stationRepository,
    required LatLng? position,
  })  : _stationRepository = stationRepository,
        super(SearchState.initial(position: position));
  final StationRepository _stationRepository;

  Future<void> init() async {
    await loadStations();
    search(query: '');
  }

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

  Future<void> loadGeoposition() async {
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

  void search({required String query}) {
    final searchResult = state.stations
        .where((station) => station.stationId.contains(query))
        .toList();

    emit(
      state.copyWith(
        searchResult: searchResult
            .map(
              (station) => StationWithDistanceModel(
                station: station,
                distance: state.position == null
                    ? null
                    : GeolocationService.calculateDistance(
                        state.position!,
                        station.position,
                      ),
              ),
            )
            .toList(),
      ),
    );
  }
}
