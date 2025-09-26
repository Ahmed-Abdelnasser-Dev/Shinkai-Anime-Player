import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class CategoriesList extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final ValueChanged<int>? onCategorySelected;

  const CategoriesList({
    super.key,
    required this.categories,
    this.selectedIndex = 0,
    this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          final bool isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onCategorySelected?.call(index),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 43.w),

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? ColorsManager.primaryPurple
                      : Colors.white,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyles.bodyText1.copyWith(
                      color: isSelected
                          ? Colors.white
                          : ColorsManager.primaryPurple,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
