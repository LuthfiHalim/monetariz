
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monetariz/screens/home/home_screen.dart';
import 'package:monetariz/screens/main_screen.dart';
import 'package:monetariz/screens/account/portfolio_screen.dart';
import 'package:monetariz/screens/report/report_screen.dart';
import 'package:monetariz/screens/settings/settings_screen.dart';
import 'package:monetariz/screens/transaction/transaction_screen.dart';

import 'pages.dart';

class PageRouter {
  RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Pages.main:
        return _buildRoute(settings, const MainScreen());
      case Pages.home:
        return _buildRoute(settings, const HomeScreen());
      case Pages.account:
        return _buildRoute(settings, const AccountScreen());
      case Pages.report:
        return _buildRoute(settings, const ReportScreen());
      case Pages.settings:
        return _buildRoute(settings, const SettingsScreen());
      case Pages.transaction:
        return _buildRoute(settings, const TransactionScreen());
      default:
        return null;
    }
  }

  PageRouteBuilder _buildRoute(RouteSettings settings, Widget builder) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          builder,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(
          CurveTween(curve: curve),
        );
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}