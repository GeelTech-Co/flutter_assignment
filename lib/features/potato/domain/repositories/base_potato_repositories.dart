import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/item_details_entite.dart';
import '../entities/item_enite.dart';
import '../entities/user_entite.dart';
import '../usecases/litem_details_use_case.dart';
import '../usecases/login_use_case.dart';

abstract class BasePotatoRepository {
  Future<Either<Failure, User>> login({required UserData userData});
  Future<Either<Failure, Item>> getListItem();
  Future<Either<Failure, ItemDetails>> getItemDetails({required ParameterId parameter});
}
