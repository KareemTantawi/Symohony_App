import 'package:flutter/material.dart';
import 'package:symphony_app/core/routes/app_route.dart';


class SymphonyApp extends StatelessWidget {
  const SymphonyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.welcomeScreen,
    );
  }
}
