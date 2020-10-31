import 'package:flutter/foundation.dart';
import 'package:flutter_keysun_template/services/local_hive/PrefBox.dart';
import 'package:flutter_keysun_template/services/network/api_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

GetIt injector = GetIt.I;

Future<void> configureDependencies() async {
  /// Hive need a path for storing the data. Note: Web doesn't require
  if (!kIsWeb) {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }

  injector.registerSingletonAsync(
    () => PrefBox.getInstance(),
  );

  injector.registerSingletonAsync(
    () => APIProviderIml.getInstance(),
  );
}
