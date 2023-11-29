import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_forecast_result/components/temperature/temperature.dart';
import 'package:flutter_training/src/utility/utility.dart';

class MinTemperature extends StatelessWidget {
  const MinTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return TemperatureFlame(textColors: context.colorTheme.minTemperature!);
  }
}
