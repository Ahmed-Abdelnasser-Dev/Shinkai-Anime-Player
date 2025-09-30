import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class AnimeNumberWidget extends StatelessWidget {
  final String views;
  final String claps;
  final String seasons;

  const AnimeNumberWidget({
    super.key,
    required this.views,
    required this.claps,
    required this.seasons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/eye.svg",
              width: 17.w,
              height: 16.h,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            SizedBox(width: 8.w),
            Text(
              "$views Views",
              style: TextStyles.ralewayBodyMedium14.copyWith(
                color: ColorsManager.backgroundWhite,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/hands_clapping.svg",
              width: 17.w,
              height: 16.h,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            SizedBox(width: 8.w),
            Text("$views Claps", style: TextStyles.ralewayBodyMedium14.copyWith(
                color: ColorsManager.backgroundWhite,
              ),),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/movie_film.svg",
              width: 17.w,
              height: 16.h,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            SizedBox(width: 8.w),
            Text("$views Seasons", style: TextStyles.ralewayBodyMedium14.copyWith(
                color: ColorsManager.backgroundWhite,
              ),),
          ],
        ),
      ],
    );
  }
}
