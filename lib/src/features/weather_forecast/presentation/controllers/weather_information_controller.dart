import 'package:flutter_training/src/features/weather_forecast/application/use_cases/use_cases.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/state/state.dart';
import 'package:flutter_training/src/ui/common_components/dialog/dialog.dart';
import 'package:flutter_training/src/utilities/utilities.dart';

class WeatherInformationController {
  WeatherInformationController({
    required FetchWeatherForecastUseCase fetchWeatherForecastUsecase,
    required WeatherInformationNotifier weatherInformationNotifier,
  })  : _fetchWeatherForecastUsecase = fetchWeatherForecastUsecase,
        _weatherInformationNotifier = weatherInformationNotifier;

  final FetchWeatherForecastUseCase _fetchWeatherForecastUsecase;
  final WeatherInformationNotifier _weatherInformationNotifier;

  void fetchWeatherForecast() {
    try {
      final weatherInformation = _fetchWeatherForecastUsecase.execute();
      _weatherInformationNotifier.saveWeatherInformation(
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
