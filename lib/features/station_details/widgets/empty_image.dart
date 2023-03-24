import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/generated/assets.gen.dart';

class EmptyImage extends StatelessWidget {
  const EmptyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 58),
      decoration: BoxDecoration(
        color: AppColors.blueGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Assets.images.stationDetails.image.svg(),
    );
  }
}
