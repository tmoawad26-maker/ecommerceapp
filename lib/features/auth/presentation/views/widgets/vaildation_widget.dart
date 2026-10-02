import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_styles.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ValidationWidget extends StatelessWidget {
  const ValidationWidget({
    super.key,
    required this.label,
    required this.hintText,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppStyles.textStyle18MediumBlack.copyWith(
              color: AppColors.onPrimary,
            ),
          ),
          SizedBox(height: 24),
          CustomTextFormField(
            hintText: hintText,
            validator: validator,
            keyboardType: keyboardType,
            obscureText: obscureText,
            suffixIcon: suffixIcon,
          ),
        ],
      ),
    );
  }
}
