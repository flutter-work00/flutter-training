import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/presentation/providers/providers.dart';
import 'package:flutter_training/src/ui/weather_forecast_result/components/temperature/temperature.dart';
import 'package:flutter_training/src/utility/utility.dart';

class MaxTemperature extends ConsumerWidget {
  const MaxTemperature({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TemperatureFlame(
      temperature: ref
          .watch(weatherInformationProvider)
          .weatherInformation
          .maxTemperature,
      textColors: context.colorTheme.maxTemperature!,
    );
  }
}
