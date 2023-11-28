import 'package:flutter/material.dart';
import 'package:flutter_training/src/plugin/go_router/go_router.dart';
import 'package:flutter_training/src/utility/utility.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});
  @override
  State<LaunchPage> createState() => _LaunchPage();
}

class _LaunchPage extends State<LaunchPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    await GoRouterService.toWeatherPage(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: CanPopStatus.unPop.value,
      child: ColoredBox(color: context.colorTheme.launchPageBackground!),
    );
  }
}
