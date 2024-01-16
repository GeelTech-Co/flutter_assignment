import 'package:equatable/equatable.dart';

class ApiException extends Equatable implements Exception {
 final String? errorMessage;

 const ApiException(this.errorMessage);

  @override
  String toString() {
    return '$errorMessage';
  }

  @override
  List<Object?> get props => [errorMessage];
}