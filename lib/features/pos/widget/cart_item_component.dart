import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                  style: theme.typo.bodyMedium,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Produk ini",
                    style: theme.typo.bodyMedium,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  false
                      ? Text.rich(
                          TextSpan(
                            text: "15.000",
                            style: theme.typo.bodyMedium!.copyWith(decoration: TextDecoration.lineThrough),
                            children: [
                              TextSpan(
                                text: " " + "12.000",
                                style: theme.typo.bodyMedium!.copyWith(
                                  decoration: TextDecoration.none,
                                ),
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
