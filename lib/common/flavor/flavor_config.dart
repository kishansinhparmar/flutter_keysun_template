import 'package:flutter/material.dart';

enum MyEnvironments { prod, dev, test }

class FlavorConfig {
  /// Define your required variables
  final MyEnvironments environment;
  final String baseUrl;
  final String googleAPIKey;

  static FlavorConfig _instance;

  FlavorConfig._internal(
    this.environment,
    this.baseUrl,
    this.googleAPIKey,
  );

  static FlavorConfig get instance => _instance;

  /// Factor flavor class
  factory FlavorConfig({
    MyEnvironments environment: MyEnvironments.test,
    String baseUrl,
    String googleAPIKey,
  }) {
    _instance ??= FlavorConfig._internal(
      environment,
      baseUrl,
      googleAPIKey,
    );

    return _instance;
  }

  static void setUpFlavor(
      {MyEnvironments defaultEnvironment = MyEnvironments.dev}) {
    /// Getter for falvor environment
    MyEnvironments getFlavorEnvironment() {
      /// Read variable from environment
      const environment = String.fromEnvironment('ENVIRONMENT');

      switch (environment) {
        case "test":
          return MyEnvironments.test;
        case "prod":
          return MyEnvironments.prod;
        case "dev":
          return MyEnvironments.dev;
        default:
          return null;
      }
    }

    /// Getter for base URL
    String getBaseUrl(MyEnvironments environment) {
      switch (environment) {
        case MyEnvironments.prod:
          return "https://programming-quotes-api.herokuapp.com/";

        case MyEnvironments.dev:
          return "https://programming-quotes-api.herokuapp.com/";

        case MyEnvironments.test:
          return "https://programming-quotes-api.herokuapp.com/";
      }
      return "https://programming-quotes-api.herokuapp.com/";
    }

    /// Getter for base URL
    String getGoogleAPIKey(MyEnvironments environment) {
      switch (environment) {
        case MyEnvironments.prod:
          return "asdQWE";

        case MyEnvironments.dev:
          return "asdQWE";

        case MyEnvironments.test:
          return "asdQWE";
      }
      return "asdQWE";
    }

    /// set flavorEnvironment via getter method
    var flavorEnvironment = getFlavorEnvironment() ?? defaultEnvironment;

    /// Finally set environment
    FlavorConfig(
      environment: flavorEnvironment,
      baseUrl: getBaseUrl(flavorEnvironment),
      googleAPIKey: getGoogleAPIKey(flavorEnvironment),
    );
  }
}
