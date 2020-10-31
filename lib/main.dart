import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keysun_template/common/flavor/flavor_config.dart';
import 'package:flutter_keysun_template/features/bloc/landing_bloc.dart';
import 'package:flutter_keysun_template/di/app_injections.dart';

import 'common/bloc_observer/bloc_base_observer.dart';
import 'features/landing_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// We can pass the environment from the console
  /// flutter build apk --dart-define=environment=prod or dev
  FlavorConfig.setUpFlavor();

  /// Initialize injector
  await configureDependencies();

  /// Observe all the BLoC events and state
  Bloc.observer = BlocBaseObserver();

  runZonedGuarded(() async {
    runApp(
      BlocProvider(
        create: (_) => LandingBloc(),
        child: LandingPage(),
      ),
    );
  }, (error, stack) {}, zoneSpecification: ZoneSpecification());
}
