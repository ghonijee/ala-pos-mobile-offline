import 'package:ala_pos/features/onboarding/screen/success_register_screen.dart';
import 'package:ala_pos/shared/assets.gen.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Profil Usaha Kamu",
                style: theme.typo.displayMedium,
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text("Lengkapi profil usahamu dan mulai berjualan menggunakan Alapos", style: theme.typo.bodyLarge),
              SizedBox(
                height: Space.lg.sp,
              ),
              Text(
                "Nama Usaha",
                style: theme.typo.labelLarge,
              ),
              SizedBox(
                height: Space.s.sp,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
                ),
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text(
                "Nomer Telephone",
                style: theme.typo.labelLarge,
              ),
              SizedBox(
                height: Space.s.sp,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
                ),
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text(
                "Alamat",
                style: theme.typo.labelLarge,
              ),
              SizedBox(
                height: Space.s.sp,
              ),
              TextField(
                maxLines: 4,
                minLines: 2,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
                ),
              ),
              SizedBox(
                height: Space.xl.sp,
              ),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: theme.color.primary,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "Simpan",
                  style: theme.typo.labelLarge?.copyWith(color: theme.color.onPrimary),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SuccessRegisterScreen()));
                },
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
