import 'package:book_an_appointment_with_doctor/Core/routing/routes.dart';
import 'package:book_an_appointment_with_doctor/feature/home/ui/widgets/login_screen.dart';
import 'package:book_an_appointment_with_doctor/feature/onbording/on_bording.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generaterRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBordingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text("No route defined for ${settings.name}"),
                )));
    }
  }
}
