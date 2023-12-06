import 'package:assignment_test/features/potato/domain/entities/item_details_entite.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../repositories/base_potato_repositories.dart';

class ItemDetailsUseCase extends BaseUseCase<ItemDetails, ParameterId> {
  final BasePotatoRepository basePotatoRepository;
  ItemDetailsUseCase(this.basePotatoRepository);
  @override
  Future<Either<Failure, ItemDetails>> call(ParameterId parameter) async {
    return await basePotatoRepository.getItemDetails(parameter: parameter);
  }
}

class ParameterId extends Equatable {
  final int id;
  const ParameterId({required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
