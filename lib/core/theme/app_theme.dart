import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_colors.dart';
import 'app_text_theme.dart';
import 'common_style.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppColors.black, // or AppColors.darkBackground
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.black,
      secondary: AppColors.black,
      onSecondary: AppColors.white40,
      error: Colors.red,
      onError: AppColors.black,
      surface: AppColors.black ,
      onSurface: AppColors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: GoogleFonts.roboto(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      )
    ),
    textTheme: AppTextTheme.darkTextTheme,
    inputDecorationTheme: CommonStyle.dark,
  );

}