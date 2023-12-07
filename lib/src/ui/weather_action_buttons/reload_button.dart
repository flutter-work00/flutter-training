import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/providers/providers.dart';
import 'package:flutter_training/src/ui/weather_action_buttons/weather_action_buttons.dart';
import 'package:flutter_training/src/utilities/constants/constant.dart';

class ReloadButton extends ConsumerWidget {
  const ReloadButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WeatherActionButtonsFlame(
      buttonText: WeatherActionButtonsConst.reloadButton,
      pressedFunction: () =>
          ref.read(weatherInformationControllerProvider).fetchWeatherForecast(),
    );
  }
}
