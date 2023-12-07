import 'package:assignment_test/features/potato/domain/entities/item_details_entite.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../repositories/base_potato_repositories.dart';

class ItemDetailsUseCase extends BaseUseCase<ItemDetails, ItemParameter> {
  final BasePotatoRepository basePotatoRepository;
  ItemDetailsUseCase(this.basePotatoRepository);
  @override
  Future<Either<Failure, ItemDetails>> call(ItemParameter parameter) async {
    return await basePotatoRepository.getItemDetails(parameter: parameter);
  }
}

class ItemParameter extends Equatable {
  final int? id;

  const ItemParameter({this.id});

  @override
  List<Object?> get props => [id];
}
