import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/state/state.dart';

final weatherInformationProvider = NotifierProvider.autoDispose<
    WeatherInformationNotifier, WeatherInformationState>(
  WeatherInformationNotifier.new,
);
