import 'package:e_commerce_mobile_app/screens/card_screen.dart';
import 'package:e_commerce_mobile_app/screens/home_screen.dart';
import 'package:e_commerce_mobile_app/screens/total_screen.dart';
import 'package:flutter/material.dart';

class ScreenRoutes {
  Route getScreenRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case ScreenChange.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case ScreenChange.cardScreen:
        return MaterialPageRoute(
          builder: (context) => const CardScreen(),
        );

      case ScreenChange.totalScreen:
        return MaterialPageRoute(
          builder: (context) => const TotalScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}

abstract class ScreenChange {
  static const String homeScreen = '/';
  static const String cardScreen = '/card';
  static const String totalScreen = '/total';
}
