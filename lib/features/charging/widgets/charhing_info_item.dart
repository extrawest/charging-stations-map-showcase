import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';

class ChargingInfoItem extends StatelessWidget {
  const ChargingInfoItem({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.textGrey),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.textGrey,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
