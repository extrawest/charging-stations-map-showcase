import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/features/wallet/models/wallet_history_model.dart';

class WalletHistoryTile extends StatelessWidget {
  const WalletHistoryTile({
    super.key,
    required this.walletHistoryModel,
  });

  final WalletHistoryModel walletHistoryModel;

  @override
  Widget build(BuildContext context) {
    final duration =
        '${walletHistoryModel.duration.inHours}h ${walletHistoryModel.duration.inMinutes.remainder(60)}m';

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Station name',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                DateFormat('yyyy MMMM dd, hh:mm', 'en').format(
                  walletHistoryModel.datetimeStarted,
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGrey),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${walletHistoryModel.consumedKwh.toStringAsFixed(2)} kWh | $duration',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGrey),
              ),
              Text(
                '-\$${walletHistoryModel.bill.toStringAsFixed(2)}',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
