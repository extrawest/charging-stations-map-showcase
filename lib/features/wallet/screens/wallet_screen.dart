import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

import '../../theme/styles/app_colors.dart';
import '../bloc/wallet_cubit.dart';
import '../bloc/wallet_state.dart';
import '../widgets/wallet_history_list.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDDEAF3),
      body: BlocBuilder<WalletCubit, WalletState>(
        builder: (context, state) => CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 80,
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: const Color(0xffDDEAF3),
              title: Text(
                LocaleKeys.wallet_title.tr(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: BalanceLabelDelagate(),
              pinned: true,
            ),
            SliverPersistentHeader(
              delegate: BalanceDelegate(
                balance: state.model?.balance ?? 0,
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (_, __) => WalletHistoryList(items: state.model?.history ?? []),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BalanceDelegate extends SliverPersistentHeaderDelegate {
  final double balance;

  BalanceDelegate({
    required this.balance,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      alignment: Alignment.center,
      color: const Color(0xffDDEAF3),
      child: Text(
        '\$ ${balance.toStringAsFixed(2)}',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class BalanceLabelDelagate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      alignment: Alignment.center,
      color: const Color(0xffDDEAF3),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            LocaleKeys.wallet_balance.tr(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.grey,
                ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
