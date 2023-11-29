import 'package:flutter/material.dart';
import 'package:flutter_training/src/feature/theme/domain/value/value.dart';

extension BuildContextEx on BuildContext {
  ColorTheme get colorTheme => Theme.of(this).extension<ColorTheme>()!;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
