import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../common/router.dart';

import '../../../generated/assets.gen.dart';
import '../../../generated/locale_keys.g.dart';
import '../../favourites/favourites.dart';
import '../../maps/maps.dart';
import '../../profile/profile.dart';
import '../../wallet/wallet.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/made_by_extrawest_tile.dart';
import '../widgets/navigation_floating_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    super.key,
    required this.currentPage,
    required this.pages,
  });

  final String currentPage;
  final List<String> pages;

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen> {
  int get currentIndex {
    return widget.pages.indexOf('/${widget.currentPage}');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) => Stack(
        alignment: Alignment.center,
        children: [
          Scaffold(
            extendBody: true,
            body: IndexedStack(
              index: currentIndex,
              children: const [
                MapsScreen(),
                FavouritesScreen(),
                SizedBox(),
                WalletScreen(),
                ProfileScreen(),
              ],
            ),
            bottomNavigationBar: AppBottomNavigationBar(
              onIndexChanged: (index) {
                if (index != 2) {
                  context.go('/dashboard${widget.pages[index]}');
                }
              },
              selectedItemIndex: currentIndex,
              items: _items(walletBalance: state.model?.balance),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: NavigationFloatingButton(
              onPressed: () {
                context.push(chargingRoute);
              },
            ),
          ),
          const Positioned(
            bottom: 10,
            child: MadeByExtrawestTile(),
          ),
        ],
      ),
    );
  }

  List<AppBottomNavigationBarItem> _items({
    required double? walletBalance,
  }) {
    return [
      AppBottomNavigationBarItem(
        icon: Assets.images.bottomNavBar.map.svg(),
        label: LocaleKeys.bottom_nav_bar_map.tr(),
      ),
      AppBottomNavigationBarItem(
        icon: Assets.images.bottomNavBar.favourites.svg(),
        label: LocaleKeys.bottom_nav_bar_favourites.tr(),
      ),
      const AppBottomNavigationBarItem.empty(),
      AppBottomNavigationBarItem(
        icon: Assets.images.bottomNavBar.wallet.svg(),
        label: '\$${(walletBalance ?? 0).toStringAsFixed(2)}',
      ),
      AppBottomNavigationBarItem(
        icon: Assets.images.bottomNavBar.profile.svg(),
        label: LocaleKeys.bottom_nav_bar_account.tr(),
      ),
    ];
  }
}
