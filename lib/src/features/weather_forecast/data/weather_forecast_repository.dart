import 'package:flutter_training/src/features/weather_forecast/data/data_sources/data_sources.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/utilities/utilities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastRepository {
  WeatherForecastRepository({
    required WeatherForecastRemoteDataSource weatherForecastDatasouce,
  }) : _weatherForecastDatasouce = weatherForecastDatasouce;

  final WeatherForecastRemoteDataSource _weatherForecastDatasouce;

  // Remote

  Result<WeatherInformation, WeatherForecastException> fetchWeatherForecast({
    required WeatherForecastRequest weatherForecastRequest,
  }) {
    try {
      final weatherInformation = _weatherForecastDatasouce.fetchWeatherForecast(
        weatherForecastRequest: weatherForecastRequest,
      );
      return Result.success(value: weatherInformation);
    } on YumemiWeatherError catch (error) {
      return Result.failure(
        exception: onWeatherForecastException(error: error),
      );
    } on CheckedFromJsonException catch (_) {
      return Result.failure(
        exception: UnknownException(),
      );
    } on FormatException catch (_) {
      return Result.failure(
        exception: UnknownException(),
      );
    } on Exception catch (_) {
      return Result.failure(
        exception: UnknownException(),
      );
    }
  }
}
