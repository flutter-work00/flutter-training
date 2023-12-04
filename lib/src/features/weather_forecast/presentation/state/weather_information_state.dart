import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_information_state.freezed.dart';

@freezed
class WeatherInformationState with _$WeatherInformationState {
  const factory WeatherInformationState({
    required Widget? weatherConditionImage,
    required String? maxTemperature,
    required String? minTemperature,
  }) = _WeatherInformationState;
  const WeatherInformationState._();

  factory WeatherInformationState.fromWeatherInformation({
    required WeatherInformation weatherInformation,
  }) {
    return WeatherInformationState(
      weatherConditionImage: weatherInformation.weatherCondition!.image,
      maxTemperature: weatherInformation.maxTemperature.toString(),
      minTemperature: weatherInformation.minTemperature.toString(),
    );
  }
}

class WeatherInformationNotifier
    extends AutoDisposeNotifier<WeatherInformationState> {
  @override
  WeatherInformationState build() => const WeatherInformationState(
        weatherConditionImage: null,
        maxTemperature: null,
        minTemperature: null,
      );

  void saveWeatherInformation({
    required WeatherInformation weatherInformation,
  }) {
    state = WeatherInformationState.fromWeatherInformation(
      weatherInformation: weatherInformation,
    );
  }
}
