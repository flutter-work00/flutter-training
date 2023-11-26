import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_action_buttons/weather_action_buttons.dart';
import 'package:flutter_training/src/utility/constant/constant.dart';

class ReloadButton extends StatelessWidget {
  const ReloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const WeatherActionButtonsFlame(
      buttonText: WeatherActionButtonsConst.reloadButton,
    );
  }
}
