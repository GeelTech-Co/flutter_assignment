import 'package:assignment_test/core/errors/failure.dart';
import 'package:assignment_test/features/items/data/data_source/remote_data_source.dart';
import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:assignment_test/features/items/domain/entities/item_entity.dart';
import 'package:assignment_test/features/items/domain/repository/items_repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class ItemsRepositoryImp extends ItemsRepository{
  final ItemsRemoteDataSource itemsRemoteDataSource;

  ItemsRepositoryImp({required this.itemsRemoteDataSource});
  @override
  Future<Either<Failure, List<ItemEntity>>> getItems() async {
    try {
      List<ItemEntity> result = await itemsRemoteDataSource.getItems();
      return right(result);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }

  @override
  Future<Either<Failure, ItemDetailsEntity>> getItemDetails({required int id}) async {
    try {
      ItemDetailsEntity result = await itemsRemoteDataSource.getItemDetails(id: id);
      return right(result);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }
}