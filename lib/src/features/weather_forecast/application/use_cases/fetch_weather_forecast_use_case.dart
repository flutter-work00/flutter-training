import 'package:flutter_training/lib.dart';

class FetchWeatherForecastUseCase {
  FetchWeatherForecastUseCase({
    required WeatherForecastRepository weatherForecastRepository,
  }) : _weatherForecastRepository = weatherForecastRepository;

  final WeatherForecastRepository _weatherForecastRepository;

  WeatherInformation execute() {
    return _weatherForecastRepository
        .fetchWeatherForecast(
          weatherForecastRequest: WeatherForecastRequest.create(),
        )
        .unwrap as WeatherInformation;
  }
}
