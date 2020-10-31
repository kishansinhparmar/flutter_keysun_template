import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_keysun_template/features/home/home_page.dart';
import 'package:flutter_keysun_template/features/onboard/onboard_page.dart';
import 'package:flutter_keysun_template/features/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: SplashPage,
      initial: true,
    ),
    AdaptiveRoute(
      page: HomePage,
    ),
    AdaptiveRoute(
      page: OnBoardPage,
    ),
  ],
)
// use a different name from 'Router', because a class with the name "Router"
// exists in the material package
class $AppRouter {}
