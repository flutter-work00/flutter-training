import 'package:flutter_training/src/utility/exceptions/exceptions.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastException implements AppException {
  WeatherForecastException({required this.code, required this.message});
  @override
  final String code;
  @override
  final String message;
}

class InvalidParameterException extends WeatherForecastException {
  InvalidParameterException()
      : super(
          code: 'invalid-parameter',
          message: '対象のエリアはサポートしていません',
        );
}

class UnknownException extends WeatherForecastException {
  UnknownException()
      : super(
          code: 'unknown',
          message: 'エラーが発生しました',
        );
}

WeatherForecastException onWeatherForecastException({
  required YumemiWeatherError error,
}) =>
    switch (error) {
      YumemiWeatherError.invalidParameter => InvalidParameterException(),
      YumemiWeatherError.unknown => UnknownException(),
    };
