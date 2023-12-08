
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../data/models/login_attributes.dart';

abstract class LoginRepository{
  Future<Either<Failure,void>> login({required LoginAttributes loginAttributes});
}