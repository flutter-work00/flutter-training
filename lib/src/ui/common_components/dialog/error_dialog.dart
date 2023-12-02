import 'package:flutter/material.dart';
import 'package:flutter_training/src/plugins/go_router/go_router.dart';
import 'package:flutter_training/src/ui/common_components/dialog/dialog.dart';
import 'package:flutter_training/src/utilities/constants/constant.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({required String message, super.key})
      : _titleText = message;

  final String _titleText;
  @override
  Widget build(BuildContext context) {
    return AppDialogFlame(
      content: AlertDialog(
        title: Text(_titleText),
        actions: const [
          TextButton(
            onPressed: GoRouterService.pop,
            child: Text(DialogConst.ok),
          ),
        ],
      ),
    );
  }
}
