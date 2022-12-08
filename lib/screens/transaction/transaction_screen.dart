import 'package:flutter/material.dart';
import 'package:monetariz/utilities/layout_builder.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: TransactionMobileScreen());
  }
}

class TransactionMobileScreen extends StatelessWidget {
  const TransactionMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
