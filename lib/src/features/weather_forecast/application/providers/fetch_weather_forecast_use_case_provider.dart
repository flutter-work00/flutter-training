import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/application/use_cases/use_cases.dart';
import 'package:flutter_training/src/features/weather_forecast/data/providers/providers.dart';

final fetchWeatherForecastUseCaseProvider =
    Provider.autoDispose<FetchWeatherForecastUseCase>(
  (ref) => FetchWeatherForecastUseCase(
    weatherForecastRepository: ref.watch(weatherForecastRepositoryProvider),
  ),
);
