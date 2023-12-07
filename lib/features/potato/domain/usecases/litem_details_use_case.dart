import 'package:assignment_test/features/potato/domain/entities/item_details_entite.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../repositories/base_potato_repositories.dart';

class ItemDetailsUseCase extends BaseUseCase<ItemDetails, NoParameter> {
  final BasePotatoRepository basePotatoRepository;
  ItemDetailsUseCase(this.basePotatoRepository);
  @override
  Future<Either<Failure, ItemDetails>> call(NoParameter parameter) async {
    return await basePotatoRepository.getItemDetails();
  }
}

