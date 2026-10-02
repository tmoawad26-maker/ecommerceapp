import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_strings.dart';
import 'package:ecommerceapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          AppStrings.forgotPassword,
          style: AppStyles.textStyle18MediumBlack.copyWith(
            color: AppColors.onPrimary,
          ),
        ),
      ),
    );
  }
}
