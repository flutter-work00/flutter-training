import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

final weatherForecastDatasouceProvider =
    Provider.autoDispose<WeatherForecastDatasouce>(
  (ref) => WeatherForecastDatasouce(
    weatherClient: YumemiWeatherService.yumemiWeather,
  ),
);

class WeatherForecastDatasouce {
  WeatherForecastDatasouce({required YumemiWeather weatherClient})
      : _weatherClient = weatherClient;

  final YumemiWeather _weatherClient;

  String? fetchWeatherCondition({required String targetArea}) {
    return _weatherClient.fetchWeather(targetArea);
  }
}
