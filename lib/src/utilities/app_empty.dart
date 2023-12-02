import 'package:flutter_training/src/features/weather_forecast/domain/entities/entities.dart';

class AppEmpty {
  const AppEmpty._();

  static const elevation = 0.0;
  static const weatherInformation = WeatherInformation(
    weatherConditionImage: null,
    maxTemperature: null,
    minTemperature: null,
  );
}
