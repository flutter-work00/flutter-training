import 'package:flutter/material.dart';
import 'package:flutter_training/src/utilities/utilities.dart';

class WeatherActionButton extends StatelessWidget {
  const WeatherActionButton({
    required String buttonText,
    required VoidCallback pressedFunction,
    super.key,
  })  : _buttonText = buttonText,
        _pressedFunction = pressedFunction;

  factory WeatherActionButton.close({required VoidCallback pressedFunction}) =>
      WeatherActionButton(
        buttonText: WeatherActionButtonsConst.closeButton,
        pressedFunction: pressedFunction,
      );

  factory WeatherActionButton.reload({required VoidCallback pressedFunction}) =>
      WeatherActionButton(
        buttonText: WeatherActionButtonsConst.reloadButton,
        pressedFunction: pressedFunction,
      );

  final String _buttonText;
  final VoidCallback _pressedFunction;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: _pressedFunction,
        child: Text(
          _buttonText,
          style: context.textTheme.labelLarge!
              .copyWith(color: context.colorTheme.weatherActionButton),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
