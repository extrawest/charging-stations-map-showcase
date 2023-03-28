import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';
import '../../../features/theme/styles/app_colors.dart';
import '../../../generated/assets.gen.dart';
import '../../maps/maps.dart';

class ConnectorTile extends StatelessWidget {
  const ConnectorTile({
    super.key,
    required this.connectorModel,
  });

  final ConnectorModel connectorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Assets.images.stationDetails.connector.svg(),
                  const SizedBox(width: 8),
                  Text(
                    connectorModel.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Text(
                LocaleKeys.station_detals_price_per_kwh.tr(
                  args: [connectorModel.price.toStringAsFixed(2)],
                ),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                LocaleKeys.station_detals_kWh.tr(
                  args: [connectorModel.capacity.toString()],
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGrey),
              ),
              const SizedBox(height: 7),
              _ActionButton(status: connectorModel.status),
            ],
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.status,
  });

  final ConnectorStatus status;

  Color get color {
    switch (status) {
      case ConnectorStatus.available:
        return AppColors.green;
      case ConnectorStatus.inUse:
        return AppColors.lightGrey;
    }
  }

  Color get textColor {
    switch (status) {
      case ConnectorStatus.available:
        return AppColors.background;
      case ConnectorStatus.inUse:
        return AppColors.textGrey;
    }
  }

  String get text {
    switch (status) {
      case ConnectorStatus.available:
        return LocaleKeys.station_detals_charge.tr();
      case ConnectorStatus.inUse:
        return LocaleKeys.station_detals_in_use.tr();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11,
          color: textColor,
        ),
      ),
    );
  }
}
