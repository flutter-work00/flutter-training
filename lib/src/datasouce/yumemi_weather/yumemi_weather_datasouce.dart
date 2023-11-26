import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

final yumemiWeatherDatasouceProvider =
    Provider.autoDispose<YumemiWeatherDatasouce>(
  (ref) =>
      YumemiWeatherDatasouce(yumemiWeather: YumemiWeatherService.yumemiWeather),
);

class YumemiWeatherDatasouce {
  YumemiWeatherDatasouce({required YumemiWeather yumemiWeather})
      : _yumemiWeather = yumemiWeather;

  final YumemiWeather _yumemiWeather;

  String? fetchWeatherCondition() {
    return _yumemiWeather.fetchSimpleWeather();
  }
}
