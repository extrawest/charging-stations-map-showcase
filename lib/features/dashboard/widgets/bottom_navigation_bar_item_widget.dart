import 'package:flutter/material.dart' hide BottomNavigationBarItem;

import 'bottom_navigation_bar.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  const BottomNavigationBarItemWidget({
    super.key,
    required this.isSelected,
    required this.onPressed,
    required this.item,
  });

  final bool isSelected;
  final VoidCallback onPressed;
  final BottomNavigationBarItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Opacity(
        opacity: isSelected ? 1 : 0.6,
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              item.icon,
              Text(item.label, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
