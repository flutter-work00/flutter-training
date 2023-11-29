import 'package:flutter/material.dart';
import 'package:flutter_training/src/src.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.light(),
      routerConfig: router,
    );
  }
}
