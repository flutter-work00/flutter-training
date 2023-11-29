import 'package:flutter_training/src/utility/constant/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_request.freezed.dart';
part 'weather_request.g.dart';

@freezed
class WeatherRequest with _$WeatherRequest {
  const factory WeatherRequest({
    required String area,
    required String date,
  }) = _WeatherRequest;

  factory WeatherRequest.create() {
    return WeatherRequest(
      area: WeatherRequestConst.sampleArea,
      date: DateTime.now().toIso8601String(),
    );
  }
  factory WeatherRequest.fromJson(Map<String, dynamic> json) =>
      _$WeatherRequestFromJson(json);
}
