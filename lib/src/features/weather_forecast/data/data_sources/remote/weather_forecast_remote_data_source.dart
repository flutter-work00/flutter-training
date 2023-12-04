import 'package:flutter_training/src/features/weather_forecast/domain/entities/entities.dart';

abstract interface class WeatherForecastRemoteDataSource {
  WeatherInformation fetchWeatherForecast({
    required WeatherForecastRequest weatherForecastRequest,
  });
}
