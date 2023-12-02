import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/application/providers/providers.dart';
import 'package:flutter_training/src/features/weather_forecast/application/use_cases/use_case.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/providers/providers.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/state/state.dart';
import 'package:flutter_training/src/ui/common_components/dialog/dialog.dart';
import 'package:flutter_training/src/utilities/utility.dart';

final weatherInformationControllerProvider =
    Provider.autoDispose<WeatherInformationController>(
  (ref) => WeatherInformationController(
    fetchWeatherForecastUsecase: ref.watch(fetchWeatherForecastUseCaseProvider),
    forecastResultImageNotifier: ref.watch(weatherInformationProvider.notifier),
  ),
);

class WeatherInformationController {
  WeatherInformationController({
    required FetchWeatherForecastUseCase fetchWeatherForecastUsecase,
    required WeatherInformationNotifier forecastResultImageNotifier,
  })  : _fetchWeatherForecastUsecase = fetchWeatherForecastUsecase,
        _forecastResultImageNotifier = forecastResultImageNotifier;

  final FetchWeatherForecastUseCase _fetchWeatherForecastUsecase;
  final WeatherInformationNotifier _forecastResultImageNotifier;

  void fetchWeatherForecast() {
    try {
      final weatherInformation = _fetchWeatherForecastUsecase.execute();
      _forecastResultImageNotifier.saveWeatherInformation(
        weatherInformation: weatherInformation,
      );
    } on WeatherForecastException catch (e) {
      // ignore: discarded_futures
      showErrorDialog(
        context: weatherPageContext,
        errorDialog: ErrorDialog(message: e.message),
      );
    }
  }
}
