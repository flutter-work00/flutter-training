import 'package:flutter_training/src/utility/constant/constant.dart';
import 'package:flutter_training/src/utility/exceptions/exceptions.dart';

class WeatherForecastException implements AppException {
  WeatherForecastException({required this.code, required this.message});
  @override
  final String code;
  @override
  final String message;
}

class FetchWeatherConditionException extends WeatherForecastException {
  FetchWeatherConditionException()
      : super(
          code: 'fetch-weather-condition-exception',
          message: ErrorMessageConst.fetchWeatherCondition,
        );
}
