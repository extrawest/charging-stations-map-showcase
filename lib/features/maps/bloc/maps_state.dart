import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/common/failure/failure.dart';

import '../models/station_cluster_item.dart';
import '../models/station_model.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState({
    required bool isLoading,
    required Failure? failure,
    required List<StationModel> stations,
    required Set<Marker> markers,
    required LocationPermission locationPermission,
    required LatLng? location,
  }) = _MapsState;

  const MapsState._();

  factory MapsState.initial() => const MapsState(
        failure: null,
        isLoading: false,
        stations: [],
        markers: {},
        locationPermission: LocationPermission.unableToDetermine,
        location: null,
      );

  List<StationClusterItem> get clusterItems =>
      stations.map((station) => station.clusterItem).toList();

  bool get showPermissionWarning =>
      locationPermission == LocationPermission.denied ||
      locationPermission == LocationPermission.deniedForever;
}
