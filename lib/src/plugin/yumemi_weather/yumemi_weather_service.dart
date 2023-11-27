import 'package:yumemi_weather/yumemi_weather.dart';

class YumemiWeatherService {
  YumemiWeatherService._();

  static YumemiWeather? _yumemiWeather;

  static YumemiWeather get yumemiWeather => _yumemiWeather ??= YumemiWeather();
}
