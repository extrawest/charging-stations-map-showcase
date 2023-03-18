import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/failure/failure.dart';
import '../models/geolocation_permission.dart';
import '../models/station_cluster_item.dart';
import '../models/station_model.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState({
    required bool isLoading,
    required bool isLocationLoading,
    required Failure? failure,
    required List<StationModel> stations,
    required GeolocationPermission permission,
    required LatLng? location,
    required MapType mapType,
    required List<StationClusterItem> clusterItems,
  }) = _MapsState;

  const MapsState._();

  factory MapsState.initial() => const MapsState(
        failure: null,
        isLoading: false,
        isLocationLoading: false,
        stations: [],
        permission: GeolocationPermission.unset,
        location: null,
        mapType: MapType.normal,
        clusterItems: [],
      );
}
