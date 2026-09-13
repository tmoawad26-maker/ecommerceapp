import 'package:ecommerceapp/core/utils/app_strings.dart';
import 'package:ecommerceapp/core/utils/routing/app_router.dart';
import 'package:flutter/material.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
