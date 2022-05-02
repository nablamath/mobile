// Import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nablamath/constants/constants.dart';

// Light theme data
ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: colorPrimary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme.copyWith(backgroundColor: colorPrimary),
    iconTheme: const IconThemeData(color: colorPrimaryDark),
    textTheme: GoogleFonts.interTextTheme().apply(bodyColor: colorPrimaryDark),
    colorScheme: const ColorScheme.light(
      primary: colorPrimary,
      error: colorError,
    ),
  );
}

// Dark theme data
ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: colorPrimary,
    scaffoldBackgroundColor: colorPrimaryDark,
    appBarTheme: appBarTheme.copyWith(backgroundColor: colorPrimary),
    iconTheme: const IconThemeData(color: colorPrimaryLight),
    textTheme: GoogleFonts.interTextTheme().apply(bodyColor: colorPrimaryLight),
    colorScheme: const ColorScheme.dark(
      primary: colorPrimary,
      error: colorError,
    ),
  );
}

// App bar theme
const appBarTheme = AppBarTheme(
  centerTitle: false,
  elevation: 0,
);
