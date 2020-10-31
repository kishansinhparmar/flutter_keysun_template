import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_keysun_template/services/local_hive/PrefBox.dart';
import 'package:flutter_keysun_template/services/network/api_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

// GetIt _injector = GetIt.I;

// class AppInjector {
//   AppInjector._internal();
//
//   static T get<T>({String instanceName, dynamic param1, dynamic param2}) =>
//       _injector<T>(instanceName: instanceName, param1: param1, param2: param2);
//
//   static Future<void> create() async {
//     _initRepos();
//   }
//
//   static _initRepos() async {
//     /// Hive need a path for storing the data. Note: Web doesn't require
//     if (!kIsWeb) {
//       Directory appDocumentDir = await getApplicationDocumentsDirectory();
//
//       Hive.init(appDocumentDir.path);
//     }
//
//     _injector.registerSingletonAsync(
//       () => PrefBox.getInstance(),
//     );
//
//     _injector.registerSingletonAsync(
//       () => APIProviderIml.getInstance(),
//     );
//   }
//
//   static letsGetReadyAll() async {
//     _injector.allReady();
//   }
//
//   static close() {
//     _injector.reset();
//   }
// }
