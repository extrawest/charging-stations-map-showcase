import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/features/features.dart';

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
}
