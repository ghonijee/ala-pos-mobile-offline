// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';

class TagsComponent extends StatefulWidget {
  TagsComponent({
    Key? key,
    required this.label,
    required this.isActive,
    this.onPress,
  }) : super(key: key);
  final String label;
  final bool isActive;
  final Function()? onPress;

  @override
  State<TagsComponent> createState() => _TagsComponentState();
}

class _TagsComponentState extends State<TagsComponent> {
  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 4),
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: widget.isActive ? theme.color.secondaryContainer : theme.color.surface,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: widget.isActive ? theme.color.secondaryContainer : theme.color.outline,
          ),
        ),
        child: Text(
          widget.label,
          style: theme.typo.labelSmall!.copyWith(color: widget.isActive ? theme.color.onSecondaryContainer : theme.color.onSurface),
        ),
      ),
    );
  }
}
