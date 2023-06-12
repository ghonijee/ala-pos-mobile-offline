import 'package:ala_pos/app/router/app_router.gr.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/widgets/sidebar_menu_component.dart';
import '../../../shared/widget/card/product_item_grid_component.dart';
import '../../../shared/widget/card/product_item_list_component.dart';
import '../../pos/screen/pos_main_screen.dart';

@RoutePage(name: 'ProductMainList')
class ProductMainListScreen extends StatelessWidget {
  ProductMainListScreen({super.key});
  ViewMode viewMode = ViewMode.List;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideMenuView(),
      backgroundColor: theme.color.background,
      appBar: AppBar(
        backgroundColor: theme.color.primary,
        title: Text("Master Produk"),
        titleTextStyle: theme.typo.titleMedium!.copyWith(color: theme.color.onPrimary),
        leading: InkWell(
          onTap: () => scaffoldKey.currentState!.openDrawer(),
          child: Icon(
            EvaIcons.menu_2_outline,
            color: theme.color.onPrimary,
          ),
        ),
        actions: [
          InkWell(
            onTap: () => context.router.push(ProductForm()),
            child: Icon(
              EvaIcons.plus_outline,
              size: 20.px,
              color: context.theme.color.onPrimary,
            ),
          ),
          SizedBox(
            width: 12.sp,
          ),
          InkWell(
            child: Icon(
              EvaIcons.options_2_outline,
              size: 20.px,
              color: context.theme.color.onPrimary,
            ),
          ),
          FreeSpace.w(16.sp)
        ],
      ),
      body: Container(
        // height: 100.h,
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          children: [
            FreeSpace.h(16.sp),
            TextFieldComponent(
              hintText: "Nama Produk/SKU",
              // prefix: Icon(EvaIcons.search_outline),
              prefix: GestureDetector(
                onDoubleTap: () {
                  // Open Camera to Scan
                },
                child: Icon(
                  BoxIcons.bx_camera,
                  size: 24.px,
                  // color: context.theme.color.onSurfaceVariant,
                ),
              ),
            ),
            FreeSpace.h(Space.l),
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
    );
  }
}
