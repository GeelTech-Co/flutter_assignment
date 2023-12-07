import 'package:equatable/equatable.dart';

class Authentication extends Equatable {
  final int status;
  final String message;
  const Authentication({required this.status, required this.message});

  @override
  List<Object> get props => [status, message];
}
