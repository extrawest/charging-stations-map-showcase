import 'package:flutter/material.dart';
import 'package:maps_app/features/charging/widgets/charging_cost.dart';

import 'charhing_info_item.dart';
import 'charrging_station_tile.dart';
import 'start_charging_button.dart';

class ChargingInfoContent extends StatelessWidget {
  const ChargingInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          ChargingCost(),
          SizedBox(height: 10),
          StartChargingButton(),
          SizedBox(height: 34),
          ChargingInfoItem(
            name: 'Starting time',
            value: '21/07/21 17:46',
          ),
          SizedBox(height: 8),
          ChargingInfoItem(
            name: 'Charging speed',
            value: '50 kWh',
          ),
          SizedBox(height: 8),
          ChargingInfoItem(
            name: 'Amperage',
            value: '16 A',
          ),
          SizedBox(height: 8),
          ChargingInfoItem(
            name: 'Voltage',
            value: '150 A',
          ),
          SizedBox(height: 16),
          ChargingStationTile(),
        ],
      ),
    );
  }
}
