import 'package:flutter_training/src/utilities/constants/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_request.freezed.dart';
part 'weather_forecast_request.g.dart';

@freezed
class WeatherForecastRequest with _$WeatherForecastRequest {
  const factory WeatherForecastRequest({
    required String area,
    required String date,
  }) = _WeatherForecastRequest;

  factory WeatherForecastRequest.create() {
    return WeatherForecastRequest(
      area: WeatherRequestConst.sampleArea,
      date: DateTime.now().toIso8601String(),
    );
  }
  factory WeatherForecastRequest.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastRequestFromJson(json);
}
