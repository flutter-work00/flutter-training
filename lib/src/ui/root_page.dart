import 'package:flutter/material.dart';
import 'package:flutter_training/src/plugin/go_router/go_router.dart';
import 'package:flutter_training/src/utility/utility.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  @override
  State<RootPage> createState() => _RootPage();
}

class _RootPage extends State<RootPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    await GoRouterService.toHomePage(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: CanPopStatus.unPop.value,
      child: ColoredBox(color: context.colorTheme.rootPageBackground!),
    );
  }
}
