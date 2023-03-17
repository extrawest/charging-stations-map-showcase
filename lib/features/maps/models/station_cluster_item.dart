import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'station_model.dart';
import 'station_status.dart';

class StationClusterItem with ClusterItem {
  StationClusterItem(this.station);

  @override
  LatLng get location => LatLng(station.latitude, station.longitude);

  final StationModel station;
  StationStatus get status => station.status;
}
