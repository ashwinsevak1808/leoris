import 'package:flutter/material.dart';
import 'package:leories/view/screens/connection.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/viewmodal/provider/search_bar_provider.dart';
import 'package:provider/provider.dart';

import 'package:leories/viewmodal/provider/onboarding_prod.dart';
import 'package:leories/viewmodal/provider/screenchange_prod.dart';
import 'package:leories/viewmodal/provider/tab_prod.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
        ChangeNotifierProvider(create: (_) => NavigateToScreen()),
        ChangeNotifierProvider(create: (_) => OnBoardingNotifier()),
        ChangeNotifierProvider(create: (_) => TabControllerProvider()),
        ChangeNotifierProvider(create: (_) => SearchBarProvider()),
      ],
      child: Consumer<ThemeNotifier>(builder: (context, ThemeNotifier notify, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: notify.darkTheme ? MainTheme.darkTheme : MainTheme.lightTheme,
          home: const WidgetConnection(),
        );
      }),
    );
  }
}
