import 'dart:convert';

import 'package:flutter_training/src/features/weather_forecast/data/data_sources/data_sources.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/utilities/utility.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastRepository {
  WeatherForecastRepository({
    required WeatherForecastRemoteDataSource weatherForecastDatasouce,
  }) : _weatherForecastDatasouce = weatherForecastDatasouce;

  final WeatherForecastRemoteDataSource _weatherForecastDatasouce;

  // Remote

  Result<WeatherInformation, Exception> fetchWeatherForecast({
    required WeatherForecastRequest weatherForecastRequest,
  }) {
    try {
      late WeatherInformation? weatherInformation;

      final result = _weatherForecastDatasouce.fetchWeatherForecast(
        targetData: jsonEncode(weatherForecastRequest),
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
