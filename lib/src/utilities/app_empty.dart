import 'package:flutter_training/src/features/weather_forecast/domain/entities/entities.dart';

class AppEmpty {
  const AppEmpty._();

  static const elevation = 0.0;
  static const temperature = '**';
  static final weatherInformation = WeatherInformation(
    weatherCondition: null,
    maxTemperature: null,
    minTemperature: null,
  );
}
