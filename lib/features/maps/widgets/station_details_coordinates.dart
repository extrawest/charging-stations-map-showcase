import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

class StationDetailsCoordinated extends StatelessWidget {
  const StationDetailsCoordinated({
    super.key,
    required this.coordinates,
  });

  final LatLng coordinates;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.station_detals_coordinates.tr(),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textGrey),
        ),
        const SizedBox(height: 2),
        Text(
          '${coordinates.longitude}, ${coordinates.latitude}',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.textGrey),
        ),
      ],
    );
  }
}
