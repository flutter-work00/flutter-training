import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/feature/weather_forecast/presentation/providers/providers.dart';
import 'package:flutter_training/src/ui/common_components/dialog/dialog.dart';
import 'package:flutter_training/src/utility/utility.dart';

final weatherInformationControllerProvider =
    Provider.autoDispose<WeatherInformationController>(
  (ref) => WeatherInformationController(
    fetchWeatherForecastUsecase: ref.watch(fetchWeatherForecastUsecaseProvider),
    forecastResultImageNotifier: ref.watch(weatherInformationProvider.notifier),
  ),
);

class WeatherInformationController {
  WeatherInformationController({
    required FetchWeatherForecastUsecase fetchWeatherForecastUsecase,
    required WeatherInformationNotifier forecastResultImageNotifier,
  })  : _fetchWeatherForecastUsecase = fetchWeatherForecastUsecase,
        _forecastResultImageNotifier = forecastResultImageNotifier;

  final FetchWeatherForecastUsecase _fetchWeatherForecastUsecase;
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
