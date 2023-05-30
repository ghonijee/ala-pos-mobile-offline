import 'package:ala_pos/shared/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../features/onboarding/screen/store_register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => StoreRegisterScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: 40.sp, maxWidth: 40.sp),
          child: Theme.of(context).brightness == Brightness.dark ? Assets.images.alaposLogoDark.svg() : Assets.images.alaposLogoLight.svg(),
        ),
      ),
    );
  }
}
