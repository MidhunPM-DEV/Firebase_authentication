import 'package:firebase_authentication/core/theme/color_palette.dart';
import 'package:firebase_authentication/core/theme/extensions/color_extension.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: ColorPalette.navyBlue400,
    extensions: [
      ColorExtension(
        primary: ColorPalette.navyBlue400,
        secondary: ColorPalette.floralWhite,
        buttonClr: ColorPalette.navyBlue200,
        white: ColorPalette.white,
        grey: ColorPalette.grey,
        black: ColorPalette.black,
      ),
    ]);
