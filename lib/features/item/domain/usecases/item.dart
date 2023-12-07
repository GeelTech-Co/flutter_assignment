import 'package:dartz/dartz.dart';

import '../../../../../core/base_use_case/base_use_case.dart';
import '../../../../../core/networking/error/failure.dart';
import '../entities/item.dart';
import '../repositories/item_remote_repository.dart';

class ItemUseCase implements BaseUseCase<List<Item>, NoParams> {
  final ItemRemoteRepository itemRemoteRepository;

  const ItemUseCase({required this.itemRemoteRepository});

  @override
  Future<Either<Failure, List<Item>>> call(NoParams parameter) async {
    return await itemRemoteRepository.getItem();
  }
}
