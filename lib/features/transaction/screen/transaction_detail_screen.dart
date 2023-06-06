import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../shared/widget/appbar/appbar_component.dart';
import '../../pos/widget/cart_item_component.dart';

@RoutePage(name: 'TransactionDetail')
class TransactionDetailScreen extends StatelessWidget {
  TransactionDetailScreen({super.key});
  final DateFormat dateFormat = DateFormat("EEEE, dd-MM-y", "id");

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);
    return Scaffold(
      backgroundColor: theme.color.primary,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const AppbarComponent(
              title: "TR0001120923XX",
            ),
            Expanded(
              child: Container(
                color: theme.color.surfaceVariant,
                child: SingleChildScrollView(
                  child: Container(
                    color: theme.color.surfaceVariant,
                    child: Column(
                      children: [
                        // FreeSpace.h(Space.s),
                        Container(
                          color: theme.color.surface,
                          padding: EdgeInsets.fromLTRB(20.sp, 16.sp, 20.sp, 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Status',
                                    style: theme.typo.bodyMedium,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 6.sp),
                                    decoration: BoxDecoration(
                                      borderRadius: theme.shape.xxl,
                                      color: theme.color.secondaryContainer,
                                    ),
                                    child: Text(
                                      "Proses",
                                      style: theme.typo.labelSmall?.copyWith(color: theme.color.onSecondaryContainer),
                                    ),
                                  )
                                ],
                              ),
                              FreeSpace.h(Space.l),
                              LabelValueWidget(label: "Tanggal", value: dateFormat.format(DateTime.now())),
                              FreeSpace.h(Space.l),
                              LabelValueWidget(label: "Nama Pembeli", value: "Ghoni Jee"),
                              // FreeSpace.h(Space.l),
                            ],
                          ),
                        ),
                        FreeSpace.h(Space.s),
                        Container(
                          color: theme.color.surface,
                          // padding: EdgeInsets.fromLTRB(20.sp, 16.sp, 20.sp, 16),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.symmetric(horizontal: 20.sp),
                            initiallyExpanded: true,
                            shape: const Border(
                              top: BorderSide(color: Colors.transparent),
                              bottom: BorderSide(color: Colors.transparent),
                            ),
                            title: Text(
                              "Detail",
                              style: theme.typo.titleSmall,
                            ),
                            children: [
                              ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) => const Divider(
                                  height: 1,
                                ),
                                itemCount: 8,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                    decoration: BoxDecoration(
                                      color: theme.color.surface,
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                              Text("2.000 x 20"),
                                              false == false
                                                  ? Column(
                                                      children: [
                                                        FreeSpace.h(
                                                          4,
                                                        ),
                                                        Text("Catatan kaki"),
                                                      ],
                                                    )
                                                  : SizedBox(),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          100000.currency(),
                                          style: theme.typo.bodyMedium,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        FreeSpace.h(Space.s),
                        Container(
                          color: theme.color.surface,
                          padding: EdgeInsets.fromLTRB(20.sp, 16.sp, 20.sp, 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              LabelValueWidget(label: "Subtotal", value: 88000.currency()),
                              FreeSpace.h(Space.l),
                              LabelValueWidget(label: "Diskon", value: 8000.currency()),
                              FreeSpace.h(Space.l),
                              LabelValueWidget(label: "Total", value: 80000.currency()),
                            ],
                          ),
                        ),
                        FreeSpace.h(Space.xxl),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 12.h,
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 16.sp),
        color: theme.color.surface,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonComponent(
              text: "Batalkan",
              type: ButtonType.Secondary,
              onPress: () {},
            ),
            ButtonComponent(
              text: "Lihat Struk",
              type: ButtonType.Primary,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class LabelValueWidget extends StatelessWidget {
  const LabelValueWidget({
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
          style: theme.typo.bodyMedium,
        ),
        Text(
          value,
          style: theme.typo.bodyMedium,
        ),
      ],
    );
  }
}
