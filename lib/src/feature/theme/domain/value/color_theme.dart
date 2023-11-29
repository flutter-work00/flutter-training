import 'package:flutter/material.dart';

@immutable
class ColorTheme extends ThemeExtension<ColorTheme> {
  const ColorTheme({
    required Color? launchPageBackground,
    required Color? maxTemperature,
    required Color? minTemperature,
    required Color? weatherActionButton,
  })  : _launchPageBackground = launchPageBackground,
        _maxTemperature = maxTemperature,
        _minTemperature = minTemperature,
        _weatherActionButton = weatherActionButton;

  final Color? _launchPageBackground;
  final Color? _maxTemperature;
  final Color? _minTemperature;
  final Color? _weatherActionButton;

  Color? get launchPageBackground => _launchPageBackground;
  Color? get maxTemperature => _maxTemperature;
  Color? get minTemperature => _minTemperature;
  Color? get weatherActionButton => _weatherActionButton;

  @override
  ColorTheme copyWith({
    Color? launchPageBackground,
    Color? maxTemperature,
    Color? minTemperature,
    Color? weatherActionButton,
  }) {
    return ColorTheme(
      launchPageBackground: launchPageBackground ?? _launchPageBackground,
      maxTemperature: maxTemperature ?? _maxTemperature,
      minTemperature: minTemperature ?? _minTemperature,
      weatherActionButton: weatherActionButton ?? _weatherActionButton,
    );
  }

  @override
  ColorTheme lerp(ColorTheme? other, double t) {
    if (other is! ColorTheme) {
      return this;
    }
    return ColorTheme(
      launchPageBackground:
          Color.lerp(_launchPageBackground, other._launchPageBackground, t),
      maxTemperature: Color.lerp(_maxTemperature, other._maxTemperature, t),
      minTemperature: Color.lerp(_minTemperature, other._minTemperature, t),
      weatherActionButton:
          Color.lerp(_weatherActionButton, other._weatherActionButton, t),
    );
  }
}
