// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:ala_pos/app/router/app_router.gr.dart';

@RoutePage(name: 'StoreProfile')
class StoreProfileScreen extends StatelessWidget {
  const StoreProfileScreen({super.key});

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
          "Profil Usaha",
          style: theme.typo.titleMedium!.copyWith(
            color: context.theme.color.onPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              width: 100.w,
              // height: 150.px,
              decoration: BoxDecoration(
                color: theme.color.surface,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FreeSpace.h(Space.xxl.sp),
                  Container(
                    alignment: Alignment.center,
                    width: 36.sp,
                    height: 36.sp,
                    // padding: EdgeInsets.all(32.px),
                    decoration: BoxDecoration(
                      color: theme.color.primaryContainer,
                      borderRadius: theme.shape.m,
                    ),
                    child: Text(
                      "BS",
                      style: theme.typo.displaySmall,
                    ),
                  ),
                  SizedBox(
                    height: Space.l.sp,
                  ),
                  Text(
                    "BINQAN STR.",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: theme.color.primary,
                        ),
                  ),
                  FreeSpace.h(Space.xxl.sp),
                ],
              ),
            ),
            FreeSpace.h(Space.l.sp),
            // Profile Section
            CardProfileSection(
              titleSection: "Detail",
              navigationEdit: () => context.router.push(StoreFormProfile()),
              data: [
                ProfileDataValue(label: "No. HP", value: "081726778991"),
                ProfileDataValue(label: "Email", value: "loqomind@gmail.com"),
                ProfileDataValue(label: "Instagram", value: "@loqomind"),
                ProfileDataValue(label: "TikTok", value: "@loqomind"),
                ProfileDataValue(label: "Alamat", value: "Jl. Merdeka No. 6 Kepanjen Malang"),
              ],
            ),
            FreeSpace.h(Space.l.sp),
            // Master Data
            CardProfileSection(
              titleSection: "Master Data",
              // navigationEdit: () => context.router.push(StoreFormProfile()),
              data: [
                ProfileDataValue(label: "Kategori Produk", pageRouteInfo: StoreFormProfile()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardProfileSection extends StatelessWidget {
  const CardProfileSection({
    super.key,
    required this.titleSection,
    this.navigationEdit,
    required this.data,
  });
  final String titleSection;
  final Function()? navigationEdit;
  final List<ProfileDataValue> data;

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return Container(
      width: 96.w,
      padding: EdgeInsets.symmetric(vertical: 24.px, horizontal: 16.px),
      decoration: BoxDecoration(
        color: theme.color.surface,
        borderRadius: theme.shape.xs,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleSection,
                style: theme.typo.titleSmall,
              ),
              navigationEdit != null
                  ? InkWell(
                      onTap: navigationEdit,
                      child: Icon(
                        LineAwesome.edit,
                        size: 20.px,
                      ),
                    )
                  : SizedBox()
            ],
          ),
          FreeSpace.h(Space.xl),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.px),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: data
                  .map((item) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.sp),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.label,
                              style: theme.typo.bodyMedium,
                            ),
                            item.pageRouteInfo == null
                                ? SizedBox(
                                    width: 50.w,
                                    child: Text(
                                      item.value ?? "-",
                                      textAlign: TextAlign.right,
                                      style: theme.typo.bodyMedium,
                                    ),
                                  )
                                : InkWell(
                                    onTap: () => context.router.push(item.pageRouteInfo!),
                                    child: Icon(
                                      LineAwesome.arrow_right_solid,
                                      size: 20.px,
                                    ),
                                  ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileDataValue {
  final String label;
  final String? value;
  final PageRouteInfo<dynamic>? pageRouteInfo;
  ProfileDataValue({required this.label, this.value, this.pageRouteInfo});
}
