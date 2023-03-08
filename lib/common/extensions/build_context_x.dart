import 'package:flutter/material.dart';
import 'package:flutter_bloc_project_starter/theme/extensions/color_theme.dart';

extension BuildContextX on BuildContext {
  ColorTheme get color => Theme.of(this).extension<ColorTheme>()!;
}
