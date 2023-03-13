import 'package:flutter/material.dart'
    hide BottomNavigationBar, BottomNavigationBarItem;
import 'package:maps_app/generated/assets.gen.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_navigation_bar.dart';
import '../widgets/navigation_floating_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    super.key,
    required this.child,
    required this.pages,
  });

  final Widget child;
  final List<String> pages;

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onIndexChanged: (index) {
          setState(() => _index = index);
          context.push(widget.pages[index]);
        },
        selectedItemIndex: _index,
        items: _items,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: NavigationFloatingButton(
        isActive: _index == 2,
        onPressed: () => setState(() {
          _index = 2;
        }),
      ),
    );
  }

  List<BottomNavigationBarItem> get _items => [
        BottomNavigationBarItem(
          icon: Assets.images.bottomNavBar.map.svg(),
          label: 'MAP',
        ),
        BottomNavigationBarItem(
          icon: Assets.images.bottomNavBar.favourites.svg(),
          label: 'FAVOURITES',
        ),
        const BottomNavigationBarItem.empty(),
        BottomNavigationBarItem(
          icon: Assets.images.bottomNavBar.wallet.svg(),
          label: '\$100.23',
        ),
        BottomNavigationBarItem(
          icon: Assets.images.bottomNavBar.profile.svg(),
          label: 'ACCOUNT',
        ),
      ];
}
