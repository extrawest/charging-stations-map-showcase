import 'package:flutter/material.dart';
import 'package:maps_app/features/wallet/models/wallet_history_model.dart';

import 'wallet_history_tile.dart';

class WalletHistoryList extends StatelessWidget {
  const WalletHistoryList({
    super.key,
    required this.items,
  });
  final List<WalletHistoryModel> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'History',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            ...items.map(
              (item) => WalletHistoryTile(
                walletHistoryModel: item,
              ),
            ),
          ]
              .map(
                (child) => Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: child,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
