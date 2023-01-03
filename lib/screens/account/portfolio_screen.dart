import 'package:flutter/material.dart';
import 'package:monetariz/utilities/layout_builder.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: AccountMobileScreen());
  }
}

class AccountMobileScreen extends StatelessWidget {
  const AccountMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Acount'),
    );
  }
}
