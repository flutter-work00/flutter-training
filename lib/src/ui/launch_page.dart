import 'package:flutter/material.dart';
import 'package:flutter_training/src/plugins/go_router/go_router.dart';
import 'package:flutter_training/src/utilities/utilities.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});
  @override
  State<LaunchPage> createState() => _LaunchPage();
}

class _LaunchPage extends State<LaunchPage> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: CanPopStatus.unPop.value,
      child: ColoredBox(color: context.colorTheme.launchPageBackground!),
    );
  }

  @override
  Future<void> afterLayoutFunction() async {
    await GoRouterService.toWeatherPage(context: context);
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
  }
}
