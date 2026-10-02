import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 23,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.onPrimary),
        ),
        fillColor: AppColors.onPrimary,
        hintStyle: AppStyles.textStyle18MediumBlack.copyWith(
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        hintText: hintText,
      ),
    );
  }
}
