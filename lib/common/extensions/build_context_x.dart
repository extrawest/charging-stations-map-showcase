import 'package:flutter/material.dart';
import 'package:maps_app/theme/extensions/color_theme.dart';

extension BuildContextX on BuildContext {
  ColorTheme get color => Theme.of(this).extension<ColorTheme>()!;
}
