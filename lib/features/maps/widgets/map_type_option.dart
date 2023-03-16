import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/generated/assets.gen.dart';

class MapTypeOption extends StatelessWidget {
  MapTypeOption.normal({
    super.key,
    required this.isSelected,
    required this.onPressed,
  })  : icon = Assets.images.mapTypes.normal.image(),
        title = 'Normal';

  MapTypeOption.satellite({
    super.key,
    required this.isSelected,
    required this.onPressed,
  })  : icon = Assets.images.mapTypes.satellite.image(),
        title = 'Satellite';

  final Widget icon;
  final bool isSelected;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: isSelected ? AppColors.blue : Colors.transparent,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: icon,
            ),
          ),
          const SizedBox(height: 11),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
