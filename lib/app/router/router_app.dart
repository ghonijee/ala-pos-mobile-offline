import 'package:ala_pos/app/screens/splash_screen.dart';
import 'package:ala_pos/features/onboarding/screen/success_register_screen.dart';
import 'package:ala_pos/features/pos/screen/pos_main_screen.dart';
import 'package:flutter/material.dart';

class RouterApp {
  static Map<String, Widget Function(BuildContext)> init() => {
        "/splashscreen": (p0) => SplashScreen(),
        "/success_register_screen": (p0) => SuccessRegisterScreen(),
        "/pos_main_screen": (p0) => PosMainScreen(),
      };
}
