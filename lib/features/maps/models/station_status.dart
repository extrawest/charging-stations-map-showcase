import 'package:flutter/material.dart';
import 'package:maps_app/features/theme/styles/app_colors.dart';

import '../../../generated/assets.gen.dart';

enum StationStatus {
  available,
  busy,
  offline,
  empty;

  AssetGenImage get icon {
    switch (this) {
      case StationStatus.available:
        return Assets.images.marker.markerGreen;
      case StationStatus.busy:
        return Assets.images.marker.markerYellow;
      case StationStatus.offline:
        return Assets.images.marker.markerRed;
      case StationStatus.empty:
        return Assets.images.marker.markerBlack;
    }
  }

  Color get color {
    switch (this) {
      case StationStatus.available:
        return AppColors.green;
      case StationStatus.busy:
        return AppColors.yellow;
      case StationStatus.offline:
        return AppColors.red;
      case StationStatus.empty:
        return AppColors.black;
    }
  }
}
