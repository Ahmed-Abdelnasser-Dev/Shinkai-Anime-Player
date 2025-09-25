import 'package:flutter/material.dart';

class ColorsManager {

  static const Color primaryPurple = Color(0xFF5436F8);
  static const Color backgroundWhite = Color(0xFFFFFFFF);
  static const Color purpleLight = Color(0xFFD3D6FF);
  static const Color textBlack = Color(0xFF18153F);
  static const Color textGrey = Color(0xFFA9A9A9);
  static const LinearGradient backgroundLinearGradient = LinearGradient(
    colors: [
      Color(0xFFDDE2FF),
      Color(0xFFFFFFFF),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}