import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_sizes.dart';

class AppTextStyles {
  ///MENU
  static final menuRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_8,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final menuBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_10,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  static final captionRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_12,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final captionBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_12,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  ///BODY
  static final bodySmallUnderlineRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_14 * 0.9,
      fontWeight: FontWeight.w700,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
      decoration: TextDecoration.underline,
    ),
  );

  static final bodySmallRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_14,
      fontWeight: FontWeight.w300,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final bodySmallBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_14,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  static final bodyLargeUnderlineRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_14,
      fontWeight: FontWeight.w700,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
      decoration: TextDecoration.underline,
    ),
  );

  static final bodyLargeRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_14,
      fontWeight: FontWeight.w300,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final bodyLargeBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_14,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  ///TITLE
  static final titleRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_16,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final titleBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_16,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  //HEADLINE
  static final headlineRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_18,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final headlineBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_18,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  //DISPLAY
  static final displayOneRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_22,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final displayOneBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_22,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  static final displayTwoRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_26,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final displayTwoBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_26,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );

  static final displayThreeRegular = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_32,
      fontWeight: FontWeight.w400,
      color: AppColors.grayDark,
      letterSpacing: 0.0,
    ),
  );

  static final displayThreeBold = GoogleFonts.jost(
    textStyle: TextStyle(
      fontSize: AppSizes.font_32,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      letterSpacing: 0.0,
    ),
  );
}
