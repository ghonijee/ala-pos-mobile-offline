import 'package:ala_pos/app/screens/splash_screen.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return BaseUI(
        themeMode: ThemeMode.light,
        builder: (context, themeLight, themeDark, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeLight,
            darkTheme: themeDark,
            themeMode: themeMode,
            home: SplashScreen(),
          );
        },
      );
    });
  }
}
