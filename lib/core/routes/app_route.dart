// class AppRoutes {
//   static const String login = 'login';
//   static const String signUp = 'signUp';

//   static Route<void> onGenerateRoute(RouteSettings settings) {
//     // ignore: unused_local_variable
//     final argc = settings.arguments;
//     switch (settings.name) {
//       case login:
//         return BaseRoute(page: const LoginScreen());
//       case signUp:
//         return BaseRoute(page: const SignUpScreen());
//       default:
//         return BaseRoute(page: const PageUnderBuild());
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:symphony_app/core/routes/base_routes.dart';
import 'package:symphony_app/features/welcome/presenation/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = 'Welcome_Screen';
  static Route<void> onGenerateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final argc = settings.arguments;
    switch (settings.name) {
      case welcomeScreen:
        return BaseRoute(
          page: const WelcomeScreen(),
        );
      default:
        return BaseRoute(
          page: const Scaffold(
            body: Center(
              child: Text(
                'No Screen to Routing',
              ),
            ),
          ),
        );
    }
  }
}
