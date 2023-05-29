import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
              Text(
                "Informasi Usaha",
                style: theme.typo.headlineLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: Space.l.sp,
              ),
              Text("Lengkapi profil usahamu dan mulai berjualan menggunakan Alapos", style: theme.typo.titleSmall),
              SizedBox(
                height: Space.xl.sp,
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
                    border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.surface))),
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
                    border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.surface))),
              ),
              SizedBox(
                height: Space.xl.sp,
              ),
              MaterialButton(
                height: 45,
                minWidth: double.infinity,
                color: theme.color.primaryDark,
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
