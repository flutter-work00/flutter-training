import 'package:flutter_training/src/features/weather_forecast/data/data_sources/data_sources.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/utilities/utilities.dart';
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
      final weatherInformation = _weatherForecastDatasouce.fetchWeatherForecast(
        weatherForecastRequest: weatherForecastRequest,
      );
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
