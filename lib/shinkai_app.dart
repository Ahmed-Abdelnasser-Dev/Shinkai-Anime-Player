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
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: Container(
        decoration: BoxDecoration(
          gradient: ColorsManager.backgroundLinearGradient,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shinkai',
          theme: ThemeData(
            primaryColor: ColorsManager.primaryPurple,
            scaffoldBackgroundColor: Colors.transparent,
          ),
          initialRoute: Routes.details,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
