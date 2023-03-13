import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'station_status.dart';

class StationClusterItem with ClusterItem {
  StationClusterItem(this.location, this.status);

  @override
  final LatLng location;
  final StationStatus status;
}
