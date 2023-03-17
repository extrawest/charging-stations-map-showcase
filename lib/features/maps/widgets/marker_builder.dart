import 'package:flutter/material.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/features/maps/widgets/station_details_bottom_details.dart';
import '../extensions/station_status_list_color.dart';
import '../models/station_cluster_item.dart';
import '../models/station_status.dart';
import 'station_marker.dart';

class MarkerBuilder {
  MarkerBuilder(this.context);

  final BuildContext context;
  final Map<StationStatus, BitmapDescriptor> _statusToDescriptor = {};

  Future<Marker> call(Cluster<StationClusterItem> cluster) async {
    return Marker(
      markerId: MarkerId(cluster.getId()),
      position: cluster.location,
      icon: await _descriptorForStatus(
        cluster.items.map((item) => item.status).status,
      ),
      onTap: () => StationDetailsBottomSheet.show(
        context,
        station: cluster.items.first.station,
      ),
    );
  }

  Future<BitmapDescriptor> _descriptorForStatus(StationStatus status) async {
    final cachedDescriptor = _statusToDescriptor[status];
    if (cachedDescriptor != null) {
      return cachedDescriptor;
    }
    final markerComponent = StationMarker(
      color: status.color,
      count: 1,
    );

    final descriptor = await markerComponent.buildBitmapDescriptor();
    _statusToDescriptor[status] = descriptor;
    return descriptor;
  }
}
