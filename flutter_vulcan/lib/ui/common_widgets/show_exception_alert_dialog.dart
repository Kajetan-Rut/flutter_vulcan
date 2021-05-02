import 'package:flutter/material.dart';
import 'package:flutter_vulcan/ui/common_widgets/show_alert_dialog.dart';

Future<void> showExceptionAlertDialog(
  BuildContext context, {
  @required String title,
  @required String exception,
}) =>
    showAlertDialog(
      context,
      title: title,
      content: exception,
      defaultActionText: 'Rozumiem',
    );

String _message(Exception exception) {
  if (exception != null) {
    return exception.toString();
  }
  return exception.toString();
}
