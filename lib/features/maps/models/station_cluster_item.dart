import 'package:equatable/equatable.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'station_model.dart';
import 'station_status.dart';

class StationClusterItem extends Equatable with ClusterItem {
  StationClusterItem({
    required this.station,
    required this.distance,
  });

  final StationModel station;
  final double? distance;

  @override
  LatLng get location => LatLng(station.latitude, station.longitude);

  StationStatus get status => station.status;

  @override
  List<Object?> get props => [station, distance];
}
