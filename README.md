# flutter keysun template

### How to build/run app flavor wise
</br>

[Ref. Link for flavoring flutter application](https://itnext.io/flutter-1-17-no-more-flavors-no-more-ios-schemas-command-argument-that-solves-everything-8b145ed4285d)

</br>

![flutter run command variables](assets/flutter_run_command_parameters.png)

## Run or Build dev env

flutter run --dart-define=env=dev --dart-define=APP_NAME=KeySunDev --dart-define=APP_SUFFIX=.dev

flutter run --dart-define=env=dev --dart-define=APP_BUNDLE_ID=dev.keysun.flutterbaseapp --dart-define=APP_NAME=KeySunDev --dart-define=APP_SUFFIX=.dev

## Run or Build pro env

flutter run --dart-define=env=prod --dart-define=APP_NAME=KeySunPro --dart-define=APP_SUFFIX=

## String variable help

### Pass Primary Bundleid
--dart-define=APP_BUNDLE_ID=dev.keysun.v1

### Which Flavor You Want
--dart-define=env=dev

### Pass App Name
--dart-define=APP_NAME=KeySunV1

### If you want to add suffix
--dart-define=APP_SUFFIX=.dev