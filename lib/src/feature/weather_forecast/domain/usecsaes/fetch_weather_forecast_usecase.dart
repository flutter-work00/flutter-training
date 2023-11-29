import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/application/usecase/usecase.dart';
import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';

final fetchWeatherForecastUsecaseProvider =
    Provider.autoDispose<FetchWeatherForecastUsecase>(
  (ref) => FetchWeatherForecastUsecaseImpl(
    weatherForecastRepository: ref.watch(weatherForecastRepositoryProvider),
  ),
);

abstract class FetchWeatherForecastUsecase {
  WeatherInformation execute();
}
