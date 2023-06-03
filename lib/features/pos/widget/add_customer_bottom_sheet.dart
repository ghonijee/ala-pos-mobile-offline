import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddCustomerBottomSheet extends StatelessWidget {
  const AddCustomerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
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
            FreeSpace.h(Space.xxl),
            TextFieldComponent(
              withLabel: true,
              labelText: "Nama Pelanggan",
              hintText: "Yunus",
            ),
            FreeSpace.h(30.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonComponent(
                    text: "Batal",
                    type: ButtonType.Secondary,
                    size: ButtonSize.Medium,
                    onPress: () {
                      Navigator.pop(context);
                    },
                  ),
                  ButtonComponent(
                    text: "Simpan",
                    size: ButtonSize.Medium,
                    type: ButtonType.Primary,
                    onPress: () {
                      //
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
