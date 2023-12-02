import 'package:flutter/material.dart';
import 'package:flutter_training/src/utilities/constants/constant.dart';
import 'package:flutter_training/src/utilities/extensions/extension.dart';

class TemperatureFlame extends StatelessWidget {
  const TemperatureFlame({
    required Color textColors,
    String? temperature,
    super.key,
  })  : _temperature = temperature ?? TemperatureConst.emptyTemperature,
        _textColors = textColors;

  final String _temperature;
  final Color _textColors;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            _temperature + TemperatureConst.celsius,
            style: context.textTheme.labelLarge!.copyWith(color: _textColors),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
