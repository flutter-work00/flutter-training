import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/data/data_sources/data_sources.dart';

final weatherForecastRemoteDataSourceProvider =
    Provider.autoDispose<WeatherForecastRemoteDataSource>(
  (ref) => throw UnimplementedError(),
);
