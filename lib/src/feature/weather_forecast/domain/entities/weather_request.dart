import 'dart:convert';

import 'package:flutter_training/src/utility/constant/constant.dart';

class WeatherRequest {
  const WeatherRequest({
    required this.targetArea,
    required this.targetDate,
  });

  factory WeatherRequest.create() {
    return WeatherRequest(
      targetArea: WeatherRequestConst.sampleArea,
      targetDate: DateTime.now(),
    );
  }

  String toJson() {
    final weatherRequest = {
      WeatherRequestConst.area: targetArea,
      WeatherRequestConst.date: targetDate.toIso8601String(),
    };
    return jsonEncode(weatherRequest);
  }

  final String targetArea;
  final DateTime targetDate;
}
