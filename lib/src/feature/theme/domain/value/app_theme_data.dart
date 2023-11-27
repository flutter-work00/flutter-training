import 'package:flutter/material.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData light() {
    return ThemeData.light(
      useMaterial3: true,
    );
  }
}
