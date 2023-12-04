// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'weather_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherInformationImpl _$$WeatherInformationImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WeatherInformationImpl',
      json,
      ($checkedConvert) {
        final val = _$WeatherInformationImpl(
          weatherCondition: $checkedConvert('weather_condition',
              (v) => $enumDecodeNullable(_$WeatherConditionEnumMap, v)),
          maxTemperature: $checkedConvert('max_temperature', (v) => v as int?),
          minTemperature: $checkedConvert('min_temperature', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'weatherCondition': 'weather_condition',
        'maxTemperature': 'max_temperature',
        'minTemperature': 'min_temperature'
      },
    );

Map<String, dynamic> _$$WeatherInformationImplToJson(
        _$WeatherInformationImpl instance) =>
    <String, dynamic>{
      'weather_condition': _$WeatherConditionEnumMap[instance.weatherCondition],
      'max_temperature': instance.maxTemperature,
      'min_temperature': instance.minTemperature,
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.sunny: 'sunny',
};
