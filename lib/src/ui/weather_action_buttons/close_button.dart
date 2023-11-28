import 'package:flutter/material.dart';
import 'package:flutter_training/src/plugin/go_router/go_router.dart';
import 'package:flutter_training/src/ui/weather_action_buttons/weather_action_buttons.dart';
import 'package:flutter_training/src/utility/constant/constant.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return WeatherActionButtonsFlame(
      buttonText: WeatherActionButtonsConst.closeButton,
      pressedFunction: () async =>
          GoRouterService.toLaunchPage(context: context),
    );
  }
}
