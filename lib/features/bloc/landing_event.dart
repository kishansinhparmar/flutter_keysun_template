part of 'landing_bloc.dart';

abstract class LandingEvent extends Equatable {
  const LandingEvent();
}

class IsAppReadyEvent extends LandingEvent {
  @override
  List<Object> get props => [];
}

class RunLandingLogicEvent extends LandingEvent {
  @override
  List<Object> get props => [];
}