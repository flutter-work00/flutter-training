import 'package:flutter/material.dart';

Future<void> showErrorDialog({
  required BuildContext context,
  required Widget errorDialog,
}) async {
  await showGeneralDialog<void>(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    pageBuilder: (context, animation, _) => const SizedBox.shrink(),
    transitionBuilder: (context, animation, _, child) {
      return Transform.scale(
        scale: Curves.easeInOut.transform(animation.value),
        child: errorDialog,
      );
    },
  );
}
