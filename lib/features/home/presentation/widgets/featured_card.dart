import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.animeImage,
    required this.animeName,
    required this.animeGenre,
  });

  final String animeImage;
  final String animeName;
  final String animeGenre;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),

          child: Image.asset(animeImage, width: 198.w, height: 247.h,
              fit: BoxFit.cover),
        ),
        SizedBox(height: 8.h),
        Text(
          animeName,
          style: TextStyles.bodyText1RalewayBold.copyWith(
            color: ColorsManager.textBlack,
          ),
        ),
        SizedBox(height: 4.h),
        Text(animeGenre, style: TextStyles.bodyText3),
      ],
    );
  }
}
