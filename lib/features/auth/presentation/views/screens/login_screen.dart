import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: LoginScreenBody(),
      ),
    );
  }
}
