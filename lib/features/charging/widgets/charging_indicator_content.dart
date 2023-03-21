import 'package:flutter/material.dart';

import '../../../generated/assets.gen.dart';
import '../../theme/styles/app_colors.dart';

class ChargingIndicatorContent extends StatelessWidget {
  const ChargingIndicatorContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Assets.images.charging.charge.svg(),
        const SizedBox(height: 2),
        Text(
          '24%',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.textGrey,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          '6.07 kWh',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Delivered',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textGrey),
        ),
      ],
    );
  }
}
