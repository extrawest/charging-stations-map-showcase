import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';
import '../../theme/styles/app_colors.dart';

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
        LocaleKeys.charging_start_charging.tr(),
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.background,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
