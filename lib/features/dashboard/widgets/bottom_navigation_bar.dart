import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import '../../../common/extensions/build_context_x.dart';
import 'bottom_navigation_bar_item_widget.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
    required this.items,
    required this.selectedItemIndex,
    required this.onIndexChanged,
  });

  final List<BottomNavigationBarItem> items;
  final int selectedItemIndex;
  final ValueChanged<int> onIndexChanged;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        height: 80,
        color: context.color.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items
              .mapIndexed(
                (index, item) => BottomNavigationBarItemWidget(
                  isSelected: index == selectedItemIndex,
                  onPressed: () => onIndexChanged(index),
                  item: item,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class BottomNavigationBarItem {
  final Widget icon;
  final String label;

  const BottomNavigationBarItem({
    required this.icon,
    required this.label,
  });

  const BottomNavigationBarItem.empty()
      : icon = const SizedBox(),
        label = '';
}
