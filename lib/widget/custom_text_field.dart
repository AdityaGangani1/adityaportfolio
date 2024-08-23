import 'package:adityaportfolio/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.controller, this.maxline = 1, this.hintText});

  final TextEditingController? controller;
  final int maxline;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      controller: controller,
      style: const TextStyle(
        color: CustomColors.scaffoldBg,
      ),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColors.whitePrimary,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText: hintText,
          hintStyle: TextStyle(color: CustomColors.hintDark)),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
