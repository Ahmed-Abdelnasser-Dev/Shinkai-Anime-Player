import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.characterImage,
    required this.characterName,
    required this.characterAnime,
  });

  final String characterImage;
  final String characterName;
  final String characterAnime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.r),

          child:  Image.asset(
            characterImage,
            width: 92.w,
            height: 92.h,
            fit: BoxFit.cover,
          ),
        ),
         SizedBox(height: 10.h),
         Text(
          characterName,
          style: TextStyles.bodyText1RalewayBold.copyWith(
            color: ColorsManager.textBlack,
          ),
        ),
         SizedBox(height: 6.h),
         Text(characterAnime, style: TextStyles.bodyText3),
      ],
    );
  }
}
