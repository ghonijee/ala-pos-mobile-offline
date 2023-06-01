import 'package:ala_ui/ala_ui.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 150,
            child: DrawerHeader(
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
                Expanded(child: SizedBox()),
                Icon(
                  EvaIcons.chevron_right,
                  size: 28,
                ),
              ],
            )),
          ),
          SizedBox(
            height: Space.m,
          ),
          FutureBuilder<bool>(
            initialData: true,
            builder: (context, snapshot) {
              if (snapshot.data == false) {
                return SizedBox();
              }
              return SideMenuItemWidget(
                title: "Kasir",
                onTap: () {
                  // AutoRouter.of(context).replaceNamed(RouteName.posWrapper);
                },
                iconData: EvaIcons.plus_square,
                isActive: true,
              );
            },
          ),
          SizedBox(
            height: Space.s,
          ),
          SideMenuItemWidget(
            title: "Riwayat Transaksi",
            onTap: () {
              // AutoRouter.of(context).replaceNamed(RouteName.posWrapper);
            },
            iconData: EvaIcons.book,
          ),
          SizedBox(
            height: Space.s,
          ),
          SideMenuItemWidget(
            title: "Laporan",
            onTap: () {
              // AutoRouter.of(context).replaceNamed(RouteName.posWrapper);
            },
            iconData: EvaIcons.book_open,
          ),
          SizedBox(
            height: Space.s,
          ),
          SideMenuItemWidget(
            title: "Kelola Produk",
            onTap: () {
              // AutoRouter.of(context).replaceNamed(RouteName.posWrapper);
            },
            iconData: EvaIcons.book,
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
          Expanded(child: SizedBox()),
          SideMenuItemWidget(
            title: "Keluar ",
            onTap: () async {},
            iconData: Icons.logout_rounded,
          ),
          SizedBox(height: Space.s),
        ],
      ),
    );
  }
}
