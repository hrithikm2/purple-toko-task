import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({Key? key, required this.controller, required this.hint})
      : super(key: key);
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
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
