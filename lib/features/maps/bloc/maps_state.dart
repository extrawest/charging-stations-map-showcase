import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/common/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maps_app/features/maps/models/station_cluster_item.dart';

import '../models/station_model.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState({
    required bool isLoading,
    required Failure? failure,
    required List<StationModel> stations,
    required Set<Marker> markers,
  }) = _MapsState;

  const MapsState._();

  List<StationClusterItem> get clusterItems =>
      stations.map((station) => station.clusterItem).toList();

  factory MapsState.initial() => const MapsState(
        failure: null,
        isLoading: false,
        stations: [],
        markers: {},
      );
}
