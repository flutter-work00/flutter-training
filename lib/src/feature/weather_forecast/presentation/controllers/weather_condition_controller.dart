import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/feature/weather_forecast/presentation/providers/providers.dart';

final weatherConditionControllerProvider =
    Provider.autoDispose<WeatherConditionController>(
  (ref) => WeatherConditionController(
    fetchWeatherForecastUsecase: ref.watch(fetchWeatherForecastUsecaseProvider),
    forecastResultImageNotifier:
        ref.watch(weatherConditionImageProvider.notifier),
  ),
);

class WeatherConditionController {
  WeatherConditionController({
    required FetchWeatherForecastUsecase fetchWeatherForecastUsecase,
    required WeatherConditionImageNotifier forecastResultImageNotifier,
  })  : _fetchWeatherForecastUsecase = fetchWeatherForecastUsecase,
        _forecastResultImageNotifier = forecastResultImageNotifier;

  final FetchWeatherForecastUsecase _fetchWeatherForecastUsecase;
  final WeatherConditionImageNotifier _forecastResultImageNotifier;

  void fetchWeatherForecastImage() {
    try {
      final weatherCondition = _fetchWeatherForecastUsecase.execute();
      _forecastResultImageNotifier.saveForecastResultImage(
        weatherCondition: weatherCondition,
      );
    } on WeatherForecastException catch (e) {
      debugPrint(e.toString());
    }
  }
}
