import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';
import '../models/connector_model.dart';
import '../models/connector_status.dart';
import '../models/station_model.dart';
import 'connector_tile.dart';
import 'distance_to_station.dart';
import 'empty_image.dart';
import 'station_details_coordinates.dart';
import 'station_details_header.dart';

class StationDetailsBottomSheet extends StatelessWidget {
  const StationDetailsBottomSheet({
    super.key,
    required this.station,
    required this.distance,
  });

  final StationModel station;
  final double? distance;

  static Future<void> show(
    BuildContext context, {
    required StationModel station,
    required double? distance,
  }) async {
    await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (_) => Wrap(
        children: [
          StationDetailsBottomSheet(
            station: station,
            distance: distance,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const _Bar(),
          const SizedBox(height: 16),
          StationDetailsHeader(
            name: station.chargePointId,
            status: station.status,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StationDetailsCoordinated(coordinates: station.position),
              if (distance != null) DistanceToStation(distance: distance!),
            ],
          ),
          const SizedBox(height: 25),
          const EmptyImage(),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              LocaleKeys.station_detals_connectors.tr(),
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          ..._mockConnectors.map(
            (connectorModel) => Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ConnectorTile(connectorModel: connectorModel),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 135,
      decoration: BoxDecoration(
        color: Theme.of(context).shadowColor,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}

const _mockConnectors = [
  ConnectorModel(
    name: 'Type 2(AC)',
    price: 3.00,
    capacity: 22,
    status: ConnectorStatus.available,
  ),
  ConnectorModel(
    name: 'CHAdeMO',
    price: 5.00,
    capacity: 200,
    status: ConnectorStatus.inUse,
  ),
  ConnectorModel(
    name: 'Type 2(AC)',
    price: 3.00,
    capacity: 22,
    status: ConnectorStatus.inUse,
  )
];
