import 'package:flutter/material.dart';
import 'package:flutter_training/src/plugin/flutter_svg/flutter_svg.dart';
import 'package:flutter_training/src/utility/utility.dart';

enum WeatherCondition {
  cloudy,
  rainy,
  sunny;

  Widget get image => switch (this) {
        cloudy => FlutterSvgService.fetchSvgImage(
            assetName: AppPath.cloudy,
            semanticsLabel: name,
          ),
        rainy => FlutterSvgService.fetchSvgImage(
            assetName: AppPath.rainy,
            semanticsLabel: name,
          ),
        sunny => FlutterSvgService.fetchSvgImage(
            assetName: AppPath.sunny,
            semanticsLabel: name,
          ),
      };
}
