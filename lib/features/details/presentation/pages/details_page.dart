import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/colors.dart';
import 'package:shinkai/core/theme/text_styles.dart';
import 'package:shinkai/core/widgets/details_page_bottom_navigation_bar.dart';
import 'package:shinkai/features/details/presentation/widgets/anime_number_widget.dart';
import 'package:shinkai/features/details/presentation/widgets/genre_item_widget.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  final List<Map<String, dynamic>> animeDetails = [
    {
      "poster": "assets/images/demon_slayer_poster.png",
      "icon": "assets/images/demon_slayer_icon.png",
      "title": "Demon Slayer",
      "genres": ["Dark Fantasy", "Action", "Adventure"],
      "views": "2.3M",
      "claps": "2K",
      "seasons": "4",
      "description":
          "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final anime = animeDetails[0];
    return Scaffold(
      backgroundColor: ColorsManager.deepPurple,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //* Background Circle
            Positioned(
              left: 243.w,
              top: 494.h,
              child: Image.asset(
                "assets/images/Ellipse 3.png",
                width: 153.w,
                height: 130.h,
              ),
            ),

            //* Background Circle
            Positioned(
              left: -14.w,
              top: 694.h,
              child: Image.asset(
                "assets/images/Ellipse 2.png",
                width: 108.w,
                height: 118.h,
              ),
            ),

            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
                padding: EdgeInsets.only(top: 590.h),
                width: double.infinity,
                color: Color(0x402C1E51),

                child: Positioned(child: details(anime)),
              ),
            ),

            Image.asset(
              anime["poster"],
              width: 376.w,
              height: 519.h,
              fit: BoxFit.cover,
            ),

            Positioned(
              top: 430.h,
              left: 95.w,
              child: Image.asset(
                anime["icon"],
                width: 193.w,
                height: 146.17.h,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),

      //* Bottom Navigation Bar
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 16.h,
          bottom: 38.h,
        ),
        color: Color(0xFF16103C),
        child: DetailsPageBottomNavigationBar(),
      ),
    );
  }
}

Widget details(Map<String, dynamic> anime) {
  return Padding(
    padding: EdgeInsets.only(left: 20.w, right: 20.w),
    child: Column(
      children: [
        //* Genres
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: (anime["genres"] as List<String>)
              .map(
                (genre) => Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: GenreItemWidget(genreName: genre),
                ),
              )
              .toList(),
        ),
        SizedBox(height: 23.h),

        Divider(thickness: 1.sp, color: Color(0xFF484747)),
        SizedBox(height: 10.h),

        //* Numbers
        AnimeNumberWidget(
          views: anime["views"],
          claps: anime["claps"],
          seasons: anime["seasons"],
        ),
        SizedBox(height: 10.h),

        Divider(thickness: 1.sp, color: Color(0xFF484747)),
        SizedBox(height: 20.h),

        //* Description
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/fire.png", width: 29.w, height: 32.h),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                anime["description"],
                softWrap: true,
                style: TextStyles.bodyTextRalewayMedium11White.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
      ],
    ),
  );
}
