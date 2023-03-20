import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/features/wallet/widgets/wallet_history_list.dart';

import '../bloc/wallet_cubit.dart';
import '../bloc/wallet_state.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WalletCubit>(
      create: (context) => WalletCubit(
        walletRepository: context.read(),
      ),
      child: const _WalletPage(),
    );
  }
}

class _WalletPage extends StatefulWidget {
  const _WalletPage();

  @override
  State<_WalletPage> createState() => __WalletPageState();
}

class __WalletPageState extends State<_WalletPage> {
  @override
  void initState() {
    super.initState();
    context.read<WalletCubit>().loadWalletModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDDEAF3),
      body: BlocBuilder<WalletCubit, WalletState>(
        builder: (context, state) => CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 80,
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: Color(0xffDDEAF3),
              title: Text(
                'Wallet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            'Balance',
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
