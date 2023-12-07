import 'package:flutter/material.dart';
import 'package:flutter_training/src/utilities/utilities.dart';
import 'package:go_router/go_router.dart';

class GoRouterService {
  const GoRouterService._();

  static void pop() {
    weatherPageContext.pop();
  }

  static Future<void> toWeatherPage({required BuildContext context}) async {
    await Future<void>.delayed(AppDuration.launchPageStayTime);
    if (!context.mounted) {
      return;
    }
    context.goNamed(RooterConst.weatherPageName);
  }

  static void toLaunchPage({required BuildContext context}) {
    context.goNamed(RooterConst.launchPageName);
  }
}
