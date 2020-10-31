import 'package:equatable/equatable.dart';

enum NetworkExceptions { SOCKET, TYPE_ERROR, OTHER }

class AppNetworkException extends Equatable {
  final NetworkExceptions networkExceptionType;
  final String message;

  const AppNetworkException(this.networkExceptionType, {this.message});

  @override
  List<Object> get props => [networkExceptionType, message];
}
