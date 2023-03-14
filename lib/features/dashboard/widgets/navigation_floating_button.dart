import 'package:flutter/material.dart';
import '../../../generated/assets.gen.dart';

class NavigationFloatingButton extends StatelessWidget {
  const NavigationFloatingButton({
    super.key,
    required this.isActive,
    required this.onPressed,
  });

  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 68,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Opacity(
          opacity: isActive ? 1 : 0.6,
          child: Assets.images.bottomNavBar.lightning.svg(),
        ),
      ),
    );
  }
}
