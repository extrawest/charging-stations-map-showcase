import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

import 'charging_cost.dart';
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
        children: [
          const ChargingCost(),
          const SizedBox(height: 10),
          const StartChargingButton(),
          const SizedBox(height: 34),
          ChargingInfoItem(
            name: LocaleKeys.charging_starting_time.tr(),
            value: '21/07/21 17:46',
          ),
          const SizedBox(height: 8),
          ChargingInfoItem(
            name: LocaleKeys.charging_speed.tr(),
            value: '50 kWh',
          ),
          const SizedBox(height: 8),
          ChargingInfoItem(
            name: LocaleKeys.charging_amperage.tr(),
            value: '16 A',
          ),
          const SizedBox(height: 8),
          ChargingInfoItem(
            name: LocaleKeys.charging_voltage.tr(),
            value: '150 A',
          ),
          const SizedBox(height: 16),
          const ChargingStationTile(),
        ],
      ),
    );
  }
}
