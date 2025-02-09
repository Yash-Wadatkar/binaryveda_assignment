import 'package:flutter/material.dart';

/// widget to show snackbar on the screen
void showSnackBAR(BuildContext context, String content) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Text(content),
      showCloseIcon: true,
      duration: Duration(seconds: 3),
    ));
}
