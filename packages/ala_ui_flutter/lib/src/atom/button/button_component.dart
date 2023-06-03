// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  Primary,
  Secondary,
}

enum ButtonSize {
  FullWidth,
  Large,
  Medium,
  Small,
}

class ButtonComponent extends StatefulWidget {
  final Function()? onPress;
  final bool isLoading;
  final ButtonType? type;
  final ButtonSize? size;
  final String text;
  final double? elevation;
  final Size? customSize;
  const ButtonComponent({
    Key? key,
    this.onPress,
    this.isLoading = false,
    this.type = ButtonType.Primary,
    this.size = ButtonSize.Medium,
    required this.text,
    this.elevation = 1.0,
    this.customSize,
  }) : super(key: key);

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  Color getBackgroundColorValue(BuildContext context) {
    switch (widget.type) {
      case ButtonType.Secondary:
        return context.theme.color.primaryContainer;
      default:
        return context.theme.color.primary;
    }
  }

  Color getTextColorValue(BuildContext context) {
    switch (widget.type) {
      case ButtonType.Secondary:
        return context.theme.color.onPrimaryContainer;
      default:
        return context.theme.color.onPrimary;
    }
  }

  Size buttonSizeValue() {
    switch (widget.size) {
      case ButtonSize.FullWidth:
        return const Size.fromHeight(48);
      case ButtonSize.Large:
        return const Size(250, 48);
      case ButtonSize.Medium:
        return const Size(150, 48);
      case ButtonSize.Small:
        return const Size(100, 48);
      default:
        return const Size(150, 48);
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;

    return ElevatedButton(
      onPressed: widget.onPress,
      style: ElevatedButton.styleFrom(
        elevation: widget.elevation,
        backgroundColor: getBackgroundColorValue(context),
        minimumSize: widget.customSize ?? buttonSizeValue(),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
      child: widget.isLoading
          ? SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: theme.color.onPrimary,
              ),
            )
          : Text(
              widget.text,
              style: theme.typo.labelLarge?.copyWith(color: getTextColorValue(context)),
            ),
    );
  }
}
