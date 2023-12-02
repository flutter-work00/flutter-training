import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/providers/providers.dart';
import 'package:flutter_training/src/ui/weather_forecast_result/components/temperature/temperature.dart';
import 'package:flutter_training/src/utilities/utility.dart';

class MinTemperature extends ConsumerWidget {
  const MinTemperature({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TemperatureFlame(
      temperature: ref
          .watch(weatherInformationProvider)
          .weatherInformation
          .minTemperature,
      textColors: context.colorTheme.minTemperature!,
    );
  }
}
