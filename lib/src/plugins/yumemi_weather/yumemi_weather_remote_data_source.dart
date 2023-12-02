import 'package:flutter_training/src/features/weather_forecast/data/data_sources/data_sources.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class YumemiWeatherRemoteDataSource implements WeatherForecastRemoteDataSource {
  YumemiWeatherRemoteDataSource({required YumemiWeather weatherClient})
      : _weatherClient = weatherClient;

  final YumemiWeather _weatherClient;

  @override
  String fetchWeatherForecast({required String targetData}) {
    return _weatherClient.fetchWeather(targetData);
  }
}
