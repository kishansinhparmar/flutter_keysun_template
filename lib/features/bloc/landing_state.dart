part of 'landing_bloc.dart';

abstract class LandingState extends Equatable {
  const LandingState();
}

class LandingInitial extends LandingState {
  @override
  List<Object> get props => [];
}

class IsAppReadyState extends LandingState {
  final bool isAppReady;

  const IsAppReadyState(this.isAppReady);

  @override
  List<Object> get props => [isAppReady];
}
