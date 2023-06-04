import 'dart:math';

import 'package:ala_pos/app/router/app_router.gr.dart';
import 'package:ala_pos/shared/widget/appbar/appbar_component.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/widgets/sidebar_menu_component.dart';

@RoutePage(name: "TransactionMain")
class TransactionMainScreen extends StatelessWidget {
  TransactionMainScreen({super.key});
  final DateFormat dateFormat = DateFormat("EEEE, dd-MM-y", "id");

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var theme = context.theme;

    return Scaffold(
      key: scaffoldKey,
      drawer: const SideMenuView(),
      backgroundColor: context.theme.color.primary,
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Column(
            children: [
              AppbarComponent(
                title: "Transaksi",
                leadingIcon: Icon(
                  EvaIcons.menu_2_outline,
                  color: context.theme.color.onPrimary,
                  size: 24.px,
                ),
                leadingOnTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                actions: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      EvaIcons.calendar,
                      color: theme.color.onPrimary,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  color: theme.color.surface,
                  child: Column(
                    children: [
                      FreeSpace.h(16.sp),
                      TextFieldComponent(
                        hintText: "Nama/Nomer Transaksi",
                        prefix: Icon(EvaIcons.search_outline),
                      ),
                      FreeSpace.h(Space.l),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => Divider(
                            color: theme.color.outlineVariant,
                            height: 16,
                          ),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 8, top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        dateFormat.format(DateTime.now()),
                                        style: theme.typo.labelLarge!.copyWith(fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        120000.currency(),
                                        style: theme.typo.labelLarge!.copyWith(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  FreeSpace.h(Space.m.sp),
                                  ListView.builder(
                                    // padding: ,
                                    // separatorBuilder: (context, index) => FreeSpace.h(4),
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 4,
                                    addAutomaticKeepAlives: true,
                                    itemBuilder: (context, index) {
                                      var statusTemp = [true, false];
                                      statusTemp.shuffle();
                                      return ListTile(
                                        onTap: () {
                                          AutoRouter.of(context).push(const TransactionDetail());
                                        },
                                        contentPadding: EdgeInsets.zero,
                                        leading: statusTemp[0]
                                            ? Container(
                                                constraints: BoxConstraints(minHeight: 28.sp, minWidth: 28.sp),
                                                decoration: BoxDecoration(
                                                  color: theme.color.primaryContainer,
                                                  borderRadius: theme.shape.s,
                                                ),
                                                child: Icon(
                                                  EvaIcons.checkmark_circle_2_outline,
                                                  size: 22.sp,
                                                  color: theme.color.primary,
                                                ),
                                              )
                                            : Container(
                                                constraints: BoxConstraints(minHeight: 28.sp, minWidth: 28.sp),
                                                decoration: BoxDecoration(
                                                  color: theme.color.secondaryContainer,
                                                  borderRadius: theme.shape.s,
                                                ),
                                                child: Icon(
                                                  EvaIcons.clock_outline,
                                                  size: 22.sp,
                                                  color: theme.color.secondary,
                                                ),
                                              ),
                                        title: Text(
                                          "TR001120923",
                                          style: theme.typo.bodyMedium,
                                        ),
                                        subtitle: Text(
                                          "Ghoni Jee",
                                          style: theme.typo.bodySmall,
                                        ),
                                        trailing: Text(
                                          100000.currency(),
                                          style: theme.typo.bodyLarge,
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
