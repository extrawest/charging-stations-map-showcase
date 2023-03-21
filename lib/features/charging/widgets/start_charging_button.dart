import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';

class StartChargingButton extends StatelessWidget {
  const StartChargingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).shadowColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'Start charging',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.background,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
