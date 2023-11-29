import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/domain/entities/entities.dart';
import 'package:flutter_training/src/feature/weather_forecast/infrastructure/infrastructure.dart';
import 'package:flutter_training/src/utility/utility.dart';

final weatherForecastRepositoryProvider =
    Provider.autoDispose<WeatherForecastRepository>(
  (ref) => WeatherForecastRepositoryImpl(
    weatherForecastDatasouce: ref.watch(weatherForecastDatasouceProvider),
  ),
);

abstract class WeatherForecastRepository {
  // Remote

  Result<WeatherInformation, Exception> fetchWeatherForecast({
    required WeatherRequest weatherRequest,
  });
}
