import 'package:flutter/material.dart';
import 'package:flutter_training/gen/assets.gen.dart';

enum WeatherCondition {
  cloudy,
  rainy,
  sunny;

  Widget get image => switch (this) {
        cloudy => Assets.images.cloudy.svg(semanticsLabel: name),
        rainy => Assets.images.rainy.svg(semanticsLabel: name),
        sunny => Assets.images.sunny.svg(semanticsLabel: name),
      };
}
