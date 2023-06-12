import 'dart:developer';

import 'package:ala_pos/app/router/app_router.gr.dart';
import 'package:ala_pos/features/pos/screen/pos_main_screen.dart';
import 'package:ala_pos/features/transaction/screen/transaction_main_screen.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'sidebar_menu_item_component.dart';

class SideMenuView extends StatelessWidget {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);
    return Drawer(
      width: 70.w,
      shadowColor: theme.color.shadow,
      backgroundColor: theme.color.background,
      surfaceTintColor: theme.color.background,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 50.sp,
            child: DrawerHeader(
                child: InkWell(
              onTap: () {
                context.router.push(const StoreProfile());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   width: 40,
                  //   height: 40,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(90),
                  //       border: Border.all(
                  //         color: theme.color.outline,
                  //         width: 2,
                  //       )),
                  //   child: Icon(
                  //     IonIcons.person_circle,
                  //     size: 30,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: Space.lg,
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BAKSO PEDAS",
                        style: theme.typo.titleMedium!.copyWith(color: theme.color.primary),
                      ),
                      SizedBox(
                        height: Space.xs,
                      ),
                      Text(
                        "Kelola Toko",
                        style: theme.typo.bodySmall!.copyWith(color: theme.color.onBackground),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(
                    EvaIcons.chevron_right,
                    size: 28,
                  ),
                ],
              ),
            )),
          ),
          SizedBox(
            height: Space.m,
          ),
          Expanded(
            // height: 100.h - 150 - Space.m,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SideMenuItemWidget(
                  title: "Kasir",
                  onTap: () {
                    // log(context.router.current.name);
                    AutoRouter.of(context).replace(const PosMain());
                  },
                  iconData: EvaIcons.plus_square_outline,
                  isActive: context.router.current.name == PosMain.name,
                ),
                SizedBox(
                  height: Space.s,
                ),
                SideMenuItemWidget(
                  title: "Riwayat Transaksi",
                  onTap: () {
                    AutoRouter.of(context).replace(TransactionMain());
                  },
                  iconData: EvaIcons.book_outline,
                  isActive: context.router.current.name == TransactionMain.name,
                ),
                SizedBox(
                  height: Space.s,
                ),
                SideMenuItemWidget(
                  title: "Laporan",
                  onTap: () {
                    // AutoRouter.of(context).replaceNamed(RouteName.posWrapper);
                  },
                  iconData: EvaIcons.pie_chart_outline,
                ),
                SizedBox(
                  height: Space.s,
                ),
                SideMenuItemWidget(
                  title: "Kelola Produk",
                  onTap: () {
                    AutoRouter.of(context).replace(const ProductMainList());
                  },
                  iconData: EvaIcons.archive_outline,
                  isActive: context.router.current.name == ProductMainList.name,
                ),
                SizedBox(
                  height: Space.s,
                ),
                // SideMenuItemWidget(
                //   title: "Kelola Toko",
                //   onTap: () {
                //     // AutoRouter.of(context).replaceNamed(RouteName.posWrapper);
                //   },
                //   iconData: EvaIcons.settings,
                // ),
              ],
            ),
          ),
          // Expanded(child: SizedBox()),
          // SideMenuItemWidget(
          //   title: "Keluar ",
          //   onTap: () async {},
          //   iconData: Icons.logout_rounded,
          // ),
          // SizedBox(height: Space.s),
        ],
      ),
    );
  }
}
