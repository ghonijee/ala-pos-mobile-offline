import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductItemGridComponent extends StatefulWidget {
  const ProductItemGridComponent({super.key});

  // final ProductModel productModel;

  @override
  State<ProductItemGridComponent> createState() => _ProductItemGridComponentState();
}

class _ProductItemGridComponentState extends State<ProductItemGridComponent> {
  @override
  Widget build(BuildContext context) {
    print(40.w);
    return Container(
      width: 150.px,
      height: 175.px,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: context.theme.color.surface, border: Border.all(color: context.theme.color.outlineVariant)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 4,
          child: Container(
              width: double.infinity,
              child: Icon(
                BoxIcons.bx_box,
                size: 35,
                color: context.theme.color.primary,
              )),
        ),
        Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Name",
                    style: context.theme.typo.labelMedium,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Divider(),
                      Text(
                        "Rp 12.000",
                        style: context.theme.typo.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
