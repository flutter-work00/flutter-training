import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/data/data.dart';

final weatherForecastRepositoryProvider =
    Provider.autoDispose<WeatherForecastRepository>(
  (ref) => WeatherForecastRepository(
    weatherForecastDatasouce:
        ref.watch(weatherForecastRemoteDataSourceProvider),
  ),
);
