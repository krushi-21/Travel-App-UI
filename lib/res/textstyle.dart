import 'package:flutter/material.dart';

import 'appcolors.dart';
import 'fonts.dart';

class AppTextStyles {
  AppTextStyles();

  static TextStyle get h1BoldTextstyle => TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.helvetica,
        fontSize: 31,
      );
  static TextStyle get h1RegularTextstyle => TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.helvetica,
        fontSize: 31,
      );
  static TextStyle get h2BoldTextstyle => TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
        fontFamily: AppFonts.helvetica,
        fontSize: 18,
      );
  static TextStyle get h2RegularTextstyle => TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.normal,
        fontFamily: AppFonts.helvetica,
        fontSize: 18,
      );
  static TextStyle get getStartedTextstyle => TextStyle(
        color: AppColors.cardColor,
        fontWeight: FontWeight.normal,
        fontFamily: AppFonts.helvetica,
        fontSize: 18,
      );
  static TextStyle get usTextstyle => TextStyle(
        color: AppColors.usColor,
        fontWeight: FontWeight.bold,
        fontFamily: AppFonts.helvetica,
        fontSize: 14,
      );
  static TextStyle get ghTextstyle => TextStyle(
        color: AppColors.ghColor,
        fontWeight: FontWeight.bold,
        fontFamily: AppFonts.helvetica,
        fontSize: 14,
      );
  static TextStyle get newYorkTextstyle => TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.normal,
        fontFamily: AppFonts.helvetica,
        fontSize: 10,
      );
  static TextStyle get detailsTextstyle => TextStyle(
        color: AppColors.searchBarColor,
        fontWeight: FontWeight.normal,
        fontFamily: AppFonts.helvetica,
        fontSize: 14,
      );
  static TextStyle get dateTextstyle => TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.normal,
        fontFamily: AppFonts.helvetica,
        fontSize: 14,
      );
}
