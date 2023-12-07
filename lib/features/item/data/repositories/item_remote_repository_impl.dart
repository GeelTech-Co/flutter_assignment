import 'package:dartz/dartz.dart';

import '../../../../../core/networking/app_service_client/error_handler.dart';
import '../../../../../core/networking/app_service_client/network_info.dart';
import '../../../../../core/networking/error/failure.dart';
import '../../domain/entities/item.dart';
import '../../domain/repositories/item_remote_repository.dart';
import '../database/item_remote_database.dart';

class ItemRemoteRepositoryImpl implements ItemRemoteRepository {
  final NetworkInfo networkInfo;
  final ItemRemoteDatabase itemRemoteDataSource;

  ItemRemoteRepositoryImpl(
      {required this.networkInfo, required this.itemRemoteDataSource});
  @override
  Future<Either<Failure, List<Item>>> getItem() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await itemRemoteDataSource.getItem();
        if (response[0].status == ApiInternalStatus.SUCCESS) {
          return right(List.from(response));
        } else {
          return left(Failure(
              statusCode: ApiInternalStatus.FAILURE,
              message: response[0].message ?? ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.INTERNAL_SERVER_ERROR.getFailure());
    }
  }
}
