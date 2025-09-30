import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TextStyles {
  static const String _fontFamily = 'Raleway';
  
  /// Raleway Bold 24.0 (Weight: w700, Size: 24.0)
  static final TextStyle ralewayHeadingBold24 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24.0.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  /// Raleway SemiBold 24.0 (Weight: w600, Size: 24.0)
  static final TextStyle ralewayHeadingSemiBold24 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// Raleway Bold 22.0 (Weight: w700, Size: 22.0)
  static final TextStyle ralewayHeadingBold22 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 22.0.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // --- Role: Title (Section headers, list titles) ---

  /// Raleway SemiBold 16.0 (Weight: w600, Size: 16.0)
  static final TextStyle ralewayTitleSemiBold16 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.0.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// Raleway Medium 16.0 (Weight: w500, Size: 16.0)
  static final TextStyle ralewayTitleMedium16 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.0.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  
  // --- Role: Body (Standard paragraph and content text) ---

  /// Raleway Bold 14.0 (Weight: w700, Size: 14.0)
  static final TextStyle ralewayBodyBold14 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.0.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  /// Raleway SemiBold 14.0 (Weight: w600, Size: 14.0)
  static final TextStyle ralewayBodySemiBold14 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// Raleway Medium 14.0 (Weight: w500, Size: 14.0)
  static final TextStyle ralewayBodyMedium14 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  
  /// Raleway Medium 15.0 (Weight: w500, Size: 15.0)
  static final TextStyle ralewayBodyMedium15 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.0.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  // --- Role: Caption (Smallest text for hints, metadata, or legal copy) ---

  /// Raleway SemiBold 12.0 (Weight: w600, Size: 12.0)
  static final TextStyle ralewayCaptionSemiBold12 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.0.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  
  /// Raleway Medium 12.0 (Weight: w500, Size: 12.0)
  static final TextStyle ralewayCaptionMedium12 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.0.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  /// Raleway Medium 11.0 (Weight: w500, Size: 11.0)
  static final TextStyle ralewayCaptionMedium11 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11.0.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
}
