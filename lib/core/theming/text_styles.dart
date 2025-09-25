import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shinkai/core/theming/colors.dart';

class TextStyles {
 
 static final TextStyle heading1 = TextStyle(
   fontSize: 24.sp,
   fontWeight: FontWeight.bold,
   color: ColorsManager.textBlack,

   
 );

 static TextStyle get heading1Raleway => GoogleFonts.getFont(
   'Raleway',
   textStyle: heading1,
 );

  static final TextStyle bodyText1 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.backgroundWhite,
  );

  static TextStyle get bodyText1RalewayBold => GoogleFonts.getFont(
    'Raleway',
    textStyle: bodyText1,
  );


  static final TextStyle bodyText3 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.textGrey,
  );

  static TextStyle get bodyText2Raleway => GoogleFonts.getFont(
    'Raleway',
    textStyle: bodyText3,
  );

    static final TextStyle bodyTextSemiBold14White = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.backgroundWhite,
  );

  static TextStyle get bodyTextRalewaySemiBold14White => GoogleFonts.getFont(
    'Raleway',
    textStyle: bodyText3,
  );
}