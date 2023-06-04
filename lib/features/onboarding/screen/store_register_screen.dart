import 'package:ala_pos/features/onboarding/screen/success_register_screen.dart';
import 'package:ala_pos/shared/assets.gen.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage(name: "storeRegister")
class StoreRegisterScreen extends StatelessWidget {
  const StoreRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeFoundation theme = BaseUI.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          width: 100.w,
          // height: 95.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FreeSpace.h(12.h),
              Text(
                "Profil Usaha Kamu",
                style: theme.typo.displayMedium,
              ),
              FreeSpace.h(Space.l.sp),
              Text("Lengkapi profil usahamu dan mulai berjualan menggunakan Alapos.", style: theme.typo.bodyLarge),
              FreeSpace.h(Space.xl.sp),
              TextFieldComponent(
                withLabel: true,
                labelText: "Nama Usaha",
                hintText: "Ghoni Jee",
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              TextFieldComponent(
                withLabel: true,
                labelText: "Nomor Telephone",
                hintText: "+6281666777888",
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              TextFieldComponent(
                withLabel: true,
                labelText: "Alamat",
                maxLines: 4,
                minLines: 3,
                hintText: "Jl. Maju bersama No. 02 - Malang",
              ),
              SizedBox(
                height: Space.xl.sp,
              ),
              ButtonComponent(
                type: ButtonType.Primary,
                size: ButtonSize.FullWidth,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SuccessRegisterScreen()));
                },
                text: "Simpan",
              ),
              SizedBox(
                height: Space.xl.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
