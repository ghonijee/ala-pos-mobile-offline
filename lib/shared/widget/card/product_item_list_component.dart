import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductItemListComponent extends StatefulWidget {
  const ProductItemListComponent({super.key});

  @override
  State<ProductItemListComponent> createState() => _ProductItemListComponentState();
}

class _ProductItemListComponentState extends State<ProductItemListComponent> {
  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      textColor: Theme.of(context).colorScheme.primary,
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
      subtitle: Text(
        "Rp. 90.000",
        style: theme.typo.bodyMedium,
      ),
      // trailing: ,
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Stok",
            style: theme.typo.labelMedium!.copyWith(color: theme.color.onBackground),
          ),
          Text(
            "99",
            style: theme.typo.labelMedium!.copyWith(color: theme.color.onBackground),
          ),
        ],
      ),
    );
  }
}
