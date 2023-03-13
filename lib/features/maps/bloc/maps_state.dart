import 'package:maps_app/common/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/station_model.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState({
    required bool isLoading,
    required Failure? failure,
    required List<StationModel> stations,
  }) = _MapsState;

  factory MapsState.initial() => const MapsState(
        failure: null,
        isLoading: false,
        stations: [],
      );
}
