import 'package:assignment_test/core/errors/failure.dart';
import 'package:assignment_test/features/login/data/data_source/remote_data_source.dart';
import 'package:assignment_test/features/login/data/models/login_attributes.dart';
import 'package:assignment_test/features/login/domain/repository/repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class LoginRepositoryImp extends LoginRepository{
  
  final LoginRemoteDataSource loginRemoteDataSource;
  LoginRepositoryImp({required this.loginRemoteDataSource});
  @override
  Future<Either<Failure, void>> login({required LoginAttributes loginAttributes}) async{
    try{
      await loginRemoteDataSource.login(loginAttributes: loginAttributes);
      return const Right(null);
    }
    catch(e){
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }
}