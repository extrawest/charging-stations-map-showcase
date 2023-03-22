import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:maps_app/common/router.dart';
import 'package:maps_app/features/wallet/bloc/wallet_cubit.dart';
import 'package:maps_app/features/wallet/bloc/wallet_state.dart';

import '../../../generated/assets.gen.dart';
import '../../../generated/locale_keys.g.dart';
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
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) => Scaffold(
        extendBody: true,
        body: widget.child,
        bottomNavigationBar: AppBottomNavigationBar(
          onIndexChanged: (index) {
            if (index != 2) {
              setState(() => _index = index);
              context.push(widget.pages[index]);
            }
          },
          selectedItemIndex: _index,
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
