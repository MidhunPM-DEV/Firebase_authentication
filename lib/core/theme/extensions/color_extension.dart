import 'package:flutter/material.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  final Color primary;
  final Color secondary;
  final Color buttonClr;
  final Color white;
  final Color grey;
  final Color black;

  ColorExtension({
    required this.primary,
    required this.secondary,
    required this.buttonClr,
    required this.white,
    required this.grey,
    required this.black,
  });

  @override

  /// Creates a new instance of [ColorExtension] with properties from this
  /// and overrides from the arguments.
  ///
  /// The properties of the new instance are:
  ///
  /// * [primary] if not null, otherwise this [primary]
  /// * [secondary] if not null, otherwise this [secondary]
  /// * [buttonClr] if not null, otherwise this [buttonClr]
  /// * [white] if not null, otherwise this [white]
  /// * [grey] if not null, otherwise this [grey]
  /// * [black] if not null, otherwise this [black]
  ///
  /// This is a way to create a new [ColorExtension] which is a copy of
  /// this but with some properties changed. This is a good way to
  /// create a new theme that is similar to the current one but with
  /// some changes.
  ThemeExtension<ColorExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? buttonClr,
    Color? white,
    Color? grey,
    Color? black,
  }) {
    return ColorExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      buttonClr: buttonClr ?? this.buttonClr,
      white: white ?? this.white,
      grey: grey ?? this.grey,
      black: black ?? this.black,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    if (other is! ColorExtension) {
      return this;
    }
    return ColorExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      buttonClr: Color.lerp(buttonClr, other.buttonClr, t)!,
      white: Color.lerp(white, other.white, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      black: Color.lerp(black, other.black, t)!,
    );
  }
}
