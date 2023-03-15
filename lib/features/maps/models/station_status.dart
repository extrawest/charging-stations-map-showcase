import 'package:flutter/material.dart';
import '../../theme/styles/app_colors.dart';

enum StationStatus {
  available,
  busy,
  offline,
  empty;

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
