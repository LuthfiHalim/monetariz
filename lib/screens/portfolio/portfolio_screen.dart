import 'package:flutter/material.dart';
import 'package:monetariz/utilities/layout_builder.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: PortfolioMobileScreen());
  }
}

class PortfolioMobileScreen extends StatelessWidget {
  const PortfolioMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
