import 'package:flutter/material.dart';
import '../../../common/extensions/build_context_x.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: context.color.background,
        onPressed: onPressed,
        child: Opacity(
          opacity: isActive ? 1 : 0.6,
          child: Assets.images.bottomNavBar.lightning.svg(),
        ),
      ),
    );
  }
}
