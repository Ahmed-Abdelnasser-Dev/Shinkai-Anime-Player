import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shinkai/core/routing/app_router.dart';
import 'package:shinkai/core/routing/routes.dart';
import 'package:shinkai/core/theme/colors.dart';

class ShinkaiApp extends StatelessWidget {
  const ShinkaiApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Design size based on your Figma design (375x812)
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        // DevicePreview has been removed, returning Container directly
        return Container(
          decoration: BoxDecoration(
            gradient: ColorsManager.backgroundLinearGradient,
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shinkai',
            // All DevicePreview properties (locale, builder, useInheritedMediaQuery) are removed
            theme: ThemeData(
              primaryColor: ColorsManager.primaryPurple,
              scaffoldBackgroundColor: Colors.transparent,
            ),
            initialRoute: Routes.home,
            onGenerateRoute: appRouter.generateRoute,
          ),
        );
      },
    );
  }
}
