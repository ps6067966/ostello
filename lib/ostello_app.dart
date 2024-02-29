import 'package:flutter/material.dart';
import 'package:ostello/app_router.dart';
import 'package:ostello/theme_service.dart';

class OstelloApp extends StatelessWidget {
  const OstelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Ostello App',
      theme: ThemeService.lightTheme(),
      darkTheme: ThemeService.darkTheme(),
      themeMode: ThemeMode.light,
      routerConfig: appRouter,
    );
  }
}
