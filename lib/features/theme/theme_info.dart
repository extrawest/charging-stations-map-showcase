import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maps_app/features/theme/styles/app_text_styles.dart';
import 'styles/app_colors.dart';

class TextStyles {
  static const notifierTextLabel = TextStyle(
    fontSize: 26,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
  );
}

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.black,
  primarySwatch: Colors.deepPurple,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade200,
    background: AppColors.blackShade,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
  ),
  dividerColor: Colors.black12,
  fontFamily: GoogleFonts.roboto().fontFamily,
  textTheme: const TextTheme(
    displayMedium: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
    bodySmall: TextStyle(fontSize: 14.0),
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.background,
  shadowColor: AppColors.grey,
  dividerColor: AppColors.deepGrey,
  colorScheme: const ColorScheme.light(
    primary: AppColors.background,
    background: AppColors.background,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.background,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(100)),
    ),
  ),
  fontFamily: GoogleFonts.roboto().fontFamily,
  textTheme: const TextTheme(
    bodySmall: AppTextStyles.bodyTextSmall,
    bodyMedium: AppTextStyles.bodyTextMedium,
    bodyLarge: AppTextStyles.bodyTextLarge,
    titleSmall: AppTextStyles.titleSmall,
    titleMedium: AppTextStyles.titleMedium,
    titleLarge: AppTextStyles.titleLarge,
  ),
);
