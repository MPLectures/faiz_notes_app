import 'package:flutter/material.dart';

import '../Helpers/Constant.dart';

class CustomTextFormField extends StatelessWidget {
  String? hintText;
  TextStyle? hintStyle;
  Color? color;
  BorderRadius borderRadius;
  BorderSide? borderSide;
  BorderSide? BorderColor;
  Color? fillColor;
  bool? falseColor;
  InputBorder? border;
  Icon ? SuffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // border: InputBorder.none,
        hintText: hintText,
        hintStyle: hintStyle!,
        filled: falseColor,
        fillColor: fillColor,
        border: border,
        suffixIcon: SuffixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: borderSide!,
          borderRadius: borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderColor!,
          borderRadius: borderRadius,
        ),
      ),
    );
  }

  CustomTextFormField({
    this.hintText,
    this.hintStyle,
    this.color,
    this.SuffixIcon,
    this.BorderColor,
    this.borderSide,
    this.fillColor,
    this.falseColor,
    this.border,
    required this.borderRadius,
  });
}
