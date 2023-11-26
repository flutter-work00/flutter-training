import 'package:flutter_training/src/datasouce/yumemi_weather/yumemi_weather.dart';
import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:flutter_training/src/utility/utility.dart';

class WeatherForecastRepositoryImpl extends WeatherForecastRepository {
  WeatherForecastRepositoryImpl({
    required YumemiWeatherDatasouce yumemiWeatherDatasouce,
  }) : _yumemiWeatherDatasouce = yumemiWeatherDatasouce;

  final YumemiWeatherDatasouce _yumemiWeatherDatasouce;

  // Remote
  @override
  Result<WeatherCondition, Exception> fetchWeatherCondition() {
    try {
      late WeatherCondition? weatherCondition;

      final result = _yumemiWeatherDatasouce.fetchWeatherCondition();
      if (result != null) {
        weatherCondition = WeatherCondition.values.byNameOrNull(name: result);
        if (weatherCondition != null) {
          return Success(value: weatherCondition);
        }
      }
      throw FetchWeatherConditionException();
    } on Exception catch (_) {
      return Failure(exception: FetchWeatherConditionException());
    }
  }
}
