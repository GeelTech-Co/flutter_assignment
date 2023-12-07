import 'package:assignment_test/core/helper/mapper/mapper.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/networking/app_service_client/requests.dart';
import '../../../../../core/networking/app_service_client/error_handler.dart';
import '../../../../../core/networking/app_service_client/network_info.dart';
import '../../../../../core/networking/error/failure.dart';
import '../../domain/entities/authentication.dart';
import '../../domain/repositories/login_remote_repository.dart';
import '../database/authentication_remote_database.dart';

class AuthenticationRemoteRepositoryImpl
    implements AuthenticationRemoteRepository {
  final NetworkInfo networkInfo;
  final AuthenticationRemoteDatabase authenticationRemoteDataSource;

  AuthenticationRemoteRepositoryImpl(
      {required this.networkInfo,
      required this.authenticationRemoteDataSource});
  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequests loginRequests) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await authenticationRemoteDataSource.login(loginRequests);
        print("ahmedehdm${response}");
        if (response.status == ApiInternalStatus.SUCCESS) {
          return right(response.toDomain());
        } else {
          return left(Failure(
              statusCode: ApiInternalStatus.FAILURE,
              message: response.message ?? ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.INTERNAL_SERVER_ERROR.getFailure());
    }
  }
}
