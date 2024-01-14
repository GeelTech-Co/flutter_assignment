import 'package:dio/dio.dart';

abstract class ErrorHandler {
  final String errMessage;

  const ErrorHandler(this.errMessage);
}

class ServerFailure extends ErrorHandler {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');


      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response?.statusCode, dioError.response?.data);

      case DioExceptionType.badCertificate:
        return ServerFailure('Request to ApiServer was bad certificate');
      case DioExceptionType.connectionError:
        return ServerFailure('Request to ApiServer was bad connection error');
      case DioExceptionType.unknown:
        return ServerFailure('Opps There was an Error, Please try again');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}


class CacheFailure extends ErrorHandler {
  CacheFailure(super.errMessage);
}

class NetworkFailure extends ErrorHandler {
  NetworkFailure(super.errMessage);
}