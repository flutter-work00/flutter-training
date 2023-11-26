import 'package:flutter/material.dart';

class ForecastResultImage extends StatelessWidget {
  const ForecastResultImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      widthFactor: 0.5,
      child: AspectRatio(
        aspectRatio: 1,
        child: Placeholder(),
      ),
    );
  }
}
