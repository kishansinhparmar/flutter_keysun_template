// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../features/home/home_page.dart';
import '../../features/onboard/onboard_page.dart';
import '../../features/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String homePage = '/home-page';
  static const String onBoardPage = '/on-board-page';
  static const all = <String>{
    splashPage,
    homePage,
    onBoardPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.onBoardPage, page: OnBoardPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    OnBoardPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnBoardPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushOnBoardPage() => push<dynamic>(Routes.onBoardPage);
}
