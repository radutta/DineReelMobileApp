import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
      primaryColor: AppColors.primaryGradientDeep,
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primaryGradientDeep),
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: TextTheme(
        displaySmall: TextStyle(
            fontSize: 14.sp,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w400,
            color: AppColors.black),
        bodySmall: TextStyle(
            fontSize: 12.sp, fontFamily: GoogleFonts.poppins().fontFamily),
        bodyMedium: TextStyle(
            fontSize: 16.sp,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
            fontSize: 20.sp,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
          fontSize: 28.sp,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontWeight: FontWeight.w600,
        ),
      ));
}
