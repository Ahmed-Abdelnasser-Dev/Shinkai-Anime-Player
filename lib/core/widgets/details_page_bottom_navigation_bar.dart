import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shinkai/core/routing/route_helper_extensions.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class DetailsPageBottomNavigationBar extends StatelessWidget {
  const DetailsPageBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //* Preview Button
        Container(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),

          decoration: BoxDecoration(
            color: Color(0xFF454161),
            borderRadius: BorderRadius.circular(34.r),
          ),

          child: TextButton.icon(
            icon: SvgPicture.asset(
              "assets/icons/timer.svg",
              width: 20.w,
              height: 20.h,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),

            onPressed: () {},
            label: Text("Preview", style: TextStyles.ralewayTitleSemiBold16),
          ),
        ),

        SizedBox(width: 16.w),

        //* Watch Now Button
        Container(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color: ColorsManager.primaryPurple,
            borderRadius: BorderRadius.circular(34.r),
          ),

          child: TextButton.icon(
            icon: SvgPicture.asset(
              "assets/icons/eye.svg",
              width: 16.w,
              height: 16.h,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),

            onPressed: () => context.pushNamed("/upgradePlan"),
            label: Text("Watch Now", style: TextStyles.ralewayTitleSemiBold16.copyWith(
              color: ColorsManager.backgroundWhite
            )),
          ),
        ),
      ],
    );
  }
}
