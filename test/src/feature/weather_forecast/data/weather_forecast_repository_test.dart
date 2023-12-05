import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/src/features/weather_forecast/data/data.dart';
import 'package:flutter_training/src/features/weather_forecast/domain/domain.dart';
import 'package:flutter_training/src/plugins/yumemi_weather/yumemi_weather_remote_data_source.dart';
import 'package:flutter_training/src/utilities/utilities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

import 'weather_forecast_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<YumemiWeatherRemoteDataSource>()])
void main() {
  final mockYumemiWeatherRemoteDataSource = MockYumemiWeatherRemoteDataSource();
  final sut = WeatherForecastRepository(
    weatherForecastDatasouce: mockYumemiWeatherRemoteDataSource,
  );
  final weatherForecastRequest = WeatherForecastRequest(
    area: 'tokyo',
    date: DateTime(2023, 12, 4).toIso8601String(),
  );
  WeatherInformation fetchWeatherForecast() =>
      mockYumemiWeatherRemoteDataSource.fetchWeatherForecast(
        weatherForecastRequest: weatherForecastRequest,
      );
  final weatherInformation = WeatherInformation(
    weatherCondition: WeatherCondition.cloudy,
    maxTemperature: 20,
    minTemperature: 10,
  );

  test('dataSourceから情報を入手する', () {
    // Arrange
    final expectedResponse =
        Result<WeatherInformation, WeatherForecastException>.success(
      value: weatherInformation,
    );
    when(fetchWeatherForecast()).thenReturn(weatherInformation);

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );

    // Assert
    expect(response, expectedResponse);
  });
  test(
      'dataSourceから[YumemiWeatherError.invalidParameter]がスローされた場合、'
      '[InvalidParameterExceptionResult]を格納した[Result.failure]を返す', () {
    // Arrange
    when(fetchWeatherForecast()).thenThrow(YumemiWeatherError.invalidParameter);

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );

    // Assert
    expect(response.exceptionOrNull, isA<InvalidParameterException>());
  });
  test(
      'dataSourceから[YumemiWeatherError.unknown]がスローされた場合、'
      '[UnknownException]を格納した[Result.failure]を返す', () {
    // Arrange
    when(fetchWeatherForecast()).thenThrow(YumemiWeatherError.unknown);

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );

    // Assert
    expect(response.exceptionOrNull, isA<UnknownException>());
  });
  test(
      'dataSource実行中に[CheckedFromJsonException]がスローされた場合、'
      '[InvalidResponseException]を格納した[Result.failure]を返す', () {
    // Arrange
    when(fetchWeatherForecast()).thenThrow(
      CheckedFromJsonException({}, null, '', ''),
    );

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );

    // Assert
    expect(response.exceptionOrNull, isA<InvalidResponseException>());
  });
  test(
      'dataSource実行中に[FormatException]がスローされた場合、'
      '[InvalidResponseException]を格納した[Result.failure]を返す', () {
    // Arrange
    when(fetchWeatherForecast()).thenThrow(const FormatException());

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );

    // Assert
    expect(response.exceptionOrNull, isA<InvalidResponseException>());
  });
  test(
      'dataSource実行中に[Exception]がスローされた場合、'
      '[UnknownException]を格納した[Result.failure]を返す', () {
    // Arrange
    when(fetchWeatherForecast()).thenThrow(Exception());

    // Act
    final response = sut.fetchWeatherForecast(
      weatherForecastRequest: weatherForecastRequest,
    );

    // Assert
    expect(response.exceptionOrNull, isA<UnknownException>());
  });
}
