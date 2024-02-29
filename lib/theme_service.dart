import 'package:flutter/material.dart';

class ThemeService {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    );
  }
}
