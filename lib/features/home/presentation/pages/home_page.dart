import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shinkai/core/theme/text_styles.dart';
import 'package:shinkai/core/widgets/custom_bottom_nav_bar.dart';
import 'package:shinkai/features/home/presentation/widgets/categories_tabs.dart';
import 'package:shinkai/features/home/presentation/widgets/character_card.dart';
import 'package:shinkai/features/home/presentation/widgets/featured_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static const List<String> categories = [
    'All',
    'Popular',
    'trending',
    'New Releases',
    'Top Rated',
  ];

  final Map<String, Map<String, String>> animeMap = {
    "conan": {
      "imagePath": "assets/images/conan_poster.png",
      "title": "Detective Conan",
      "genre": "Mystery",
    },
    "hunter_x_hunter": {
      "imagePath": "assets/images/Hunter_x_hunter_poster.png",
      "title": "Hunter x Hunter",
      "genre": "Adventure",
    },
    "dragon_ball": {
      "imagePath": "assets/images/dragon_ball_poster.png",
      "title": "Dragon Ball Z",
      "genre": "Action",
    },
    "Demon_Slayer": {
      "imagePath": "assets/images/demon_slayer_poster.png",
      "title": "Demon Slayer",
      "genre": "Fantasy",
    },
  };

  final Map<String, Map<String, String>> charactersMap = {
    "gon": {
      "imagePath": "assets/images/gon.png",
      "characterName": "Gon Freecss",
      "animeTitle": "Hunter x Hunter",
    },
    "naruto": {
      "imagePath": "assets/images/naruto.png",
      "characterName": "Naruto Uzumaki",
      "animeTitle": "Naruto",
    },
    "luffy": {
      "imagePath": "assets/images/luffy.png",
      "characterName": "Luffy",
      "animeTitle": "One Piece",
    },
    "conan": {
      "imagePath": "assets/images/conan.png",
      "characterName": "Conan Edogawa",
      "animeTitle": "Detective Conan",
    },
    "goku": {
      "imagePath": "assets/images/goku.png",
      "characterName": "Goku",
      "animeTitle": "Dragon Ball",
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //* Decorative Stars
            Positioned(
              height: ScreenUtil.defaultSize.height,
              width: ScreenUtil.defaultSize.width,

              top: -200.h,
              right: -130.w,
              child: Image.asset('assets/images/star_2.png'),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 23.0.h, left: 14.0.w),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // * Heading
                    Text(
                      'Where Anime Comes Alive',
                      style: TextStyles.heading1Raleway,
                    ),
                    SizedBox(height: 24.h),

                    //* Categories Tabs
                    CategoriesList(
                      categories: categories,
                      selectedIndex: 0,
                      onCategorySelected: (index) {},
                    ),
                    SizedBox(height: 24.h),

                    //* Featured Section
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0).w,
                      child: SizedBox(
                        height: 300.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: animeMap.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 16.w),
                          itemBuilder: (context, index) {
                            final key = animeMap.keys.elementAt(index);
                            final anime = animeMap[key]!;
                            return FeaturedCard(
                              animeImage: anime["imagePath"]!,
                              animeName: anime["title"]!,
                              animeGenre: anime["genre"]!,
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 24.h),
                    //* Top Characters
                    Text('Top Characters', style: TextStyles.heading1Raleway),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0).w,
                      child: SizedBox(
                        height: 150.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: charactersMap.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 16.w),
                          itemBuilder: (context, index) {
                            final key = charactersMap.keys.elementAt(index);
                            final character = charactersMap[key]!;
                            return CharacterCard(
                              characterImage: character["imagePath"]!,
                              characterName: character["characterName"]!,
                              characterAnime: character["animeTitle"]!,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      //* Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0).h,
        child: CustomBottomNavBar(currentIndex: 0, onTap: (int p1) {  },),
      ),
    );
  }
}
