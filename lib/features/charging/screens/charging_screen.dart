import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maps_app/features/charging/widgets/charging_indicator_content.dart';
import 'package:maps_app/features/charging/widgets/charhing_info_item.dart';
import 'package:maps_app/features/charging/widgets/start_charging_button.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/generated/assets.gen.dart';

import '../widgets/charging_indicator.dart';
import '../widgets/charging_info_content.dart';
import '../widgets/charrging_station_tile.dart';

class ChargingScreen extends StatelessWidget {
  const ChargingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: context.pop,
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            child: Assets.images.appBar.back.svg(height: 24, width: 24),
          ),
        ),
        title: Text(
          'Charging session',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.black.withOpacity(0.15),
            )
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 24),
            ChargingIndicator(child: ChargingIndicatorContent()),
            SizedBox(height: 15),
            ChargingInfoContent(),
          ],
        ),
      ),
    );
  }
}
