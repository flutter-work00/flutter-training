import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/lib.dart';
import 'package:flutter_training/src/plugins/yumemi_weather/yumemi_weather_remote_data_source.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        weatherForecastRemoteDataSourceProvider.overrideWithValue(
          YumemiWeatherRemoteDataSource(
            weatherClient: YumemiWeatherService.yumemiWeather,
          ),
        ),
      ],
      child: const MainApp(),
    ),
  );
}
