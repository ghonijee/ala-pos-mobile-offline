import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/widgets/sidebar_menu_component.dart';

@RoutePage(name: "ReportMain")
class ReportMainScreen extends StatelessWidget {
  ReportMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var theme = context.theme;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: theme.color.background,
      drawer: const SideMenuView(),
      appBar: AppBar(
        backgroundColor: theme.color.primary,
        title: const Text("Laporan"),
        titleTextStyle: theme.typo.titleMedium!.copyWith(color: theme.color.onPrimary),
        leading: InkWell(
          onTap: () => scaffoldKey.currentState!.openDrawer(),
          child: Icon(
            EvaIcons.menu_2_outline,
            color: theme.color.onPrimary,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FreeSpace.h(16.sp),
              TextFieldComponent(
                hintText: "01-06-2023 s/d 30-06-2023",
                prefix: Icon(
                  EvaIcons.calendar_outline,
                  color: theme.color.outline,
                ),
                suffix: Icon(
                  EvaIcons.close_circle_outline,
                  color: theme.color.outline,
                ),
              ),
              FreeSpace.h(16.sp),
              Text(
                "Resume",
                style: theme.typo.titleMedium,
              ),
              FreeSpace.h(16.sp),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                decoration: BoxDecoration(
                  color: theme.color.surface,
                  borderRadius: theme.shape.s,
                  border: Border.all(
                    color: theme.color.outlineVariant,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total Penjualan",
                                style: theme.typo.bodyMedium,
                              ),
                              FreeSpace.h(16.sp),
                              Text(
                                "Rp. 19.000.000",
                                style: theme.typo.bodyLarge?.copyWith(color: theme.color.primary, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total Keuntungan",
                                style: theme.typo.bodyMedium,
                              ),
                              FreeSpace.h(16.sp),
                              Text(
                                "Rp. 9.000.000",
                                style: theme.typo.bodyLarge?.copyWith(color: theme.color.primary, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    FreeSpace.h(20.sp),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total Transaksi",
                                style: theme.typo.bodyMedium,
                              ),
                              FreeSpace.h(16.sp),
                              Text(
                                "8",
                                style: theme.typo.bodyLarge?.copyWith(color: theme.color.primary, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total Produk Terjual",
                                style: theme.typo.bodyMedium,
                              ),
                              FreeSpace.h(16.sp),
                              Text(
                                "Rp. 9.000.000",
                                style: theme.typo.bodyLarge?.copyWith(color: theme.color.primary, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              FreeSpace.h(16.sp),
              Text(
                "Produk Terjual",
                style: theme.typo.titleMedium,
              ),
              FreeSpace.h(16.sp),
              Expanded(
                  child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    textColor: Theme.of(context).colorScheme.primary,
                    tileColor: theme.color.surface,
                    leading: Container(
                      alignment: Alignment.center,
                      width: 60.px,
                      height: 60.px,
                      decoration: BoxDecoration(color: theme.color.primaryContainer, borderRadius: theme.shape.m),
                      child: Text(
                        "SA",
                        style: theme.typo.titleMedium!.copyWith(color: theme.color.primary),
                      ),
                    ),
                    title: Text(
                      "Kopi bubuk ABC",
                      style: theme.typo.bodyMedium,
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                          decoration: BoxDecoration(color: theme.color.secondaryContainer, borderRadius: theme.shape.s),
                          child: Text(
                            "99",
                            style: theme.typo.bodyMedium!.copyWith(color: theme.color.onSecondaryContainer),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
