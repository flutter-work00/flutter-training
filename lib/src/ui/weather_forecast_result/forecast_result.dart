import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/providers/providers.dart';
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
          children: [
            Consumer(
              builder: (context, ref, _) => Temperature.min(
                temperature:
                    ref.watch(weatherInformationProvider).minTemperature,
              ),
            ),
            Consumer(
              builder: (context, ref, _) => Temperature.max(
                temperature:
                    ref.watch(weatherInformationProvider).maxTemperature,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
