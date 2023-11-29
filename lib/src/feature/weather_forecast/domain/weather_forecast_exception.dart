import 'package:flutter_training/src/utility/constant/constant.dart';
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
          code: WeatherForecastExceptionConst.invalidParameterCode,
          message: WeatherForecastExceptionConst.invalidParameterMessage,
        );
}

class UnknownException extends WeatherForecastException {
  UnknownException()
      : super(
          code: WeatherForecastExceptionConst.unknownCode,
          message: WeatherForecastExceptionConst.unknownMessage,
        );
}

WeatherForecastException onWeatherForecastException({
  required YumemiWeatherError error,
}) =>
    switch (error) {
      YumemiWeatherError.invalidParameter => InvalidParameterException(),
      YumemiWeatherError.unknown => UnknownException(),
    };
