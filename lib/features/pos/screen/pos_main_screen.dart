import 'dart:io';

import 'package:ala_pos/features/pos/screen/pos_cart_screen.dart';
import 'package:ala_pos/shared/widget/appbar/appbar_search_component.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/widgets/sidebar_menu_component.dart';
import '../../../shared/widget/card/product_item_grid_component.dart';
import '../../../shared/widget/card/product_item_list_component.dart';
import '../../../shared/widget/card/tag_component.dart';

enum ViewMode { Grid, List }

class PosMainScreen extends StatelessWidget {
  const PosMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ViewMode viewMode = ViewMode.List;
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideMenuView(),
      backgroundColor: context.theme.color.primary,
      body: Stack(children: [
        SafeArea(
          bottom: false,
          left: false,
          right: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBarSearch
              AppBarSearchComponent(
                leadingIcon: Icon(
                  EvaIcons.menu_2_outline,
                  color: context.theme.color.onPrimary,
                  size: 24.px,
                ),
                leadingOnTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                  // Scaffold.of(context).openDrawer();
                },
                actions: [
                  InkWell(
                    child: Icon(
                      Bootstrap.camera,
                      size: 24.px,
                      color: context.theme.color.onPrimary,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  viewMode == ViewMode.Grid
                      ? InkWell(
                          // onTap: () => viewMode.value = ViewMode.Grid,
                          child: Icon(
                            EvaIcons.list_outline,
                            size: 24.px,
                            color: context.theme.color.onPrimary,
                          ),
                        )
                      : InkWell(
                          // onTap: () => viewMode.value = ViewMode.List,
                          child: Icon(
                            EvaIcons.grid_outline,
                            size: 24.px,
                            color: context.theme.color.onPrimary,
                          ),
                        ),
                ],
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  child: Container(
                    // height: double.infinity,
                    color: context.theme.color.background,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 32,
                          width: 100.w - 32,
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            // shrinkWrap: true,
                            children: [
                              TagsComponent(label: "Makanan", isActive: true),
                              TagsComponent(label: "Minuman", isActive: false),
                              TagsComponent(label: "Snack", isActive: false),
                              TagsComponent(label: "Snack", isActive: false),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: OrientationBuilder(builder: (context, orientation) {
                            if (orientation == Orientation.portrait && viewMode == ViewMode.List) {
                              return ListView.separated(
                                // controller: scrollController,
                                separatorBuilder: (_, index) => Divider(),
                                itemCount: 50,
                                itemBuilder: (context, index) {
                                  return false
                                      ? Center(
                                          child: CircularProgressIndicator(
                                            color: context.theme.color.primary,
                                          ),
                                        )
                                      : InkWell(onTap: () {}, child: ProductItemListComponent());
                                },
                              );
                            }
                            return GridView.builder(
                                // controller: scrollController,
                                itemCount: 10,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: orientation == Orientation.portrait ? 2 : 5,
                                  crossAxisSpacing: 12.0,
                                  mainAxisSpacing: 12.0,
                                ),
                                itemBuilder: (context, index) {
                                  return false
                                      ? Center(
                                          child: CircularProgressIndicator(
                                            color: context.theme.color.primary,
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {},
                                          child: ProductItemGridComponent(),
                                        );
                                });
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            // context.router.pushNamed(PosRouteName.PosCart);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PosCartScreen(),
                ));
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              width: 100.w,
              height: 70.px,
              decoration: BoxDecoration(
                color: context.theme.color.primary,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(EvaIcons.shopping_cart, color: context.theme.color.onPrimary),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Total ", style: context.theme.typo.bodyLarge!.copyWith(color: context.theme.color.onPrimary)),
                    ],
                  ),
                  Text("99.000 (10)", style: context.theme.typo.titleMedium!.copyWith(color: context.theme.color.onPrimary)),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
