import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/presentation/controllers/controllers.dart';
import 'package:flutter_training/src/ui/weather_action_buttons/weather_action_buttons.dart';
import 'package:flutter_training/src/utility/constant/constant.dart';

class ReloadButton extends ConsumerWidget {
  const ReloadButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WeatherActionButtonsFlame(
      buttonText: WeatherActionButtonsConst.reloadButton,
      pressedFunction: () => ref
          .read(weatherConditionControllerProvider)
          .fetchWeatherForecastImage(),
    );
  }
}
