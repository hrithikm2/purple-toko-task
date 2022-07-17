import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      required this.controller,
      required this.hint,
      this.suffixicon,
      this.obscure = false,
      required this.validator})
      : super(key: key);
  final TextEditingController controller;
  final String hint;
  final Widget? suffixicon;
  final bool obscure;
  final Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator?.call(value),
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: suffixicon,
          fillColor: AppColors.secondaryColor,
          isDense: true,
          hintText: hint,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(999),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(999),
          )),
    );
  }
}
