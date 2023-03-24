import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../features/maps/maps.dart';
import '../../features/theme/styles/app_colors.dart';
import '../../generated/locale_keys.g.dart';

class StationHeader extends StatelessWidget {
  StationHeader.details(
    BuildContext context, {
    required this.name,
    required StationStatus status,
  })  : barColor = status.color,
        subcontent = Text(
          LocaleKeys.station_detals_status.tr(args: [status.displayName]),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textGrey),
        );

  StationHeader.favourite(
    BuildContext context, {
    required this.name,
    required String chargePointId,
  })  : barColor = AppColors.green,
        subcontent = Text(
          chargePointId,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textGrey),
        );

  final String name;
  final Widget subcontent;
  final Color barColor;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 4,
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
          ),
          const SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const SizedBox(height: 2),
              subcontent,
            ],
          ),
        ],
      ),
    );
  }
}
