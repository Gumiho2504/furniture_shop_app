import 'package:flutter/material.dart';
import 'package:furniture_shop_app/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Define colors
const Color primary = Color(0xFF007BFF);
const Color secondary = Color(0xFF666666);
const Color thridColor = Color(0xFFECECEC);
const Color background = Color(0xFCFFFFFF);
const Color textPrimary = Color(0xFF333333);
const Color textSecondary = Color(0xFFB0B0B0);

// Define text styles using Google Fonts
TextStyle headline1 = GoogleFonts.montserrat(
  fontSize: 32.h,
  fontWeight: FontWeight.w700,
  color: textPrimary,
); // H1

TextStyle headline2 = GoogleFonts.montserrat(
  fontSize: 28.h,
  fontWeight: FontWeight.bold,
  color: textPrimary,
); // H2

TextStyle headline3 = GoogleFonts.montserrat(
  fontSize: 24.h,
  fontWeight: FontWeight.w600,
  color: textPrimary,
);

TextStyle headline5 = GoogleFonts.montserrat(
  fontSize: 14.h,
  fontWeight: FontWeight.w600,
  color: textPrimary,
);

TextStyle headline4 = GoogleFonts.montserrat(
  fontSize: 18.h,
  fontWeight: FontWeight.w600,
  color: textPrimary,
); // H3

TextStyle bodyText1 = GoogleFonts.montserrat(
  fontSize: 16.h,
  color: Color(0xFF000000), // Body text
);

TextStyle bodyText2 = GoogleFonts.montserrat(
  fontSize: 14.h,
  color: secondary, // Secondary body text
);

TextStyle caption = GoogleFonts.montserrat(
  fontSize: 12.h,
  color: textSecondary,
);
