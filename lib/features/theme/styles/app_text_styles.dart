import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  static const notifierTextLabel = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );

  static const bodyTextSmall = TextStyle(
    fontSize: 10,
    color: AppColors.grey,
  );
}
