import 'package:ecommerce_app/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData englishTheme = ThemeData(
  fontFamily: 'Ubuntu',
  textTheme: TextTheme(
      headlineMedium: GoogleFonts.ubuntu(
          fontWeight: FontWeight.bold, fontSize: 22, color: ColorApp.black),
      headlineLarge: GoogleFonts.ubuntu(
          fontWeight: FontWeight.bold, fontSize: 26, color: ColorApp.black),
      bodyMedium: GoogleFonts.ubuntu(
          height: 2,
          color: ColorApp.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodySmall: GoogleFonts.ubuntu(height: 2, color: ColorApp.grey, fontSize: 14),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(

    primary: ColorApp.primaryColor,
    secondary: ColorApp.secondaryColor,
  ),
);

ThemeData arabicTheme = ThemeData(
  fontFamily: 'Cairo',
  textTheme: TextTheme(
    headlineMedium: GoogleFonts.cairo(
        fontWeight: FontWeight.bold, fontSize: 22, color: ColorApp.black),
    headlineLarge: GoogleFonts.cairo(
        fontWeight: FontWeight.bold, fontSize: 26, color: ColorApp.black),
    bodyMedium: GoogleFonts.cairo(
        height: 2,
        color: ColorApp.grey,
        fontWeight: FontWeight.bold,
        fontSize: 14),
    bodySmall: GoogleFonts.cairo(height: 2, color: ColorApp.grey, fontSize: 14),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(

    primary: ColorApp.primaryColor,
    secondary: ColorApp.secondaryColor,
  ),
);
