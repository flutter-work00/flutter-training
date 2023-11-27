import 'package:flutter/material.dart';
import 'package:flutter_training/src/ui/ui.dart';
import 'package:flutter_training/src/utility/constant/constant.dart';
import 'package:go_router/go_router.dart';

class GoRouterService {
  const GoRouterService._();

  static Future<void> toHomePage({required BuildContext context}) async {
    await Future<void>.delayed(AppDuration.rootPageStayTime);
    if (!context.mounted) {
      return;
    }
    context.goNamed(RooterConst.homePageName);
  }

  static void toRootPage({required BuildContext context}) {
    context.goNamed(RooterConst.rootPageName);
  }
}
