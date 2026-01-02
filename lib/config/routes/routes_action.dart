import 'package:bloc_part_two/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../../views/view.dart';

class RoutesAction {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashView:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case RoutesName.homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case RoutesName.loginView:
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route found of this page ${settings.name}"),
            ),
          ),
        );
    }
  }
}
