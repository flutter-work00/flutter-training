import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/src/features/weather_forecast/presentation/providers/providers.dart';
import 'package:flutter_training/src/plugins/go_router/go_router.dart';
import 'package:flutter_training/src/ui/weather_forecast/weather_forecast.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});
  // ignore: diagnostic_describe_all_properties
  static final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  State<WeatherPage> createState() => _WeatherPage();
}

class _WeatherPage extends State<WeatherPage> {
  final _temperatureTextKey = GlobalKey();
  Offset? _temperatureTextPosition;
  Size? _temperatureTextSize;

  void _fetchTemperatureTextPosition() {
    final renderBox =
        _temperatureTextKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return;
    }
    setState(() {
      _temperatureTextPosition = renderBox.localToGlobal(Offset.zero);
      _temperatureTextSize = _temperatureTextKey.currentContext!.size;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchTemperatureTextPosition();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: WeatherPage.scaffoldKey,
      body: Stack(
        children: [
          _WeatherConditionResult(temperatureTextKey: _temperatureTextKey),
          if (_temperatureTextPosition != null) ...{
            _WeatherActionButtons(
              temperatureTextPosition: _temperatureTextPosition!,
              temperatureTextSize: _temperatureTextSize!,
            ),
          },
        ],
      ),
    );
  }
}

class _WeatherConditionResult extends StatelessWidget {
  const _WeatherConditionResult({required GlobalKey temperatureTextKey})
      : _temperatureTextKey = temperatureTextKey;

  final GlobalKey _temperatureTextKey;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: WeatherForecastResult(temperatureTextKey: _temperatureTextKey),
    );
  }
}

class _WeatherActionButtons extends ConsumerWidget {
  const _WeatherActionButtons({
    required Offset temperatureTextPosition,
    required Size temperatureTextSize,
  })  : _temperatureTextPosition = temperatureTextPosition,
        _temperatureTextSize = temperatureTextSize;

  final Offset _temperatureTextPosition;
  final Size _temperatureTextSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Transform.translate(
      offset: Offset(
        _temperatureTextPosition.dx,
        _temperatureTextPosition.dy + 80,
      ),
      child: SizedBox(
        height: _temperatureTextSize.height,
        width: _temperatureTextSize.width,
        child: Row(
          children: [
            WeatherActionButton.close(
              pressedFunction: () =>
                  GoRouterService.toLaunchPage(context: context),
            ),
            WeatherActionButton.reload(
              pressedFunction: () => ref
                  .read(weatherInformationControllerProvider)
                  .fetchWeatherForecast(),
            ),
          ],
        ),
      ),
    );
  }
}
