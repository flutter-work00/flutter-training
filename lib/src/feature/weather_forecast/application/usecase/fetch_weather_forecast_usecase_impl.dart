import 'package:flutter_training/src/feature/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:flutter_training/src/utility/utility.dart';

class FetchWeatherForecastUsecaseImpl implements FetchWeatherForecastUsecase {
  FetchWeatherForecastUsecaseImpl({
    required WeatherForecastRepository weatherForecastRepository,
  }) : _weatherForecastRepository = weatherForecastRepository;

  final WeatherForecastRepository _weatherForecastRepository;

  @override
  WeatherCondition execute() {
    return _weatherForecastRepository.fetchWeatherCondition().unwrap
        as WeatherCondition;
  }
}
