import 'package:flutter/material.dart';

@immutable
class ColorTheme extends ThemeExtension<ColorTheme> {
  const ColorTheme({
    required Color? maxTemperature,
    required Color? minTemperature,
    required Color? rootPageBackground,
    required Color? weatherActionButton,
  })  : _maxTemperature = maxTemperature,
        _minTemperature = minTemperature,
        _rootPageBackground = rootPageBackground,
        _weatherActionButton = weatherActionButton;

  final Color? _maxTemperature;
  final Color? _minTemperature;
  final Color? _rootPageBackground;
  final Color? _weatherActionButton;

  Color? get maxTemperature => _maxTemperature;
  Color? get minTemperature => _minTemperature;
  Color? get rootPageBackground => _rootPageBackground;
  Color? get weatherActionButton => _weatherActionButton;

  @override
  ColorTheme copyWith({
    Color? maxTemperature,
    Color? minTemperature,
    Color? rootPageBackground,
    Color? weatherActionButton,
  }) {
    return ColorTheme(
      maxTemperature: maxTemperature ?? _maxTemperature,
      minTemperature: minTemperature ?? _minTemperature,
      rootPageBackground: rootPageBackground ?? _rootPageBackground,
      weatherActionButton: weatherActionButton ?? _weatherActionButton,
    );
  }

  @override
  ColorTheme lerp(ColorTheme? other, double t) {
    if (other is! ColorTheme) {
      return this;
    }
    return ColorTheme(
      maxTemperature: Color.lerp(_maxTemperature, other._maxTemperature, t),
      minTemperature: Color.lerp(_minTemperature, other._minTemperature, t),
      rootPageBackground:
          Color.lerp(_rootPageBackground, other._rootPageBackground, t),
      weatherActionButton:
          Color.lerp(_weatherActionButton, other._weatherActionButton, t),
    );
  }
}
