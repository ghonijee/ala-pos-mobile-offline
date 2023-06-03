import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../shared/assets.gen.dart';
import 'pos_cart_screen.dart';

class PosSuccessScreen extends StatelessWidget {
  const PosSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Scaffold(
      backgroundColor: theme.color.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // height: 65.h,
              width: 90.w,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(color: theme.color.surface, borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  Assets.images.agree.svg(height: 15.h),
                  FreeSpace.h(Space.xxl),
                  Text(
                    "Pembayaran Berhasil",
                    style: theme.typo.headlineSmall?.copyWith(color: theme.color.primary),
                  ),
                  FreeSpace.h(Space.m),
                  SizedBox(
                    width: 50.w,
                    child: Text(
                      "Transaksi berhasil dibuat. Silakan cetak struk!",
                      style: theme.typo.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FreeSpace.h(Space.xl),
                  Divider(),
                  FreeSpace.h(Space.l),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Space.xl),
                    child: Column(
                      children: [
                        ResumeLabelValueWidget(label: "Total", value: "Rp. 80.000"),
                        FreeSpace.h(Space.l),
                        ResumeLabelValueWidget(label: "Bayar", value: "Rp. 80.000"),
                        FreeSpace.h(Space.l),
                        ResumeLabelValueWidget(label: "Kembalian", value: "Rp. 0"),
                      ],
                    ),
                  ),
                  FreeSpace.h(Space.xl),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Space.s,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonComponent(
                          onPress: () {},
                          text: "Cetak",
                          customSize: Size(38.w, 48),
                        ),
                        ButtonComponent(
                          onPress: () {
                            // context.router.navigateNamed(PosRouteName.Pos);
                          },
                          text: "Selesai",
                          customSize: Size(38.w, 48),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
