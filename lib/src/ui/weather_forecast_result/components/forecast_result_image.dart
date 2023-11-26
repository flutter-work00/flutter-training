import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/feature/weather_forecast/presentation/providers/providers.dart';

class ForecastResultImage extends StatelessWidget {
  const ForecastResultImage({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.5,
      child: AspectRatio(
        aspectRatio: 1,
        child: Consumer(
          builder: (context, ref, _) {
            return ref
                    .watch(weatherConditionImageProvider)
                    .weatherConditionImage ??
                const Placeholder();
          },
        ),
      ),
    );
  }
}
