import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_training/lib.dart';

class WeatherInformation {
  const WeatherInformation({
    required this.weatherConditionImage,
    required this.maxTemperature,
    required this.minTemperature,
  });

  factory WeatherInformation.fromJson(String json) {
    final jsonData = jsonDecode(json) as Map<String, dynamic>;
    final weatherCondition = WeatherCondition.values.byNameOrNull(
      name: jsonData[WeatherInformationConst.weatherCondition] as String?,
    );
    final maxTemperature =
        jsonData[WeatherInformationConst.maxTemperature] as int?;
    final minTemperature =
        jsonData[WeatherInformationConst.minTemperature] as int?;

    if (weatherCondition == null) {
      throwFormatException(
        keyName: WeatherInformationConst.weatherCondition,
      );
    }
    if (maxTemperature == null) {
      throwFormatException(
        keyName: WeatherInformationConst.minTemperature,
      );
    }
    if (minTemperature == null) {
      throwFormatException(
        keyName: WeatherInformationConst.minTemperature,
      );
    }

    return WeatherInformation(
      weatherConditionImage: weatherCondition.image,
      maxTemperature: maxTemperature.toString(),
      minTemperature: minTemperature.toString(),
    );
  }

  final Widget? weatherConditionImage;
  final String? maxTemperature;
  final String? minTemperature;
}
