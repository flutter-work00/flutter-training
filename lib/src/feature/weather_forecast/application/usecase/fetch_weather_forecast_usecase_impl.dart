import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/utility/utility.dart';

class FetchWeatherForecastUsecaseImpl implements FetchWeatherForecastUsecase {
  FetchWeatherForecastUsecaseImpl({
    required WeatherForecastRepository weatherForecastRepository,
  }) : _weatherForecastRepository = weatherForecastRepository;

  final WeatherForecastRepository _weatherForecastRepository;

  @override
  WeatherInformation execute() {
    return _weatherForecastRepository
        .fetchWeatherForecast(weatherRequest: WeatherRequest.create())
        .unwrap as WeatherInformation;
  }
}
