abstract class BaseAppFlavor {
  String googleApiKey;
  String baseURL;
  bool isDevelopment;
}

/// Setup development Env.
class DevAppFlavor extends BaseAppFlavor {
  @override
  String get googleApiKey => '';

  @override
  String get baseURL => 'https://programming-quotes-api.herokuapp.com';

  @override
  bool get isDevelopment => true;
}

/// Setup development Env.
class ProAppFlavor extends BaseAppFlavor {
  @override
  String get googleApiKey => '';

  @override
  String get baseURL => 'https://programming-quotes-api.herokuapp.com';

  @override
  bool get isDevelopment => false;
}
