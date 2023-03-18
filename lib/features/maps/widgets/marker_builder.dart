import 'package:flutter/material.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../extensions/station_status_list_color.dart';
import '../models/station_cluster_item.dart';
import '../models/station_model.dart';
import '../models/station_status.dart';
import 'station_marker.dart';

class MarkerBuilder {
  MarkerBuilder({
    required this.onOpenDetails,
    required this.onZoom,
  });

  final Function(LatLng) onZoom;
  final Function(StationModel, double?) onOpenDetails;

  final Map<StationStatus, Map<int, BitmapDescriptor>> _statusToDescriptor = {};

  Future<Marker> call(Cluster<StationClusterItem> cluster) async {
    return Marker(
        markerId: MarkerId(cluster.getId()),
        position: cluster.location,
        icon: await _descriptorForStatus(
          cluster.items.map((item) => item.status).status,
          cluster.count,
        ),
        onTap: () {
          if (cluster.count > 1) {
            onZoom(cluster.location);
          } else {
            onOpenDetails(
              cluster.items.first.station,
              cluster.items.first.distance,
            );
          }
        });
  }

  Future<BitmapDescriptor> _descriptorForStatus(
    StationStatus status,
    int count,
  ) async {
    final cachedDescriptor = _statusToDescriptor[status]?[count];
    if (cachedDescriptor != null) {
      return cachedDescriptor;
    }
    final markerComponent = StationMarker(
      color: status.color,
      count: count,
    );

    final descriptor = await markerComponent.buildBitmapDescriptor();
    _statusToDescriptor[status]?[count] = descriptor;
    return descriptor;
  }
}
