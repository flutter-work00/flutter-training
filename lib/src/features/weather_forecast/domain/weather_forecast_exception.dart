import 'package:flutter_training/src/utilities/constants/constant.dart';
import 'package:flutter_training/src/utilities/exceptions/exceptions.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

abstract class WeatherForecastException implements AppException {
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

class InvalidResponseException extends WeatherForecastException {
  InvalidResponseException()
      : super(
          code: WeatherForecastExceptionConst.invalidResponseCode,
          message: WeatherForecastExceptionConst.invalidResponseMessage,
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
