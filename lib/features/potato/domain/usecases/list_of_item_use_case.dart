
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../entities/item_enite.dart';
import '../repositories/base_potato_repositories.dart';

class ListItemUseCase  extends BaseUseCase<Item,NoParameter>{
 final BasePotatoRepository basePotatoRepository;
 ListItemUseCase(this.basePotatoRepository);
  @override
  Future<Either<Failure,Item>> call(NoParameter parameter)async{
    return await basePotatoRepository.getListItem();
   }
} 
