import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/feature/weather_forecast/infrastructure/infrastructure.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:flutter_training/src/utility/utility.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastRepositoryImpl extends WeatherForecastRepository {
  WeatherForecastRepositoryImpl({
    required WeatherForecastDatasouce weatherForecastDatasouce,
  }) : _weatherForecastDatasouce = weatherForecastDatasouce;

  final WeatherForecastDatasouce _weatherForecastDatasouce;

  // Remote

  @override
  Result<WeatherCondition, Exception> fetchWeatherCondition({
    required String targetArea,
  }) {
    try {
      late WeatherCondition? weatherCondition;

      final result = _weatherForecastDatasouce.fetchWeatherCondition(
        targetArea: targetArea,
      );
      if (result != null) {
        weatherCondition = WeatherCondition.values.byNameOrNull(name: result);
        if (weatherCondition != null) {
          return Success(value: weatherCondition);
        }
      }
      throw UnknownException();
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
