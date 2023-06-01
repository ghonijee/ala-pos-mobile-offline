// ignore_for_file: must_be_immutable

import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarSearchComponent extends StatefulWidget {
  AppBarSearchComponent({
    super.key,
    this.leadingIcon,
    this.leadingOnTap,
    this.hintText,
    this.searchController,
    this.actions,
    this.onChange,
    this.onEditingComplete,
  });
  Icon? leadingIcon;
  Function()? leadingOnTap;
  Function(String value)? onChange;
  Function()? onEditingComplete;
  TextEditingController? searchController;
  String? hintText;
  List<Widget>? actions;

  @override
  State<AppBarSearchComponent> createState() => _AppBarSearchComponentState();
}

class _AppBarSearchComponentState extends State<AppBarSearchComponent> {
  @override
  Widget build(BuildContext context) {
    ThemeFoundation theme = BaseUI.of(context);
    return Container(
      //  height: 100.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: theme.color.primary,
      ),
      child: Row(
        children: [
          widget.leadingIcon != null
              ? Row(
                  children: [
                    InkWell(
                      onTap: widget.leadingOnTap,
                      child: widget.leadingIcon,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                )
              : SizedBox(),
          Expanded(
            child: SizedBox(
              height: 40.px,
              child: TextField(
                controller: widget.searchController,
                onChanged: widget.onChange,
                onEditingComplete: widget.onEditingComplete,
                style: theme.typo.labelLarge?.copyWith(color: theme.color.onPrimary),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  prefixIcon: Icon(
                    IonIcons.search,
                    size: 20.px,
                    color: theme.color.onPrimary,
                  ),
                  hintStyle: theme.typo.labelMedium?.copyWith(color: theme.color.onPrimary),
                  hintText: widget.hintText ?? "Cari disini...",
                  // enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color: theme.color.outlineVariant)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color: theme.color.onPrimary)),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Row(
            children: widget.actions ?? [],
          ),
        ],
      ),
    );
  }
}
