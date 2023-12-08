import 'package:assignment_test/modules/base/repository/base_repository.dart';
import 'package:assignment_test/network/error_handler.dart';
import 'package:assignment_test/network/failure.dart';
import 'package:assignment_test/network/network_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepository extends BaseRepository {
  LoginRepository();

  Future<Either<Failure, bool>> login(
      {required String userName, required String password}) async {
    if (await networkInfo.isConnected) {
      //its connected to internet , its safe to call API
      try {
        var d = await dio.getDio();
        final response = await d
            .post(NetworkConstants.login, data: {
          'userName': userName,
          'password': password
        },
        );

        if (response.statusCode == 200) {
          //success return data
          return const Right(true);
        } else {
          //failure -- return business error

          return Left(
              Failure(ApiInternalStatus.failure, ResponseMessage.unKnown));
        }
      } on DioException catch (error) {
        if (error.response?.statusCode == 404) {
          print(
              error.response?.data['message'] ?? ResponseMessage.notFound);
          return Left(Failure(
              error.response?.statusCode ?? ApiInternalStatus.failure,
              error.response?.data['message']));
        } else {
          return Left(ErrorHandler.handle(error).failure);
        }/// And So On this just an example
      }
    } else {
      //return internet connection error
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}