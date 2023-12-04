import 'package:flutter_training/lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_information.freezed.dart';
part 'weather_information.g.dart';

@freezed
class WeatherInformation with _$WeatherInformation {
  factory WeatherInformation({
    required WeatherCondition? weatherCondition,
    required int? maxTemperature,
    required int? minTemperature,
  }) = _WeatherInformation;

  factory WeatherInformation.fromJson(Map<String, dynamic> json) =>
      _$WeatherInformationFromJson(json);
}

// class WeatherInformation {
//   const WeatherInformation({
//     required this.weatherConditionImage,
//     required this.maxTemperature,
//     required this.minTemperature,
//   });

//   factory WeatherInformation.fromJson(String json) {
//     final jsonData = jsonDecode(json) as Map<String, dynamic>;
//     final weatherCondition = WeatherCondition.values.byNameOrNull(
//       name: jsonData[WeatherInformationConst.weatherCondition] as String?,
//     );
//     final maxTemperature =
//         jsonData[WeatherInformationConst.maxTemperature] as int?;
//     final minTemperature =
//         jsonData[WeatherInformationConst.minTemperature] as int?;

//     if (weatherCondition == null) {
//       throwFormatException(
//         keyName: WeatherInformationConst.weatherCondition,
//       );
//     }
//     if (maxTemperature == null) {
//       throwFormatException(
//         keyName: WeatherInformationConst.minTemperature,
//       );
//     }
//     if (minTemperature == null) {
//       throwFormatException(
//         keyName: WeatherInformationConst.minTemperature,
//       );
//     }

//     return WeatherInformation(
//       weatherConditionImage: weatherCondition.image,
//       maxTemperature: maxTemperature.toString(),
//       minTemperature: minTemperature.toString(),
//     );
//   }

//   final Widget? weatherConditionImage;
//   final String? maxTemperature;
//   final String? minTemperature;
// }
