import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/failure/failure.dart';
import '../../../common/utils/mocks.dart';
import '../../maps/maps.dart';

part 'station_details_state.freezed.dart';

@freezed
class StationDetailsState with _$StationDetailsState {
  const factory StationDetailsState({
    required Failure? failure,
    required StationModel stationModel,
    required double? distance,
    required List<ConnectorModel> connectors,
  }) = _StationDetailsState;

  factory StationDetailsState.initial({
    required StationModel stationModel,
    required double? distance,
  }) =>
      StationDetailsState(
        failure: null,
        stationModel: stationModel,
        connectors: mockConnectors,
        distance: distance,
      );
}
