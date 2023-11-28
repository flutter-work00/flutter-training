import 'package:flutter/material.dart';
import 'package:flutter_training/src/utility/extension/build_context.dart';

class WeatherActionButtonsFlame extends StatelessWidget {
  const WeatherActionButtonsFlame({
    required String buttonText,
    required VoidCallback pressedFunction,
    super.key,
  })  : _buttonText = buttonText,
        _pressedFunction = pressedFunction;

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
