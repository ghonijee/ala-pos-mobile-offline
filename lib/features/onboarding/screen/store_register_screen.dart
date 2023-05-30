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
          height: 95.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Icon(
                Bootstrap.shop_window,
                color: theme.color.primary,
                size: 32.sp,
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text(
                "Buat Profil Usaha",
                style: theme.typo.headlineLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: Space.s.sp,
              ),
              Text("Lengkapi profil usahamu dan mulai berjualan menggunakan Alapos", style: theme.typo.bodyMedium),
              SizedBox(
                height: Space.m.sp,
              ),
              Divider(),
              SizedBox(
                height: Space.l.sp,
              ),
              Text(
                "Nama Usaha",
                style: theme.typo.bodySmall,
              ),
              SizedBox(
                height: Space.m.sp,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.surface), borderRadius: theme.shape.xs)),
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text(
                "Nomer Telephone",
                style: theme.typo.bodySmall,
              ),
              SizedBox(
                height: Space.m.sp,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.surface), borderRadius: theme.shape.xs)),
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text(
                "Alamat",
                style: theme.typo.bodySmall,
              ),
              SizedBox(
                height: Space.m.sp,
              ),
              TextField(
                maxLines: 4,
                minLines: 2,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.surface), borderRadius: theme.shape.xs)),
              ),
              SizedBox(
                height: Space.xl.sp,
              ),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: theme.color.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "Simpan",
                  style: theme.typo.labelLarge?.copyWith(color: theme.color.onPrimary),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
