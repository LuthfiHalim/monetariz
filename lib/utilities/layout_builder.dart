import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tab;
  final Widget? web;

  /// mobile maxWidth 600px
  ///
  /// tab maxWidth 800px
  ///
  /// web maxWidth > 800px
  const MyLayoutBuilder({
    Key? key,
    required this.mobile,
    this.tab,
    this.web,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return mobile;
        } else if (constraints.maxWidth <= 800) {
          return tab ?? web ?? mobile;
        } else {
          return web ?? mobile;
        }
      },
    );
  }
}
