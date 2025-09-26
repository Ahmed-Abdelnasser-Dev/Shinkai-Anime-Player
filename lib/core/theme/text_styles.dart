import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/colors.dart';

class TextStyles {
  static final TextStyle heading1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.textBlack,
    fontFamily: "Raleway",
  );

  static final TextStyle bodyText1 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.backgroundWhite,
    fontFamily: "Raleway",
  );

  static final TextStyle bodyText3 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.textGrey,
    fontFamily: "Raleway",
  );

  static final TextStyle bodyTextSemiBold14White = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.backgroundWhite,
    fontFamily: "Raleway",
  );

  static final TextStyle bodyTextRalewayMedium11White = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.backgroundWhite,
    fontFamily: "Raleway",
  );

  static final TextStyle planTextRalewayBoldOffWhite = TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffA49AD8),
                fontFamily: "Raleway"
              );
}
