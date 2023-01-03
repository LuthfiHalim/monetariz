import 'package:flutter/material.dart';
import 'package:monetariz/utilities/layout_builder.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: ReportMobileScreen());
  }
}

class ReportMobileScreen extends StatelessWidget {
  const ReportMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Report'),
    );
  }
}
