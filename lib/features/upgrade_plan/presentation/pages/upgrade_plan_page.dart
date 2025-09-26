// Presentation logic for Upgrade Plan feature
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shinkai/core/routing/route_helper_extensions.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';
import 'package:shinkai/features/upgrade_plan/presentation/widgets/card_plan_widget.dart';

class UpgradePlanPage extends StatefulWidget {
  const UpgradePlanPage({super.key});

  @override
  State<UpgradePlanPage> createState() => _UpgradePlanPageState();
}

class _UpgradePlanPageState extends State<UpgradePlanPage> {
  bool isCardSelected = true;

  void changeSelected() {
   setState(() {
      isCardSelected = !isCardSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: ColorsManager.backgroundLinearGradient,
          ),
          child: Stack(
            children: [
              //* Background Star
              Positioned(
                left: -155.69.w,
                top: -127.h,
                child: Image.asset(
                  "assets/images/background_elements/Star 3.png",
                  width: 388.42.w,
                  height: 388.42.h,
                ),
              ),
              //* Background Star
              Positioned(
                left: 231.w,
                top: 149.h,
                child: Image.asset(
                  "assets/images/background_elements/Star 4.png",
                  width: 288.95.w,
                  height: 288.95.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 17.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Spacer()),
                        Text(
                          "Upgrade Plan",
                          style: TextStyles.bodyText1.copyWith(
                            fontSize: 22.sp,
                            color: ColorsManager.textBlack,
                          ),
                        ),

                        Expanded(child: Spacer()),

                        GestureDetector(
                          onTap: () => context.pop(),
                          child: SvgPicture.asset(
                            "assets/icons/Cancel.svg",
                            width: 27.w,
                            height: 27.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),

                    Image.asset(
                      "assets/images/Rocket Boy 1.png",
                      width: 207.w,
                      height: 207.w,
                      fit: BoxFit.cover,
                    ),

                    Column(
                      children: [
                        //* CTA Text
                        Text(
                          "Seamless Anime\nExperience, Ad-Free.",
                          textAlign: TextAlign.center,
                          style: TextStyles.bodyText1.copyWith(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w800,
                            color: ColorsManager.textBlack,
                          ),
                        ),

                        SizedBox(height: 4.h),

                        Text(
                          "Enjoy unlimited anime streaming without interruptions.",
                          textAlign: TextAlign.center,
                          style: TextStyles.bodyTextSemiBold14White.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFAEADB5),
                          ),
                        ),
                        SizedBox(height: 39.h),

                        //* Plans
                        CardPlanWidget(
                          onCardTap: changeSelected,
                          isSelected: isCardSelected,
                          planPrice: 5,
                          planType: "Monthly",
                        ),
                        SizedBox(height: 16.h),
                        CardPlanWidget(
                          onCardTap: changeSelected,
                          isSelected: !isCardSelected,
                          planPrice: 55,
                          planType: "Annually",
                        ),
                        SizedBox(height: 37.h),

                        //* Continue Button
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 34.r),
                                decoration: BoxDecoration(
                                  color: ColorsManager.primaryPurple,
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Continue",
                                    style: TextStyles.bodyText1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
