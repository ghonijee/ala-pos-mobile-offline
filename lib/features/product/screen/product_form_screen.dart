import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage(name: 'ProductForm')
class ProductFormScreen extends StatelessWidget {
  const ProductFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Scaffold(
      backgroundColor: theme.color.surfaceVariant,
      appBar: AppBar(
        backgroundColor: theme.color.primary,
        title: Text("Form Produk"),
        titleTextStyle: theme.typo.titleMedium!.copyWith(color: theme.color.onPrimary),
        leading: GestureDetector(
          onTap: () => context.router.back(),
          child: Icon(
            EvaIcons.arrow_back_outline,
            size: 24.px,
            color: context.theme.color.onPrimary,
          ),
        ),
        actions: [
          InkWell(
            // onTap: () => viewMode.value = ViewMode.List,
            child: Icon(
              EvaIcons.trash_2_outline,
              size: 20.px,
              color: context.theme.color.onPrimary,
            ),
          ),
          FreeSpace.w(16.sp)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: theme.color.surface,
                      // border: Border(
                      //   bottom: BorderSide(
                      //     color: theme.color.outlineVariant,
                      //   ),
                      // ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Produk",
                          style: theme.typo.titleMedium,
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Nama",
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Harga",
                        ),
                        FreeSpace.h(16.sp),
                      ],
                    ),
                  ),
                  FreeSpace.h(4.sp),
                  Container(
                    decoration: BoxDecoration(
                      color: theme.color.surface,
                    ),
                    child: ExpansionTile(
                      collapsedShape: Border(),
                      shape: Border(),
                      tilePadding: EdgeInsets.symmetric(horizontal: 20.sp),
                      title: Text("Stok", style: theme.typo.titleMedium),
                      initiallyExpanded: true,
                      collapsedBackgroundColor: theme.color.surface,
                      backgroundColor: theme.color.surface,
                      childrenPadding: EdgeInsets.symmetric(
                        horizontal: 20.sp,
                        // vertical: AppSpacings.m.sp,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Stok Opname",
                                    style: theme.typo.bodyMedium,
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        "Aktifkan produk manajemen stok",
                                        style: theme.typo.labelSmall,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30.sp,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Switch.adaptive(
                                  value: false,
                                  onChanged: (value) {},
                                  activeColor: theme.color.primary,
                                  splashRadius: 90.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Jumlah Stok",
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Minimal Stok",
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Satuan",
                        ),
                        FreeSpace.h(20.sp),
                      ],
                    ),
                  ),
                  FreeSpace.h(4.sp),
                  Container(
                    decoration: BoxDecoration(
                      color: theme.color.surface,
                    ),
                    child: ExpansionTile(
                      collapsedShape: Border(),
                      shape: Border(),
                      tilePadding: EdgeInsets.symmetric(horizontal: 20.sp),
                      title: Text("Detail", style: theme.typo.titleMedium),
                      initiallyExpanded: true,
                      collapsedBackgroundColor: theme.color.surface,
                      backgroundColor: theme.color.surface,
                      childrenPadding: EdgeInsets.symmetric(
                        horizontal: 20.sp,
                        // vertical: AppSpacings.m.sp,
                      ),
                      children: [
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Modal",
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Harga Diskon",
                        ),
                        FreeSpace.h(16.sp),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Kode/SKU",
                        ),
                        FreeSpace.h(20.sp),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expanded(child: SizedBox()),
          Container(
            // height: 110.px,
            color: theme.color.surface,
            padding: EdgeInsets.fromLTRB(20.sp, 20.sp, 20.sp, 25.sp),
            child: ButtonComponent(
              size: ButtonSize.FullWidth,
              // customSize: Size.fromHeight(40.px),
              text: "Simpan",
              onPress: () {},
            ),
          )
        ],
      ),
    );
  }
}
