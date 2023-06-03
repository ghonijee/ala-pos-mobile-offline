import 'package:ala_pos/shared/widget/appbar/appbar_component.dart';
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PosCartItemDetailScreen extends StatelessWidget {
  const PosCartItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Scaffold(
      backgroundColor: theme.color.primary,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              AppbarComponent(
                title: "Elvicto Face Wash 100ml",
                actions: [
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Icon(
                      BoxIcons.bx_trash,
                      size: 24.px,
                      color: context.theme.color.onPrimary,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: Space.l, vertical: Space.xl),
                  color: theme.color.surface,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Nama Produk",
                        ),
                        FreeSpace.h(Space.l),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Harga",
                        ),
                        FreeSpace.h(Space.l),
                        Text(
                          "Tipe Diskon",
                          style: theme.typo.labelLarge,
                        ),
                        SizedBox(
                          height: Space.s.sp,
                        ),
                        ButtonGroupComponent(children: [
                          ButtonGroupItem<String>(
                            text: "Harga (Rp)",
                            value: "Harga",
                            isActive: true,
                            isFirst: true,
                            onTap: () {
                              // discountModeState.value = "harga";
                            },
                          ),
                          ButtonGroupItem<String>(
                            text: "Persen (%)",
                            value: "Persen",
                            isActive: false,
                            isLast: true,
                            onTap: () {
                              // discountModeState.value = "persen";
                            },
                          ),
                        ]),
                        FreeSpace.h(Space.l),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Nilai Diskon",
                          prefix: Text(
                            "Rp. ",
                            style: theme.typo.bodyMedium,
                          ),
                          suffix: Text(
                            " %",
                            style: theme.typo.bodyMedium,
                          ),
                        ),
                        FreeSpace.h(Space.l),
                        TextFieldComponent(
                          withLabel: true,
                          labelText: "Catatan",
                          minLines: 2,
                        ),
                        FreeSpace.h(Space.l),
                        TextFieldCollapseComponent(
                          withLabel: true,
                          labelText: "Jumlah",
                          textAlign: TextAlign.center,
                          hintText: "5",
                          collapseMode: InputCollapseMode.Both,
                          prefix: InkWell(onTap: () {}, child: Icon(EvaIcons.minus)),
                          suffix: InkWell(onTap: () {}, child: Icon(EvaIcons.plus)),
                        ),
                        FreeSpace.h(Space.xl),
                        ButtonComponent(
                          size: ButtonSize.FullWidth,
                          text: "Simpan",
                          onPress: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
