import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'distance_to_station.dart';
import 'station_details_coordinates.dart';

class StationLocationSection extends StatelessWidget {
  const StationLocationSection({
    super.key,
    required this.distance,
    required this.position,
  });

  final double? distance;
  final LatLng position;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StationDetailsCoordinated(coordinates: position),
        if (distance != null) DistanceToStation(distance: distance!),
      ],
    );
  }
}
