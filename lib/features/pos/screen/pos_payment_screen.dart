import 'package:ala_pos/features/pos/screen/pos_success_screen.dart';
import 'package:ala_pos/shared/widget/appbar/appbar_component.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widget/payment_method_bottom_sheet.dart';

class PosPaymentScreen extends StatelessWidget {
  const PosPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);
    return Scaffold(
      backgroundColor: theme.color.primary,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const AppbarComponent(title: "Pembayaran"),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                color: theme.color.surface,
                child: Column(
                  children: [
                    // Total Transaction
                    Container(
                      // color: theme.color.surface,
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: theme.typo.titleMedium,
                          ),
                          Text(
                            88000.currency(),
                            style: theme.typo.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    // Button Money
                    Expanded(
                      child: Container(
                        color: theme.color.surface,
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: Column(
                          children: [
                            // Payment Method
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Metode Pembayaran",
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                      ),
                                      isScrollControlled: true,
                                      isDismissible: true,
                                      context: context,
                                      builder: (context) {
                                        return PaymentMethodBottomSheet();
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Cash",
                                        style: theme.typo.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                                      ),
                                      FreeSpace.w(Space.s),
                                      Icon(
                                        EvaIcons.chevron_right,
                                        size: 24.px,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            FreeSpace.h(Space.xl),
                            Column(
                              children: [
                                Text(
                                  "Pembayaran diterima",
                                  style: theme.typo.bodyMedium,
                                ),
                                FreeSpace.h(Space.l),
                                TextFieldComponent(
                                  hintText: "100,000",
                                  textAlign: TextAlign.center,
                                  inputFormatters: [ThousandsFormatter()],
                                  onChange: (value) {
                                    print(value);
                                  },
                                ),
                                FreeSpace.h(Space.l),
                                RichText(
                                  text: TextSpan(text: "Kembalian: ", style: theme.typo.bodyMedium, children: [
                                    TextSpan(
                                      text: 800000.currency(),
                                      style: theme.typo.titleSmall,
                                    )
                                  ]),
                                )
                              ],
                            ),
                            FreeSpace.h(Space.xl),
                            GridView(
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: Space.l, mainAxisSpacing: Space.l, childAspectRatio: 4.5 / 2),
                              children: [
                                CashValueButton(
                                    label: "200,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "200,000";
                                    }),
                                CashValueButton(
                                    label: "150,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "150,000";
                                    }),
                                CashValueButton(
                                    label: "100,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "100,000";
                                    }),
                                CashValueButton(
                                    label: "50,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "50,000";
                                    }),
                                CashValueButton(
                                    label: "20,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "20,000";
                                    }),
                                CashValueButton(
                                    label: "10,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "10,000";
                                    }),
                                CashValueButton(
                                    label: "5,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "5.000";
                                    }),
                                CashValueButton(
                                    label: "2,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "2.000";
                                    }),
                                CashValueButton(
                                    label: "1,000",
                                    onTap: () {
                                      // paymentReceiveField.text = "1.000";
                                    }),
                              ],
                            ),
                            FreeSpace.h(Space.l),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(50),
                                  backgroundColor: theme.color.primaryContainer,
                                  elevation: 0,
                                  textStyle: theme.typo.labelMedium!.copyWith(color: theme.color.primary),
                                  shape: RoundedRectangleBorder(side: BorderSide(color: theme.color.primary), borderRadius: theme.shape.xs)),
                              onPressed: () {
                                //
                              },
                              child: Text(
                                "88,000",
                                style: theme.typo.bodyMedium!.copyWith(color: theme.color.onPrimaryContainer),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FreeSpace.h(Space.m),
                    ButtonComponent(
                      size: ButtonSize.FullWidth,
                      text: "Bayar",
                      onPress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PosSuccessScreen()));
                      },
                      type: ButtonType.Primary,
                    ),
                    FreeSpace.h(5.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CashValueButton extends StatelessWidget {
  const CashValueButton({
    super.key,
    required this.label,
    required this.onTap,
  });
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: theme.color.primaryContainer,
          elevation: 0,
          textStyle: theme.typo.labelMedium!.copyWith(color: theme.color.primary),
          shape: RoundedRectangleBorder(side: BorderSide(color: theme.color.primary), borderRadius: theme.shape.xs)),
      onPressed: onTap,
      child: Text(
        label,
        style: theme.typo.bodyMedium!.copyWith(color: theme.color.onPrimaryContainer),
      ),
    );
  }
}
