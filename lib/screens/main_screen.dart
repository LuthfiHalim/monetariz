import 'package:flutter/material.dart';
import 'package:monetariz/utilities/layout_builder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: MainMobileScreen());
  }
}

class MainMobileScreen extends StatelessWidget {
  const MainMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
