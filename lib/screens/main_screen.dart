import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monetariz/cubit/main/cubit.dart';
import 'package:monetariz/screens/account/portfolio_screen.dart';
import 'package:monetariz/screens/home/home_screen.dart';
import 'package:monetariz/screens/report/report_screen.dart';
import 'package:monetariz/screens/settings/settings_screen.dart';
import 'package:monetariz/screens/transaction/transaction_screen.dart';
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
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Scaffold(
        body: _body(state.navigationBarState),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.navigationBarState,
          onTap: (value) {
            context.read<MainCubit>().setNavigationBarState(value);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.swap_horizontal_circle_rounded),
                label: 'Transaction'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grading_rounded), label: 'Report'),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded), label: 'Settings'),
          ],
        ),
      );
    });
  }

  Widget _body(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const TransactionScreen();
      case 2:
        return const ReportScreen();
      case 3:
        return const AccountScreen();
      case 4:
        return const SettingsScreen();
      default:
        return Container();
    }
  }
}
