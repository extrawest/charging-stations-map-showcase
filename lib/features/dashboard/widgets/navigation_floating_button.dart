import 'package:flutter/material.dart';
import '../../../generated/assets.gen.dart';

class NavigationFloatingButton extends StatelessWidget {
  const NavigationFloatingButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  static const double size = 68;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Opacity(
          opacity: 0.6,
          child: Assets.images.bottomNavBar.lightning.svg(),
        ),
      ),
    );
  }
}
