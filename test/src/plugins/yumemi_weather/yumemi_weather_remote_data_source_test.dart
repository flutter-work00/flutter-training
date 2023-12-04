import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/entities/entities.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/values/values.dart';
import 'package:flutter_training/src/plugins/yumemi_weather/yumemi_weather_remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

import 'yumemi_weather_remote_data_source_test.mocks.dart';

@GenerateNiceMocks([MockSpec<YumemiWeather>()])
void main() {
  final mockYumemiWeather = MockYumemiWeather();
  final sut = YumemiWeatherRemoteDataSource(weatherClient: mockYumemiWeather);
  final weatherForecastRequest = WeatherForecastRequest(
    area: 'tokyo',
    date: DateTime(2023, 12, 4).toIso8601String(),
  );
  final targetJson = jsonEncode({
    'area': 'tokyo',
    'date': '2023-12-04T00:00:00.000',
  });

  final expectedResponse = WeatherInformation(
    weatherCondition: WeatherCondition.cloudy,
    maxTemperature: 20,
    minTemperature: 10,
  );

  test('正常な天気情報の取得ができることを確認する', () {
    // Arrange
    const weatherJson = '''
      {
        "weather_condition": "cloudy",
        "max_temperature": 20,
        "min_temperature": 10,
        "data": "2023-12-04T00:00:00.000"
      }
      ''';
    when(
      mockYumemiWeather.fetchWeather(targetJson),
    ).thenReturn(weatherJson);

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );
    debugPrint(response.toString());

    // Assert
    expect(response, expectedResponse);
  });
  test(
    '不正なRequest時にYumemiWeatherError.invalidParameterの例外を出す',
    () {
      // Arrange
      when(
        mockYumemiWeather.fetchWeather(any),
      ).thenThrow(YumemiWeatherError.invalidParameter);

      // Act
      // Assert
      expect(
        () => sut.fetchWeatherForecast(
          weatherForecastRequest: weatherForecastRequest,
        ),
        throwsA(YumemiWeatherError.invalidParameter),
      );
    },
  );
  test(
    'APIエラー発生時にYumemiWeatherError.unknownの例外を出す',
    () {
      // Arrange
      when(
        mockYumemiWeather.fetchWeather(any),
      ).thenThrow(YumemiWeatherError.unknown);

      // Act
      // Assert
      expect(
        () => sut.fetchWeatherForecast(
          weatherForecastRequest: weatherForecastRequest,
        ),
        throwsA(YumemiWeatherError.unknown),
      );
    },
  );
}
