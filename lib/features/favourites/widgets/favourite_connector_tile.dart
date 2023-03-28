import 'package:flutter/material.dart';
import '../../../generated/assets.gen.dart';
import '../../maps/maps.dart';
import '../../theme/styles/app_colors.dart';

class FavouriteConnectorTile extends StatelessWidget {
  const FavouriteConnectorTile({
    super.key,
    required this.connector,
  });

  final ConnectorModel connector;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Assets.images.stationDetails.connector.svg(),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$ ${connector.price.toStringAsFixed(2)}',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGrey),
              ),
              const SizedBox(height: 1),
              Text(
                '${connector.capacity} kWh',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGrey),
              )
            ],
          )
        ],
      ),
    );
  }
}
