import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keysun_template/common/route/router.gr.dart';
import 'package:flutter_keysun_template/common/themes/app_strings.dart';
import 'package:flutter_keysun_template/common/themes/app_theme_data.dart';

import 'bloc/landing_bloc.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  LandingBloc _landingBloc;

  @override
  void initState() {
    _landingBloc = context.bloc<LandingBloc>();
    _landingBloc.add(
      IsAppReadyEvent(),
    );

    _landingBloc.listen((LandingState state) {
      print(state);
      if (state is IsAppReadyState) {
        if (state.isAppReady)
          _landingBloc.add(
            RunLandingLogicEvent(),
          );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.app_name,
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
        initialRoute: '/',
        // guards: [AuthGuard()],
        builder: (ctx, extendedNav) => Theme(
          data: AppThemeData.appThemeData(),
          child: extendedNav,
        ),
      ),
    );
  }
}
