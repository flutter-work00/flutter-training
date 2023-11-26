import 'package:flutter/material.dart';
import 'package:flutter_training/src/utility/extension/build_context.dart';

class WeatherActionButtonsFlame extends StatelessWidget {
  const WeatherActionButtonsFlame({required String buttonText, super.key})
      : _buttonText = buttonText;

  final String _buttonText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Text(
          _buttonText,
          style: context.textTheme.labelLarge!.copyWith(color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
