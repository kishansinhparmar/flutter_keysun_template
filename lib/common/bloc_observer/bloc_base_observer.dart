import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBaseObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    // print("¤¤¤ Event => $event ¤¤¤");
    super.onEvent(bloc, event);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    // print("¤¤¤ Change: $change ¤¤¤");
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // print("¤¤¤ Transition: $transition ¤¤¤");
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    // print("¤¤¤ ERROR: $error ¤¤¤");
    super.onError(cubit, error, stackTrace);
  }
}
