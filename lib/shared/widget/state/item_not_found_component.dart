import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemNotFoundComponent extends StatelessWidget {
  const ItemNotFoundComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Assets.images.empty.productEmpty.image(),
        Text("Produk Belum Tersedia"),
        SizedBox(
          height: Space.xxl,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: Size(60.w, 35.sp)),
          onPressed: () {
            // context.router.pushNamed(RouteName.product);
          },
          child: Text("Tambahkan Produk"),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
