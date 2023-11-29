import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/weather_action_buttons/weather_action_buttons.dart'
    as buttons;
import 'package:flutter_training/src/ui/weather_forecast_result/weather_forecast_result.dart';

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
      child: ForecastResult(temperatureTextKey: _temperatureTextKey),
    );
  }
}

class _WeatherActionButtons extends StatelessWidget {
  const _WeatherActionButtons({
    required Offset temperatureTextPosition,
    required Size temperatureTextSize,
  })  : _temperatureTextPosition = temperatureTextPosition,
        _temperatureTextSize = temperatureTextSize;

  final Offset _temperatureTextPosition;
  final Size _temperatureTextSize;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        _temperatureTextPosition.dx,
        _temperatureTextPosition.dy + 80,
      ),
      child: SizedBox(
        height: _temperatureTextSize.height,
        width: _temperatureTextSize.width,
        child: const Row(
          children: [
            buttons.CloseButton(),
            buttons.ReloadButton(),
          ],
        ),
      ),
    );
  }
}
