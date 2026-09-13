import 'package:ecommerceapp/core/utils/assets.dart';
import 'package:ecommerceapp/core/utils/routing/routes.dart';
import 'package:ecommerceapp/features/splash/presentation/views/widgets/custom_elipses_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSplashScreenBody extends StatefulWidget {
  const CustomSplashScreenBody({super.key});

  @override
  State<CustomSplashScreenBody> createState() => _CustomSplashScreenBodyState();
}

class _CustomSplashScreenBodyState extends State<CustomSplashScreenBody> {
  @override
  void initState() {
    super.initState();
    navigateToMainLayout();
  }

  void navigateToMainLayout() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the next screen after the delay
      if (!mounted) return;
      GoRouter.of(context).go(Routes.mainLayoutPath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomElipsesWidget(imagePath: Assets.elipsesTop),
          SizedBox(height: 100),
          Container(
            width: double.infinity,
            height: 165,
            margin: const EdgeInsets.symmetric(horizontal: 17),
            child: Image.asset(
              Assets.routeSplash,
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          CustomElipsesWidget(imagePath: Assets.elipsesBottom),
        ],
      ),
    );
  }
}
