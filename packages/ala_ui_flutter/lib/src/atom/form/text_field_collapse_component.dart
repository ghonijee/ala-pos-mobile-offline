// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ala_ui/src/ala_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum InputCollapseMode { Right, Left, Both }

class TextFieldCollapseComponent extends StatefulWidget {
  final TextEditingController? controller;
  final bool? withLabel;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final Function(String value)? onChange;
  final int? minLines;
  final int? maxLines;
  final InputCollapseMode? collapseMode;
  final Widget? prefix;
  final Widget? suffix;
  final TextAlign textAlign;

  /// {@macro flutter.widgets.editableText.inputFormatters}
  final List<TextInputFormatter>? inputFormatters;
  const TextFieldCollapseComponent({
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
    this.collapseMode,
    this.prefix,
    this.suffix,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  State<TextFieldCollapseComponent> createState() => _TextFieldCollapseComponentState();
}

class _TextFieldCollapseComponentState extends State<TextFieldCollapseComponent> {
  late Color _color;
  late ThemeFoundation theme;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      theme = BaseUI.of(context);
      _color = theme.color.outlineVariant;
    });
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
        Row(
          children: [
            [InputCollapseMode.Both, InputCollapseMode.Left].contains(widget.collapseMode)
                ? Container(
                    alignment: Alignment.center,
                    height: 50,
                    // constraints: BoxConstraints.tight(Size.fromHeight(50)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: theme.color.surface,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                      border: Border.all(
                        color: _color,
                        width: 1.0,
                      ),
                    ),
                    child: widget.prefix,
                  )
                : SizedBox(),
            Expanded(
              child: TextField(
                textAlign: widget.textAlign,
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
                ),
              ),
            ),
            [InputCollapseMode.Both, InputCollapseMode.Right].contains(widget.collapseMode)
                ? Container(
                    alignment: Alignment.center,
                    height: 50,
                    // constraints: BoxConstraints.tight(Size.fromHeight(50)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: theme.color.surface,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
                      border: Border.all(
                        color: _color,
                        width: 1.0,
                      ),
                    ),
                    child: widget.suffix)
                : SizedBox(),
          ],
        ),
      ],
    );
  }
}
