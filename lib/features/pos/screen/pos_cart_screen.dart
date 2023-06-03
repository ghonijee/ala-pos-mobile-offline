import 'package:ala_pos/features/pos/screen/pos_cart_item_screen.dart';
import 'package:ala_pos/features/pos/widget/add_customer_bottom_sheet.dart';
import 'package:ala_pos/features/pos/widget/cart_item_component.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widget/add_discount_bottom_sheet.dart';

class PosCartScreen extends StatelessWidget {
  const PosCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Scaffold(
      backgroundColor: theme.color.primary,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // AppBar
            Container(
              width: 100.w,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: theme.color.primary,
              ),
              height: 56,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      EvaIcons.arrow_back_outline,
                      size: 24.px,
                      color: context.theme.color.onPrimary,
                    ),
                  ),
                  FreeSpace.w(Space.xl),
                  true
                      ? Text(
                          "Keranjang",
                          style: theme.typo.titleMedium!.copyWith(
                            color: context.theme.color.onPrimary,
                          ),
                        )
                      : Text(
                          "Keranjang - Yunus",
                          style: theme.typo.titleMedium!.copyWith(
                            color: context.theme.color.onPrimary,
                          ),
                        ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                              ),
                              isScrollControlled: true,
                              // isDismissible: true,
                              context: context,
                              builder: (context) {
                                return AddDiscountBottomSheet();
                              },
                            );
                          },
                          child: Icon(
                            EvaIcons.pricetags_outline,
                            size: 24.px,
                            color: context.theme.color.onPrimary,
                          ),
                        ),
                        FreeSpace.w(Space.l),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                              ),
                              isScrollControlled: true,
                              // isDismissible: true,
                              context: context,
                              builder: (context) {
                                // return AddCustomerBottomSheet();
                                return AddCustomerBottomSheet();
                              },
                            );
                          },
                          child: Icon(
                            EvaIcons.person_add_outline,
                            size: 24.px,
                            color: context.theme.color.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Body
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: theme.color.surface,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(
                          height: 1,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CartItemComponent(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PosCartItemDetailScreen(),
                                  ));
                            },
                          );
                          // var item = ref.watch(cartProductProvider).items[index];
                          // return CartItemWidget(
                          //   itemModel: item,
                          //   onTap: () {
                          //     // context.router.pushNamed(PosRouteName.PosCartDetail.replaceFirst(RegExp(r":id"), index.toString()));
                          //   },
                          // );
                        },
                      ),
                    ),
                  ),
                  // Bottom Action
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: theme.color.surface,
                      // border: Border(
                      //   top: BorderSide(
                      //     color: theme.color.outline,
                      //   ),
                      // ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const ResumeLabelValueWidget(label: "Subtotal", value: "Rp. 80.000"),
                            SizedBox(
                              height: 8.sp,
                            ),
                            const ResumeLabelValueWidget(label: "Diskon", value: "0"),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ResumeLabelValueWidget(
                          label: "Total",
                          value: "Rp. 80.000",
                          isBold: true,
                        ),
                        FreeSpace.h(20),
                        ButtonComponent(
                          text: "Bayar",
                          size: ButtonSize.FullWidth,
                          onPress: () {
                            //
                          },
                        ),
                        FreeSpace.h(20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeLabelValueWidget extends StatelessWidget {
  const ResumeLabelValueWidget({
    Key? key,
    required this.label,
    required this.value,
    this.isBold = false,
  }) : super(key: key);
  final String label;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isBold ? theme.typo.bodyMedium!.copyWith(fontWeight: FontWeight.bold) : theme.typo.bodyMedium,
        ),
        Text(
          value,
          style: isBold ? theme.typo.bodyMedium!.copyWith(fontWeight: FontWeight.bold) : theme.typo.bodyMedium,
        ),
      ],
    );
  }
}
