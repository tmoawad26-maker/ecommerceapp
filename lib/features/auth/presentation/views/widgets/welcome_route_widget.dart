import 'package:ecommerceapp/core/utils/app_strings.dart';
import 'package:ecommerceapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WelcomeRouteWidget extends StatelessWidget {
  const WelcomeRouteWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 124, left: 16),
          child: Text(
            AppStrings.loginTitle,
            style: AppStyles.textStyle24SemiBoldWhite,
          ),
        ),
        SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.only(right: 196, left: 16),
            child: Text(
              AppStrings.loginSubtitle,
              style: AppStyles.textStyle16LightWhite,
            ),
          ),
        ),
      ],
    );
  }
}
