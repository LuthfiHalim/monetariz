import 'package:flutter/material.dart';
import 'package:monetariz/utilities/layout_builder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: SettingsMobileScreen());
  }
}

class SettingsMobileScreen extends StatelessWidget {
  const SettingsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
