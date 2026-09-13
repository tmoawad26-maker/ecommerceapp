import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/features/splash/presentation/views/widgets/custom_splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: CustomSplashScreenBody(),
      ),
    );
  }
}
