import 'package:dartz/dartz.dart';

import '../../../../../core/base_use_case/base_use_case.dart';
import '../../../../../core/networking/error/failure.dart';
import '../entities/item.dart';
import '../repositories/item_remote_repository.dart';

class ItemWithIdUseCase implements BaseUseCase<ItemWithId, int> {
  final ItemRemoteRepository itemRemoteRepository;

  const ItemWithIdUseCase({required this.itemRemoteRepository});

  @override
  Future<Either<Failure, ItemWithId>> call(int id) async {
    return await itemRemoteRepository.getItemWithId(id: id);
  }
}
