import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage(name: "StoreFormProfile")
class StoreFormProfileScreen extends StatelessWidget {
  const StoreFormProfileScreen({super.key});

  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);
    return Scaffold(
      backgroundColor: theme.color.surface,
      appBar: AppBar(
        backgroundColor: theme.color.primary,
        leading: InkWell(
          onTap: () => context.router.back(),
          child: Icon(
            EvaIcons.arrow_back_outline,
            size: 24.px,
            color: context.theme.color.onPrimary,
          ),
        ),
        title: Text(
          "Ubah Profil Usaha",
          style: theme.typo.titleMedium!.copyWith(
            color: context.theme.color.onPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100.w,
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
              decoration: BoxDecoration(color: theme.color.surface),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Informasi Usaha",
                    style: theme.typo.titleMedium,
                  ),
                  FreeSpace.h(16.sp),
                  TextFieldComponent(
                    withLabel: true,
                    labelText: "Nama Usaha",
                    // prefix: Icon(Icons.store_mall_directory_outlined),
                  ),
                  FreeSpace.h(16.sp),
                  TextFieldComponent(
                    withLabel: true,
                    labelText: "No. HP",
                    // prefix: Icon(IonIcons.phone_portrait_sharp),
                  ),
                  FreeSpace.h(16.sp),
                  TextFieldComponent(
                    withLabel: true,
                    labelText: "Alamat",
                    minLines: 2,
                    // prefix: Icon(LineAwesome.address_card),
                  )
                ],
              ),
            ),
            // FreeSpace.h(12.sp),
            Container(
              width: 100.w,
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
              decoration: BoxDecoration(color: theme.color.surface),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sosial Media",
                    style: theme.typo.titleMedium,
                  ),
                  FreeSpace.h(16.sp),
                  TextFieldComponent(
                    withLabel: true,
                    labelText: "Instagram",
                    prefix: Icon(
                      LineAwesome.instagram,
                      size: 24.px,
                    ),
                  ),
                  FreeSpace.h(16.sp),
                  TextFieldComponent(
                    withLabel: true,
                    labelText: "TikTok",
                    prefix: Icon(
                      BoxIcons.bxl_tiktok,
                      size: 22.px,
                    ),
                  ),
                  FreeSpace.h(16.sp),
                  TextFieldComponent(
                    withLabel: true,
                    labelText: "Email",
                    prefix: Icon(
                      EvaIcons.email_outline,
                      size: 22.px,
                    ),
                  )
                ],
              ),
            ),
            // FreeSpace.h(16.sp),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
              child: ButtonComponent(
                size: ButtonSize.FullWidth,
                text: "Simpan",
                onPress: () {},
              ),
            ),
            FreeSpace.h(20.sp)
          ],
        ),
      ),
    );
  }
}
