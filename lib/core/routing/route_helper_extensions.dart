import 'package:flutter/material.dart';

extension Navigation on BuildContext {

    Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
        return Navigator.of(this).pushNamed(routeName, arguments: arguments);
    }

    Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
        return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
    }
    
    Future<dynamic> pushNamedAndRemoveUntil(String newRouteName, String untilRouteName, {Object? arguments}) {
        return Navigator.of(this).pushNamedAndRemoveUntil(newRouteName, ModalRoute.withName(untilRouteName), arguments: arguments);
    }

    void pop() => Navigator.of(this).pop();
  
}