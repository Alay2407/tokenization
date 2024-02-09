import 'package:flutter/material.dart';

import '../../utils/colors/custom_color.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final int? maxline;
  final FocusNode? focusNode;
  final String? Function(String?)? onChanged;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.keyboardType,
      this.suffixIcon,
      this.onTap,
      this.prefixIcon,
      this.focusNode,
      this.onChanged,
      this.maxline});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      focusNode: focusNode,
      onTap: onTap,
      textInputAction: TextInputAction.next,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: CustomColors.textBg),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: CustomColors.textBg),
        ),
        fillColor: CustomColors.textBg,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: CustomColors.txtBlack),
      ),
      style: const TextStyle(
          color: CustomColors.txtBlack,
          fontFamily: "RedHatDisplay",
          fontSize: 16,
          fontWeight: FontWeight.w500),
    );
  }
}
