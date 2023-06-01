import 'package:ala_pos/features/pos/screen/pos_main_screen.dart';
import 'package:ala_pos/shared/assets.gen.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SuccessRegisterScreen extends StatelessWidget {
  const SuccessRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeFoundation theme = BaseUI.of(context);
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.successIllustrator.svg(height: 30.h),
            SizedBox(
              height: Space.xxl.sp,
            ),
            Text(
              "Berhasil Tersimpan!",
              style: theme.typo.headlineSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Space.m.sp,
            ),
            Text(
              "Aplikasi kasirmu sudah siap digunakan mulai berjualan sekarang dengan Alapos!.",
              style: theme.typo.bodyLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Space.xxl.sp,
            ),
            MaterialButton(
              height: 50,
              minWidth: 70.sp,
              color: theme.color.primary,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                "Mulai Berjualan",
                style: theme.typo.labelLarge?.copyWith(color: theme.color.onPrimary),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const PosMainScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
