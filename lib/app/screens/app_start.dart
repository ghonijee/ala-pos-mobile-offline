import 'package:ala_pos/app/screens/splash_screen.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../router/app_router.dart';

class AppStart extends StatelessWidget {
  AppStart({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return BaseUI(
        themeMode: ThemeMode.light,
        builder: (context, themeLight, themeDark, themeMode) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: themeLight,
            darkTheme: themeDark,
            themeMode: themeMode,
            routerConfig: _appRouter.config(),
          );
        },
      );
    });
  }
}
