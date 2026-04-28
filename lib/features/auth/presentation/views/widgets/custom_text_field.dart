import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    required Color backgroundColor,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0XFF949D9E)),
        filled: true,
        fillColor: Color(0XFFE6E9E9),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: Color(0XFFE6E9E9), width: 1),
    );
  }
}
