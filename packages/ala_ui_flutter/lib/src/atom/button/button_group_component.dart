import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonGroupComponent extends StatefulWidget {
  const ButtonGroupComponent({super.key, required this.children});
  final List<ButtonGroupItem> children;

  @override
  State<ButtonGroupComponent> createState() => _ButtonGroupComponentState();
}

class _ButtonGroupComponentState extends State<ButtonGroupComponent> {
  @override
  Widget build(BuildContext context) {
    var theme = context.theme;

    return Container(
      width: 100.w,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: theme.color.surface,
        border: Border.all(color: theme.color.outlineVariant),
      ),
      child: Row(
        children: widget.children,
      ),
    );
  }
}

class ButtonGroupItem<T> extends StatefulWidget {
  const ButtonGroupItem({
    super.key,
    required this.text,
    this.isFirst = false,
    this.isLast = false,
    this.isActive = false,
    this.onTap,
    required this.value,
  });
  final String text;
  final T value;
  final bool isFirst;
  final bool isLast;
  final bool isActive;
  final Function()? onTap;

  @override
  State<ButtonGroupItem> createState() => _ButtonGroupItemState();
}

class _ButtonGroupItemState extends State<ButtonGroupItem> {
  @override
  Widget build(BuildContext context) {
    var theme = context.theme;

    return Expanded(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: widget.isActive ? theme.color.primary : theme.color.surfaceVariant,
            borderRadius: BorderRadius.only(
                topLeft: widget.isFirst ? const Radius.circular(8) : Radius.zero,
                bottomLeft: widget.isFirst ? const Radius.circular(8) : Radius.zero,
                topRight: widget.isLast ? const Radius.circular(8) : Radius.zero,
                bottomRight: widget.isLast ? const Radius.circular(8) : Radius.zero),
          ),
          child: Text(
            widget.text,
            style: theme.typo.labelMedium!.copyWith(
              color: widget.isActive ? theme.color.onPrimary : theme.color.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
