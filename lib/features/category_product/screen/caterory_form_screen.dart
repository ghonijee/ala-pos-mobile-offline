import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage(name: "CategoryForm")
class CategoryFormScreen extends StatelessWidget {
  const CategoryFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
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
          "Form Kategori Produk",
          style: theme.typo.titleMedium!.copyWith(
            color: context.theme.color.onPrimary,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              //
            },
            child: Icon(
              EvaIcons.trash_2_outline,
              color: theme.color.onPrimary,
            ),
          ),
          FreeSpace.w(16.sp),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            children: [
              FreeSpace.h(16.sp),
              TextFieldComponent(
                withLabel: true,
                labelText: "Nama Kategori",
              ),
              FreeSpace.h(16.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tampilkan di Halaman Utama?"),
                  Switch.adaptive(
                    splashRadius: 40,
                    value: false,
                    onChanged: (value) {
                      //
                    },
                  ),
                ],
              ),
              FreeSpace.h(20.sp),
              ButtonComponent(
                size: ButtonSize.FullWidth,
                text: "Simpan",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
