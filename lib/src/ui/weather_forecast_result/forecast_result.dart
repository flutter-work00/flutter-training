import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_forecast_result/weather_forecast_result.dart';

class ForecastResult extends StatelessWidget {
  const ForecastResult({required GlobalKey temperatureTextKey, super.key})
      : _temperatureTextKey = temperatureTextKey;

  final GlobalKey _temperatureTextKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ForecastResultImage(),
        Row(
          key: _temperatureTextKey,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [MinTemperature(), MaxTemperature()],
        ),
      ],
    );
  }
}
