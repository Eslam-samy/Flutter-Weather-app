import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff313260);
const seconderyColor = Color(0xff2F373E);
const secondaryBackground = Color(0xffF3FAF9);
const textColor = Color(0xff08322C);
const orangeColor = Color(0xffFF8A00);
const yellowColor = Color(0xffFFC700);
const grayColor = Color(0xffC3CBD2);
const hintColor = Color(0xff637875);
const disabledColor = Color.fromARGB(19, 141, 189, 202);
const linearGradient = LinearGradient(
  colors: [Color.fromARGB(234, 46, 51, 90), Color.fromARGB(234, 28, 27, 51)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const strokeColor = Color.fromARGB(255, 113, 183, 202);

final appTheme = ThemeData(
  primaryColor: primaryColor,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      backgroundColor: secondaryBackground),
  scaffoldBackgroundColor: primaryColor,
  textTheme: TextTheme(
      headlineLarge: GoogleFonts.aBeeZee(
          color: textColor, fontSize: 35, fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.aBeeZee(color: textColor, fontSize: 25),
      bodyMedium: GoogleFonts.aBeeZee(color: textColor, fontSize: 16),
      displayMedium: GoogleFonts.aBeeZee(
          color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
      bodySmall: GoogleFonts.aBeeZee(color: textColor, fontSize: 14)),
);
final appThemeAr = ThemeData(
  primaryColor: primaryColor,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      backgroundColor: secondaryBackground),
  scaffoldBackgroundColor: primaryColor,
  textTheme: TextTheme(
      headlineLarge: GoogleFonts.cairo(
          color: textColor, fontSize: 35, fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.openSans(color: textColor, fontSize: 25),
      bodyMedium: GoogleFonts.cairo(color: textColor, fontSize: 16),
      displayMedium: GoogleFonts.cairo(
          color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
      bodySmall: GoogleFonts.cairo(color: textColor, fontSize: 14)),
);
