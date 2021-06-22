import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class AppTextStyles {
/*

from: https://github.com/rocketseat-education/nlw-06-flutter/tree/textstyles

titleHome	      'Lexend Deca Regular'	32px	600	heading
titleRegular	  'Lexend Deca Regular'	20px	400	background
titleBold	      'Lexend Deca Regular'	20px	600	heading ou background
titleListTile	  'Lexend Deca Regular'	17px	600	heading
trailingRegular	'Lexend Deca Regular'	16px	400	heading
trailingBold	  'Lexend Deca Regular'	16px	600	heading
button	        'Inter'             	15px	400	primary, heading, gray ou background
buttonBold	    'Inter'             	15px	700	heading
caption	        'Lexend Deca Regular'	13px	400	background, shape ou body
captionBold	    'Lexend Deca Regular'	13px	600	background, shape ou body

*/

  static final titleHome = GoogleFonts.lexendDeca(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final titleRegular = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );

  static final titleBoldHeading = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final titleBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );

  static final titleListTile = GoogleFonts.lexendDeca(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final trailingRegular = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );

  static final trailingBold = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final buttonPrimary = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static final buttonHeading = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );

  static final buttonGray = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static final buttonBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );

  static final buttonBoldPrimary = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static final buttonBoldHeading = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.heading,
  );

  static final buttonBoldGray = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.grey,
  );

  static final buttonBoldBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.background,
  );

  static final captionBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );

  static final captionShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.shape,
  );

  static final captionBody = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.body,
  );

  static final captionBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );

  static final captionBoldShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.shape,
  );

  static final captionBoldBody = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.body,
  );
}
