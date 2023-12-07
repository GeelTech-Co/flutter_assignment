
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../entities/item_entite.dart';
import '../repositories/base_potato_repositories.dart';

class ListItemUseCase  extends BaseUseCase<ItemData,NoParameter>{
 final BasePotatoRepository basePotatoRepository;
 ListItemUseCase(this.basePotatoRepository);
  @override
  Future<Either<Failure,ItemData>> call(NoParameter)async{
    return await basePotatoRepository.getListItem();
   }
} 
