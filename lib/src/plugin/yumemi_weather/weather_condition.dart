import 'package:flutter/material.dart';
import 'package:flutter_training/gen/assets.gen.dart';
import 'package:flutter_training/src/plugin/flutter_svg/flutter_svg.dart';

enum WeatherCondition {
  cloudy,
  rainy,
  sunny;

  Widget get image => switch (this) {
        cloudy => FlutterSvgService.fetchSvgImage(
            assetPath: Assets.images.cloudy.path,
            semanticsLabel: name,
          ),
        rainy => FlutterSvgService.fetchSvgImage(
            assetPath: Assets.images.rainy.path,
            semanticsLabel: name,
          ),
        sunny => FlutterSvgService.fetchSvgImage(
            assetPath: Assets.images.sunny.path,
            semanticsLabel: name,
          ),
      };
}
