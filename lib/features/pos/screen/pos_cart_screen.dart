import 'package:ala_pos/features/pos/widget/cart_item_component.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PosCartScreen extends StatelessWidget {
  const PosCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Scaffold(
      backgroundColor: theme.color.primary,
      body: SafeArea(
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
                  SizedBox(
                    width: Space.xl,
                  ),
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
                            // showModalBottomSheet(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                            //   ),
                            //   isScrollControlled: true,
                            //   // isDismissible: true,
                            //   context: context,
                            //   builder: (context) {
                            //     // return AddDiscountBottomSheet();
                            //   },
                            // );
                            // context.router.pop();
                          },
                          child: Icon(
                            EvaIcons.pricetags_outline,
                            size: 24.px,
                            color: context.theme.color.onPrimary,
                          ),
                        ),
                        SizedBox(
                          width: Space.l,
                        ),
                        InkWell(
                          onTap: () {
                            // showModalBottomSheet(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                            //   ),
                            //   isScrollControlled: true,
                            //   // isDismissible: true,
                            //   context: context,
                            //   builder: (context) {
                            //     // return AddCustomerBottomSheet();
                            //   },
                            // );
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
                            onTap: () {},
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
                      border: Border(
                        top: BorderSide(
                          color: theme.color.outline,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            // ResumeLabelValueWidget(label: "Subtotal", value: transactionState.model!.amount!.toIDR()),
                            // Spacing.height(
                            //   size: 8,
                            // ),
                            // ResumeLabelValueWidget(label: "Diskon", value: transactionState.model!.discount.toIDR()),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),

                        // ResumeLabelValueWidget(
                        //   label: "Total",
                        //   value: transactionState.model!.result.toIDR(),
                        //   isBold: true,
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 70.sp,
                          color: theme.color.primary,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            "Bayar",
                            style: theme.typo.labelLarge?.copyWith(color: theme.color.onPrimary),
                          ),
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (_) => const PosMainScreen()));
                          },
                        ),
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
