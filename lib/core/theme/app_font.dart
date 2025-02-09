import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// this is the file that conatins fonts used in the app
class AppFonts {
  /// Barlow
  static TextStyle barlow({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.barlow(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
    );
  }

  /// Barlow Condensed
  static TextStyle barlowCondensed({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.barlowCondensed(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
    );
  }
}
