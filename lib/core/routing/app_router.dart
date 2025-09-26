import 'package:flutter/material.dart';
import 'package:shinkai/core/routing/routes.dart';
import 'package:shinkai/features/details/presentation/pages/details_page.dart';
import 'package:shinkai/features/home/presentation/pages/home_page.dart';
import 'package:shinkai/features/upgrade_plan/presentation/pages/upgrade_plan_page.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomePage());

      case Routes.details:
        return MaterialPageRoute(builder: (_) => DetailsPage());

      case Routes.upgradePlan:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              UpgradePlanPage(),
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
