import 'package:flutter/material.dart';
import 'package:maps_app/generated/assets.gen.dart';

class MapActionButton extends StatelessWidget {
  MapActionButton.location({
    super.key,
    required this.onPressed,
  }) : icon = Assets.images.mapActions.location.image();

  MapActionButton.settings({
    super.key,
    required this.onPressed,
  }) : icon = Assets.images.mapActions.settings.svg();

  final Widget icon;
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
        child: icon,
      ),
    );
  }
}
