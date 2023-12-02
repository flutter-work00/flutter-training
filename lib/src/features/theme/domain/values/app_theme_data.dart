import 'package:flutter/material.dart';
import 'package:flutter_training/src/features/theme/domain/values/value.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData light() {
    return ThemeData(
      useMaterial3: false,
      extensions: const <ThemeExtension<ColorTheme>>[
        ColorTheme(
          launchPageBackground: LightColorTheme.launchPageBackground,
          maxTemperature: LightColorTheme.maxTemperature,
          minTemperature: LightColorTheme.minTemperature,
          weatherActionButton: LightColorTheme.weatherActionButton,
        ),
      ],
    );
  }
}
