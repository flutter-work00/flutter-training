import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/domain/entities/entities.dart';
import 'package:flutter_training/src/utility/utility.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_information_notifier.freezed.dart';

final weatherInformationProvider = NotifierProvider.autoDispose<
    WeatherInformationNotifier, WeatherInformationState>(
  WeatherInformationNotifier.new,
);

class WeatherInformationNotifier
    extends AutoDisposeNotifier<WeatherInformationState> {
  @override
  WeatherInformationState build() => const WeatherInformationState(
        weatherInformation: AppEmpty.weatherInformation,
      );

  void saveWeatherInformation({
    required WeatherInformation weatherInformation,
  }) {
    state = state.copyWith(weatherInformation: weatherInformation);
  }
}

@freezed
class WeatherInformationState with _$WeatherInformationState {
  const factory WeatherInformationState({
    required WeatherInformation weatherInformation,
  }) = _WeatherInformationState;
  const WeatherInformationState._();
}
