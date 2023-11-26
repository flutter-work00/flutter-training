import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_forecast_result/components/components.dart';

class MaxTemperature extends StatelessWidget {
  const MaxTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemperatureFlame(textColors: Colors.red);
  }
}
