import 'package:assignment_test/core/usecase/use_case.dart';
import 'package:assignment_test/features/potato/domain/entities/item_details_entite.dart';
import 'package:assignment_test/features/potato/domain/entities/item_enite.dart';
import 'package:assignment_test/features/potato/domain/usecases/litem_details_use_case.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/server/server.dart';
import '../../domain/entities/user_entite.dart';
import '../../domain/repositories/base_potato_repositories.dart';
import '../../domain/usecases/login_use_case.dart';
import '../datasources/user_remote_data_source.dart';
import '../models/item_data_model.dart';

class PotatoRepertory extends BasePotatoRepository {
  BasePotatoRemoteDataSource basePotatoRemoteDataSource;
  PotatoRepertory(this.basePotatoRemoteDataSource);

  @override
  Future<Either<Failure, User>> login({required UserData userData}) async {
    final result = await basePotatoRemoteDataSource.login(userData: userData);
    try {
      return right(result);
    } on ServerExtension catch (failure) {
      return left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, ItemDetails>> getItemDetails({required ItemParameter parameter}) async {
    final result = await basePotatoRemoteDataSource.getItemDetails(parameter: parameter);
    try {
      return right(result);
    } on ServerExtension catch (failure) {
      return left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, ItemDataModel>> getListItem() async {
    final result = await basePotatoRemoteDataSource.getListItem();
    try {
      return right(result);
    } on ServerExtension catch (failure) {
      return left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }
}
