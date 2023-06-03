// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ala_ui/src/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFieldComponent extends StatefulWidget {
  final TextEditingController? controller;
  final bool? withLabel;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final Function(String value)? onChange;
  final int? minLines;
  final int? maxLines;
  final Widget? prefix;
  final Widget? suffix;

  /// {@macro flutter.widgets.editableText.inputFormatters}
  final List<TextInputFormatter>? inputFormatters;
  const TextFieldComponent({
    Key? key,
    this.controller,
    this.withLabel = false,
    this.labelText,
    this.hintText,
    this.onChange,
    this.obscureText = false,
    this.inputFormatters,
    this.maxLines,
    this.minLines,
    this.prefix,
    this.suffix,
  }) : super(key: key);

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.withLabel!
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.labelText ?? "Label",
                    style: theme.typo.labelLarge,
                  ),
                  SizedBox(
                    height: Space.s.sp,
                  ),
                ],
              )
            : const SizedBox(),
        TextField(
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          controller: widget.controller,
          onChanged: widget.onChange,
          obscureText: widget.obscureText,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: theme.typo.labelLarge,
            filled: true,
            fillColor: theme.color.surface,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            border: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: theme.color.outlineVariant), borderRadius: theme.shape.xs),
            prefix: widget.prefix,
            suffix: widget.suffix,
          ),
        ),
      ],
    );
  }
}
