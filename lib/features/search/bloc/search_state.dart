import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/failure/failure.dart';
import '../../maps/maps.dart';
import '../models/station_with_distance_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required Failure? failure,
    required List<StationModel> stations,
    required List<StationWithDistanceModel> searchResult,
    required String query,
    required LatLng? position,
  }) = _SearchState;

  const SearchState._();

  factory SearchState.initial({required LatLng? position}) => SearchState(
        isLoading: false,
        stations: [],
        searchResult: [],
        query: '',
        failure: null,
        position: position,
      );

  bool get isEmpty => searchResult.isEmpty;
}
