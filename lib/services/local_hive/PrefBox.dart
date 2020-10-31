import 'package:hive/hive.dart';

import 'hive_keys.dart';

class PrefBox {
  static PrefBox _instance;
  static Box box;

  final String _keyIsLogin = "is_login";
  final String _keyPhotoURL = "photoURL";
  final String _keyDisplayName = "display_name";
  final String _keyEmail = "email";

  static Future<PrefBox> getInstance() async {
    if (_instance == null) {
      _instance = PrefBox();
    }

    if (!Hive.isBoxOpen(HiveKeys.pref_box_name)) {
      box = await Hive.openBox(HiveKeys.pref_box_name);
    } else {
      box = Hive.box(HiveKeys.pref_box_name);
    }

    return _instance;
  }

  bool get isLogin {
    return box.get(_keyIsLogin) ?? false;
  }

  set isLogin(bool flag) {
    box.put(_keyIsLogin, flag);
  }

  String get photoURL {
    return box.get(_keyPhotoURL) ?? '';
  }

  set photoURL(String photoURL) {
    box.put(_keyPhotoURL, photoURL);
  }

  String get displayName {
    return box.get(_keyDisplayName) ?? '';
  }

  set displayName(String displayName) {
    box.put(_keyDisplayName, displayName);
  }

  String get email {
    return box.get(_keyEmail) ?? '';
  }

  set email(String email) {
    box.put(_keyEmail, email);
  }
}
