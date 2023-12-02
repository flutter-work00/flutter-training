import 'package:flutter/material.dart';

mixin AfterLayoutMixin<T extends StatefulWidget> on State<T> {
  Future<void> afterLayoutFunction();

  @override
  void initState() {
    super.initState();
    // ignore: discarded_futures
    WidgetsBinding.instance.endOfFrame.then((_) async {
      await afterLayoutFunction();
    });
  }
}
