import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:monetariz/generated/l10n.dart';
import 'package:monetariz/utilities/page_router.dart';
import 'package:monetariz/utilities/themes.dart';

import 'utilities/pages.dart';
import 'utilities/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // try {
  //   await Hive.initFlutter();
  // } catch (_) {}
  runApp(Blocs.blocList(MonetarizApp()));
}

class MonetarizApp extends StatelessWidget {
  final PageRouter pageRouter = PageRouter();
  MonetarizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: App.key,
      debugShowCheckedModeBanner: false,
      title: 'Monetariz',
      theme: Themes.lightMode,
      initialRoute: Pages.main,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      navigatorObservers: [pageRouter.routeObserver],
      onGenerateRoute: pageRouter.getRoute,
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale("en"),
    );
  }
}

class App {
  static GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
}
