import 'package:dartz/dartz.dart';

import '../../../../../core/networking/app_service_client/requests.dart';
import '../../../../../core/networking/error/failure.dart';
import '../entities/authentication.dart';

abstract class AuthenticationRemoteRepository {
  Future<Either<Failure, Authentication>> login(LoginRequests loginRequests);
}
