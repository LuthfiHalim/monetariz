import 'package:flutter/material.dart';

import '../main.dart';

class Utils {
  static void showSnackBar(BuildContext context, String text,
      {int duration = 2}) {
    final snackBar = SnackBar(
      duration: Duration(seconds: duration),
      content: Text(text),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static BuildContext getContext() {
    return App.key.currentContext!;
  }
}