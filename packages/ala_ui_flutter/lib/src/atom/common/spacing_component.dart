// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FreeSpace extends StatelessWidget {
  double? width;
  double? height;
  FreeSpace({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  factory FreeSpace.w(double? value) => FreeSpace(
        width: value,
        height: 0,
      );
  factory FreeSpace.h(double? value) => FreeSpace(
        width: 0,
        height: value,
      );

  factory FreeSpace.square(double? value) => FreeSpace(
        width: value,
        height: value,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
