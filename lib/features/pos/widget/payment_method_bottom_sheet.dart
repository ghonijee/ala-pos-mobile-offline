import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 5.h,
        ),
        decoration: BoxDecoration(
          color: context.theme.color.surface,
          borderRadius: context.theme.shape.s,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 5,
              width: 75,
              decoration: BoxDecoration(
                color: theme.color.surfaceVariant,
                borderRadius: context.theme.shape.s,
              ),
            ),
            FreeSpace.h(Space.xl),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Metode Pembayaran", style: theme.typo.bodyLarge),
                // FreeSpace.h(Space.xl),
                RadioListTile(
                    value: "CASH",
                    groupValue: "CASH",
                    onChanged: (value) {},
                    title: Text(
                      "Cash",
                      style: theme.typo.bodyMedium,
                    )),
                RadioListTile(
                    value: "TRANSFER",
                    groupValue: "CASH",
                    onChanged: (value) {},
                    title: Text(
                      "Transfer",
                      style: theme.typo.bodyMedium,
                    )),
                RadioListTile(
                    value: "GOPAY",
                    groupValue: "CASH",
                    onChanged: (value) {},
                    title: Text(
                      "GoPay",
                      style: theme.typo.bodyMedium,
                    )),
                RadioListTile(
                    value: "SHOOPEPAY",
                    groupValue: "CASH",
                    onChanged: (value) {},
                    title: Text(
                      "ShoopePay",
                      style: theme.typo.bodyMedium,
                    )),
                RadioListTile(
                    value: "QRIA",
                    groupValue: "CASH",
                    onChanged: (value) {},
                    title: Text(
                      "QRIS",
                      style: theme.typo.bodyMedium,
                    )),
                RadioListTile(
                    value: "DANA",
                    groupValue: "CASH",
                    onChanged: (value) {},
                    title: Text(
                      "Dana",
                      style: theme.typo.bodyMedium,
                    )),
              ],
            ),
            FreeSpace.h(Space.xxl),
            ButtonComponent(
              text: "Simpan",
              size: ButtonSize.FullWidth,
              type: ButtonType.Primary,
              onPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
