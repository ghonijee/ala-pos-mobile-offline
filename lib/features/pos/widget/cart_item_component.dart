import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartItemComponent extends StatefulWidget {
  CartItemComponent({super.key, required this.onTap});
  // final TransactionItemModel itemModel;

  /// For naviation to detail cart item
  final Function() onTap;

  @override
  State<CartItemComponent> createState() => _CartItemComponentState();
}

class _CartItemComponentState extends State<CartItemComponent> {
  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: theme.color.surface,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                constraints: BoxConstraints.tight(Size(56, 56)),
                decoration: BoxDecoration(
                  color: theme.color.primaryContainer,
                ),
                alignment: Alignment.center,
                child: Text(
                  "SB",
                  style: theme.typo.titleSmall,
                ),
              ),
            ),
            FreeSpace.w(Space.l),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Produk ini",
                    style: theme.typo.bodyMedium,
                  ),
                  FreeSpace.h(4.sp),
                  true
                      ? Text.rich(
                          TextSpan(
                            text: "15.000",
                            style: theme.typo.bodyMedium!.copyWith(decoration: TextDecoration.lineThrough, color: theme.color.error),
                            children: [
                              TextSpan(
                                text: " " + "12.000",
                                style: theme.typo.bodyMedium!.copyWith(decoration: TextDecoration.none, color: theme.color.onSurface),
                              )
                            ],
                          ),
                        )
                      : Text(
                          "15.000",
                          style: theme.typo.bodyMedium,
                        ),
                  false
                      ? Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text("Catatan kaki" ?? ""),
                          ],
                        )
                      : SizedBox(),
                ],
              ),
            ),
            Icon(EvaIcons.chevron_right),
          ],
        ),
      ),
    );
  }
}
