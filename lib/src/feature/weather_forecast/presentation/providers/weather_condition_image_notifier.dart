import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/plugin/yumemi_weather/yumemi_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_condition_image_notifier.freezed.dart';

final weatherConditionImageProvider = NotifierProvider.autoDispose<
    WeatherConditionImageNotifier, WeatherConditionImageState>(
  WeatherConditionImageNotifier.new,
);

class WeatherConditionImageNotifier
    extends AutoDisposeNotifier<WeatherConditionImageState> {
  @override
  WeatherConditionImageState build() =>
      const WeatherConditionImageState(weatherConditionImage: null);

  void saveForecastResultImage({required WeatherCondition weatherCondition}) {
    state = state.copyWith(
      weatherConditionImage: weatherCondition.image,
    );
  }
}

@freezed
class WeatherConditionImageState with _$WeatherConditionImageState {
  const factory WeatherConditionImageState({
    required Widget? weatherConditionImage,
  }) = _WeatherConditionImageState;
  const WeatherConditionImageState._();
}
