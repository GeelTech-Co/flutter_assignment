import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  final String? message;
  final int? code;
  const Failures({this.message, this.code});
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    return message.toString();
  }
}

class ServerFailure extends Failures {
  @override
  String toString() {
    if (message != null) {
      return message!;
    }

    String error = '';

    error = describeFailureReason();

    return error;
  }

  const ServerFailure({super.message, super.code});

  String describeFailureReason() {
    switch (code) {
      case 400:
        return AppStrings.wrongEmailOrPassword;
      case 401:
        return AppStrings.wrongEmailOrPassword;
      case 404:
        return AppStrings.requestDoesNotExist;
      case 422:
        return AppStrings.invalidData;
      case 500:
        return AppStrings.internalError;
      default:
        return AppStrings.tryAgainLater;
    }
  }
}

class CachedFailure extends Failures {
  const CachedFailure({super.message, super.code});
}
