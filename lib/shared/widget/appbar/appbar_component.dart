// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppbarComponent extends StatelessWidget {
  const AppbarComponent({
    Key? key,
    required this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnTap,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final Icon? leadingIcon;
  final Function()? leadingOnTap;

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Container(
      width: 100.w,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: theme.color.primary,
      ),
      height: 56,
      child: Row(
        children: [
          InkWell(
            onTap: leadingOnTap ??
                () {
                  Navigator.pop(context);
                },
            child: leadingIcon ??
                Icon(
                  EvaIcons.arrow_back_outline,
                  size: 24.px,
                  color: context.theme.color.onPrimary,
                ),
          ),
          FreeSpace.w(Space.xl),
          Text(
            title,
            style: theme.typo.titleMedium!.copyWith(
              color: context.theme.color.onPrimary,
            ),
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: actions ?? []),
          ),
        ],
      ),
    );
  }
}
