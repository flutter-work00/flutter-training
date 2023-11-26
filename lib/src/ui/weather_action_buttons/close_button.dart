import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_action_buttons/weather_action_buttons.dart';
import 'package:flutter_training/src/utility/constant/constant.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const WeatherActionButtonsFlame(
      buttonText: WeatherActionButtonsConst.closeButton,
    );
  }
}
