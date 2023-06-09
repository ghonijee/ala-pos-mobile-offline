import 'package:ala_pos/app/router/app_router.gr.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage(name: "CategoryMainList")
class CategoryMainListScreen extends StatelessWidget {
  const CategoryMainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);
    return Scaffold(
      backgroundColor: theme.color.surfaceVariant,
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
          "Kategori Produk",
          style: theme.typo.titleMedium!.copyWith(
            color: context.theme.color.onPrimary,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              context.router.push(const CategoryForm());
            },
            child: Icon(
              EvaIcons.plus_circle_outline,
              color: theme.color.onPrimary,
            ),
          ),
          FreeSpace.w(16.sp),
        ],
      ),
      body: ReorderableList(
        onReorder: (oldIndex, newIndex) {
          print(oldIndex.toString());
          print(newIndex.toString());
        },
        // separatorBuilder: (context, index) => Divider(
        //   height: 0.2.sp,
        //   color: theme.color.outlineVariant,
        // ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => context.router.push(CategoryForm()),
            key: Key(index.toString()),
            contentPadding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 20.sp),
            tileColor: theme.color.surface,
            // leading: Text(
            //   "${index + 1}",
            //   style: theme.typo.bodyMedium,
            // ),
            title: Text(
              AutofillHints.addressCity,
              style: theme.typo.bodyMedium,
            ),
            // trailing: SizedBox(
            //   height: 8.sp,
            //   child: Switch.adaptive(
            //     splashRadius: 40,
            //     value: false,
            //     onChanged: (value) {
            //       //
            //     },
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
