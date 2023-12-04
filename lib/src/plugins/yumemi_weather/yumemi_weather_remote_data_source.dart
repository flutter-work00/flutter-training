import 'dart:convert';

import 'package:flutter_training/src/features/weather_forecast/data/data_sources/data_sources.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/entities/entities.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class YumemiWeatherRemoteDataSource implements WeatherForecastRemoteDataSource {
  YumemiWeatherRemoteDataSource({required YumemiWeather weatherClient})
      : _weatherClient = weatherClient;

  final YumemiWeather _weatherClient;

  @override
  WeatherInformation fetchWeatherForecast({
    required WeatherForecastRequest weatherForecastRequest,
  }) {
    final weatherJson =
        _weatherClient.fetchWeather(jsonEncode(weatherForecastRequest));
    return WeatherInformation.fromJson(
      jsonDecode(weatherJson) as Map<String, dynamic>,
    );
  }
}
