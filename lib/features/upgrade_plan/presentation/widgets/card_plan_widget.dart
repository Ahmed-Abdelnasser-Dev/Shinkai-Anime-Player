import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';

class CardPlanWidget extends StatefulWidget {
  const CardPlanWidget({super.key, required this.isSelected, required this.planPrice, required this.planType, required this.onCardTap});

  final String planType;
  final int planPrice;
  final bool isSelected;
  final VoidCallback onCardTap;

  @override
  State<CardPlanWidget> createState() => _CardPlanWidgetState();

}

class _CardPlanWidgetState extends State<CardPlanWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: widget.onCardTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: widget.isSelected
              ? ColorsManager.deepPurple
              : ColorsManager.backgroundWhite,
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //* Plan Image
            Image.asset(
              "assets/images/Files & Folders 3 1.png",
              width: 108.w,
              height: 108.h,
              fit: BoxFit.cover,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* Plan Text
                    Text(
                      widget.planType,
                      style: TextStyles.ralewayTitleSemiBold16.copyWith(
                        fontSize: 16.sp,
                        color: widget.isSelected
                            ? ColorsManager.backgroundWhite
                            : ColorsManager.textBlack,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          "\$${widget.planPrice} USD ",
                          style: TextStyles.ralewayBodyBold14
                              .copyWith(

                                color: widget.isSelected
                                    ? ColorsManager.backgroundWhite
                                    : ColorsManager.textBlack,
                              ),
                        ),

                        Text(
                           widget.planType != "Annually" ? 
                          "/${widget.planType}" : "/Year",
                          style: TextStyles.ralewayBodyBold14
                        ),
                      ],
                    ),

                    SizedBox(height: 8.h),
                    Text(
                      "Include Family Sharing",
                      style: TextStyles.ralewayCaptionSemiBold12,
                    ),
                  ],
                ),

                //* Plan Checker
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: widget.isSelected
                          ? Colors.transparent
                          : ColorsManager.textBlack,
                      width: 1.5.sp,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/tick-circle.svg",
                    width: 24.w,
                    height: 24.h,
                    colorFilter: widget.isSelected
                        ? const ColorFilter.mode(
                            ColorsManager.primaryPurple,
                            BlendMode.srcIn,
                          )
                        : const ColorFilter.mode(
                            ColorsManager.backgroundWhite,
                            BlendMode.srcIn,
                          ), // fallback color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
