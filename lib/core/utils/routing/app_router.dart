import 'package:ecommerceapp/core/utils/routing/routes.dart';
import 'package:ecommerceapp/features/main_layout/views/main_layout.dart';
import 'package:go_router/go_router.dart';

import '../../../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.initialRoute,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: Routes.mainLayoutPath,
        name: Routes.mainLayoutRoute,
        builder: (context, state) => MainLayout(),
      ),
    ],
  );
}
