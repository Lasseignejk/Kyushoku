import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

const lightAppColors = AppColors(
  riceWhite: Color(0xFFFFF9E3),
  soupYellow: Color(0xFFFFD54F),
  veggieGreen: Color(0xFFA8E6CF),
  meatRed: Color(0xFFFF6F61),
  background: Color(0xFFFFF9E3),
  text: Color(0xFF333333),
);

const darkAppColors = AppColors(
  riceWhite: Color(0xFFCCC5B9),
  soupYellow: Color(0xFFE0C766),
  veggieGreen: Color(0xFF4CAF50),
  meatRed: Color(0xFFEF9A9A),
  background: Color(0xFF121212),
  text: Color(0xFFE0E0E0),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: lightAppColors.background,
  appBarTheme: AppBarTheme(
    backgroundColor: lightAppColors.background,
    foregroundColor: lightAppColors.text,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: lightAppColors.text,
    displayColor: lightAppColors.text,
  ),
  extensions: <ThemeExtension<dynamic>>[
    lightAppColors,
  ],
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkAppColors.background,
  appBarTheme: AppBarTheme(
    backgroundColor: darkAppColors.background,
    foregroundColor: Colors.white,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: lightAppColors.text,
    displayColor: lightAppColors.text,
  ),
  extensions: <ThemeExtension<dynamic>>[
    darkAppColors,
  ],
);
