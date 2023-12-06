import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  final int message;
  const Failures({
    required this.message,
  });
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
    String error = '';
    if (noInternet != null) {
      return 'no Internet connection';
    }
    error = describeFailureReason();

    return error != '' ? error : 'there was an error try again later ';
  }

  String? noInternet;
  ServerFailure({required super.message, this.noInternet});
  String describeFailureReason() {
    switch (message) {
      case 200:
        return 'OK. Everything worked as expected.';
      case 201:
        return 'A resource was successfully created.';
      case 204:
        return 'The request was handled successfully, but there is no body content.';
      case 304:
        return 'The resource was not modified. You can use the cached version.';
      case 400:
        return 'Bad request. Please check your input.';
      case 401:
        return 'Authentication failed. Please check your credentials.';
      case 403:
        return 'You do not have permission to access this resource.';
      case 404:
        return 'The requested resource does not exist.';
      case 405:
        return 'The requested method is not allowed.';
      case 415:
        return 'The requested content type is not supported.';
      case 422:
        return 'The data you provided is invalid.';
      case 429:
        return 'You have exceeded the rate limit.';
      case 500:
        return 'An internal server error occurred.';
      default:
        return 'An unknown error occurred.';
    }
  }
}

class CachedFailure extends Failures {
  const CachedFailure({required super.message});
}
