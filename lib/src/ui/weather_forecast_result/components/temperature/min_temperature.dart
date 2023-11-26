import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_forecast_result/components/temperature/temperature.dart';

class MinTemperature extends StatelessWidget {
  const MinTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemperatureFlame(textColors: Colors.blue);
  }
}
