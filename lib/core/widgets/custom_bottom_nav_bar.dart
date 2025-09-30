import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  static final List<Map<String, String>> items = [
    {"icon": "assets/icons/home.svg", "label": "Home"},
    {"icon": "assets/icons/library.svg", "label": "Library"},
    {"icon": "assets/icons/search.svg", "label": "Search"},
    {"icon": "assets/icons/internet.svg", "label": "Internet"},
    {"icon": "assets/icons/setting.svg", "label": "Settings"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      color: ColorsManager.backgroundWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final bool isSelected = index == currentIndex;

          return GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),

              decoration: BoxDecoration(
                color: isSelected
                    ? ColorsManager.primaryPurple
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(24.r),
              ),

              child: Row(
                children: [
                  SvgPicture.asset(
                    item["icon"]!,
                    width: 20.w,
                    height: 20.h,

                    colorFilter: ColorFilter.mode(
                      isSelected
                          ? ColorsManager.backgroundWhite
                          : ColorsManager.textGrey,
                      BlendMode.srcIn,
                    ),
                  ),

                  if (isSelected) ...[
                    SizedBox(width: 6.w),
                    Text(
                      item["label"]!,
                      style: TextStyles.ralewayBodySemiBold14. copyWith(
                        color: ColorsManager.backgroundWhite
                      ),
                      
                    ),
                  ],
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
