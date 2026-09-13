import 'package:ecommerceapp/core/utils/routing/routes.dart';
import 'package:go_router/go_router.dart';

import '../../../features/splash/presentation/splash_screen.dart';

abstract class AppRouter {
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.initialRoute,
        builder: (context, state) => SplashScreen(),
      ),
    ],
  );
}
