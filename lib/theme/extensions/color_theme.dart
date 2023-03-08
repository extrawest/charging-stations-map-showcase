import 'package:flutter/material.dart';

class ColorTheme extends ThemeExtension<ColorTheme> {
  final Color red;
  final Color green;
  final Color black;
  final Color yellow;
  final Color background;
  final Color lightGrey;
  final Color grey;

  ColorTheme({
    required this.red,
    required this.green,
    required this.black,
    required this.yellow,
    required this.background,
    required this.lightGrey,
    required this.grey,
  });

  @override
  ThemeExtension<ColorTheme> copyWith({
    Color? red,
    Color? green,
    Color? black,
    Color? yellow,
    Color? background,
    Color? lightGrey,
    Color? grey,
  }) {
    return ColorTheme(
      green: green ?? this.green,
      black: black ?? this.black,
      yellow: yellow ?? this.yellow,
      red: red ?? this.red,
      lightGrey: lightGrey ?? this.lightGrey,
      background: background ?? this.background,
      grey: grey ?? this.grey,
    );
  }

  @override
  ThemeExtension<ColorTheme> lerp(
      covariant ThemeExtension<ColorTheme>? other, double t) {
    if (other is! ColorTheme) {
      return this;
    }

    return ColorTheme(
      red: Color.lerp(red, other.red, t)!,
      green: Color.lerp(green, other.green, t)!,
      black: Color.lerp(black, other.black, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      background: Color.lerp(background, other.background, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
    );
  }

  const ColorTheme.light()
      : red = const Color(0xffEB5757),
        green = const Color(0xff00B929),
        black = const Color(0xff222733),
        yellow = const Color(0xffF2C94C),
        background = const Color(0xffFFFFFF),
        lightGrey = const Color(0xffEAEDF0),
        grey = const Color(0xff597393);
}
