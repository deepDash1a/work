import 'package:flutter/material.dart';
import 'package:work/core/routes/routes.dart';
import 'package:work/features/presentation/authentication/login/ui/screens/login.dart';
import 'package:work/features/presentation/home/screens/home.dart';
import 'package:work/features/presentation/start/ui/screens/start.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.startScreen:
        return MaterialPageRoute(
          builder: (_) => const StartScreen(),
        );


      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );



      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    }
    return null;
  }
}
