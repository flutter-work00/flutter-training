import 'package:flutter/material.dart';
import 'package:flutter_training/src/utilities/utilities.dart';

class AppDialogFlame extends StatelessWidget {
  const AppDialogFlame({required Widget content, super.key})
      : _content = content;

  final Widget _content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.center,
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      elevation: AppEmpty.elevation,
      scrollable: true,
      content: _content,
    );
  }
}
