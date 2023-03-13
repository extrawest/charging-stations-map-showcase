import 'package:flutter/material.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/station_cluster_item.dart';
import 'station_marker.dart';

class MarkerBuilder {
  const MarkerBuilder(this.context);

  final BuildContext context;

  Future<Marker> call(Cluster<StationClusterItem> cluster) async {
    final markerComponent = StationMarker(
      color: cluster.items.first.status.color(context),
      count: cluster.items.length,
    );

    return Marker(
      markerId: MarkerId(cluster.getId()),
      position: cluster.location,
      icon: await markerComponent.buildBitmapDescriptor(),
    );
  }
}
