import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/application/providers/providers.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/controllers/controllers.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/providers/providers.dart';

final weatherInformationControllerProvider =
    Provider.autoDispose<WeatherInformationController>(
  (ref) => WeatherInformationController(
    fetchWeatherForecastUsecase: ref.watch(fetchWeatherForecastUseCaseProvider),
    forecastResultImageNotifier: ref.watch(weatherInformationProvider.notifier),
  ),
);
