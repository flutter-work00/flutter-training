import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/infrastructure/infrastructure.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:flutter_training/src/utility/utility.dart';

final weatherForecastRepositoryProvider =
    Provider.autoDispose<WeatherForecastRepository>(
  (ref) => WeatherForecastRepositoryImpl(
    weatherForecastDatasouce: ref.watch(weatherForecastDatasouceProvider),
  ),
);

abstract class WeatherForecastRepository {
  // Remote

  Result<WeatherCondition, Exception> fetchWeatherCondition({
    required String targetArea,
  });
}
