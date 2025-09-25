import 'package:flutter/material.dart';
import 'package:shinkai/core/routing/routes.dart';
import 'package:shinkai/features/details/presentation/pages/details_page.dart';
import 'package:shinkai/features/home/presentation/pages/home_page.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) =>  HomePage());

      case Routes.details:
        return MaterialPageRoute(builder: (_) =>  DetailsPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
