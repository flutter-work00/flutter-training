import 'dart:convert';

import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/feature/weather_forecast/infrastructure/infrastructure.dart';
import 'package:flutter_training/src/utility/utility.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastRepositoryImpl extends WeatherForecastRepository {
  WeatherForecastRepositoryImpl({
    required WeatherForecastDatasouce weatherForecastDatasouce,
  }) : _weatherForecastDatasouce = weatherForecastDatasouce;

  final WeatherForecastDatasouce _weatherForecastDatasouce;

  // Remote

  @override
  Result<WeatherInformation, Exception> fetchWeatherForecast({
    required WeatherRequest weatherRequest,
  }) {
    try {
      late WeatherInformation? weatherInformation;

      final result = _weatherForecastDatasouce.fetchWeatherForecast(
        targetJsonString: jsonEncode(weatherRequest),
      );
      weatherInformation = WeatherInformation.fromJson(result);
      return Success(value: weatherInformation);
    } on YumemiWeatherError catch (error) {
      return Failure(
        exception: onWeatherForecastException(error: error),
      );
    } on Exception catch (_) {
      return Failure(
        exception: UnknownException(),
      );
    }
  }
}
