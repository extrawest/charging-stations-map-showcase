import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar_item_widget.dart';
import 'made_by_extrawest_tile.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.items,
    required this.selectedItemIndex,
    required this.onIndexChanged,
  });

  final List<AppBottomNavigationBarItem> items;
  final int selectedItemIndex;
  final ValueChanged<int> onIndexChanged;

  static const double height = 115;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(textTheme: Theme.of(context).textTheme),
      child: BottomAppBar(
        elevation: 0,
        height: height,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}

class AppBottomNavigationBarItem {
  final Widget icon;
  final String label;

  const AppBottomNavigationBarItem({
    required this.icon,
    required this.label,
  });

  const AppBottomNavigationBarItem.empty()
      : icon = const SizedBox(),
        label = '';
}
