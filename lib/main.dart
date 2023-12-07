import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/src.dart';

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
