import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/generated/assets.gen.dart';

class MapActionButton extends StatelessWidget {
  MapActionButton.settings({
    super.key,
    required this.onPressed,
  })  : icon = Assets.images.mapActions.settings.svg(),
        isLoading = false;

  MapActionButton.location({
    super.key,
    required this.onPressed,
    required this.isLoading,
  }) : icon = Assets.images.mapActions.location.image();

  final Widget icon;
  final bool isLoading;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        child: SizedBox(
          height: 28,
          width: 28,
          child: isLoading
              ? const CircularProgressIndicator(color: AppColors.grey)
              : icon,
        ),
      ),
    );
  }
}
