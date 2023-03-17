import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

import '../../theme/styles/app_colors.dart';
import '../models/station_status.dart';

class StationDetailsHeader extends StatelessWidget {
  const StationDetailsHeader({
    required this.name,
    required this.status,
  });

  final String name;
  final StationStatus status;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 4,
            decoration: BoxDecoration(
              color: status.color,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
          ),
          const SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 2),
              Text(
                LocaleKeys.station_detals_status.tr(args: [status.displayName]),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGrey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
