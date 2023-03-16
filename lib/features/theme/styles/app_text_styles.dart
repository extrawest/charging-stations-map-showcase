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

  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Color(0xff222733),
  );

  static const bodyTextMedium = TextStyle(
    fontSize: 12,
    color: Color(0xff000000),
  );
}
