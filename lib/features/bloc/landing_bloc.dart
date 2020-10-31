import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_keysun_template/common/route/router.gr.dart';
import 'package:flutter_keysun_template/di/app_injector.dart';
import 'package:flutter_keysun_template/services/local_hive/PrefBox.dart';
import 'package:flutter_keysun_template/services/network/api_provider.dart';
import 'package:flutter_keysun_template/services/network/network_exceptions.dart';
import 'package:flutter_keysun_template/di/app_injections.dart';

part 'landing_event.dart';

part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingInitial());

  @override
  Stream<LandingState> mapEventToState(
    LandingEvent event,
  ) async* {
    if (event is IsAppReadyEvent) {
      /// This code is for the injection
      await injector.allReady();

      yield IsAppReadyState(true);
    } else if (event is RunLandingLogicEvent) {
      /// This is our space where we can check/write code before app is ready for
      /// the user
      try {
        // await AppInjector.get<APIProviderIml>().getQuotes();
        // throw AppNetworkException(NetworkExceptions.TYPE_ERROR);
      } on AppNetworkException catch (_) {
        print("Please check the fromJson method.");
      } finally {
        injector.get<PrefBox>().isLogin;
        await Future.delayed(Duration(seconds: 3));
        // if (injector.get<PrefBox>().isLogin) {
        if (Random().nextBool()) {
          ExtendedNavigator.root.replace(Routes.homePage);
        } else {
          ExtendedNavigator.root.replace(Routes.onBoardPage);
        }
      }
    }
  }
}
