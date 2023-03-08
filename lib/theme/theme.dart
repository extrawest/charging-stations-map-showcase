import 'package:flutter/material.dart';
import 'extensions/color_theme.dart';

final theme = ThemeData(
  brightness: Brightness.light,
  extensions: const [
    ColorTheme.light(),
  ],
);
