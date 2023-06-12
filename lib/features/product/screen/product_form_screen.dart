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
      backgroundColor: theme.color.background,
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
    );
  }
}
