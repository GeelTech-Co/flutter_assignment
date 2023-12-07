import 'package:assignment_test/core/helper/constance.dart';
import 'package:assignment_test/core/helper/extensions.dart';

import '../../../features/authentication/login/data/model/authentication_model.dart';
import '../../../features/authentication/login/domain/entities/authentication.dart';

extension AuthenticationResponseMapper on AuthenticationResponse {
  Authentication toDomain() {
    return Authentication(status: status.orZero(),
         message: message.orEmpty());
  }
}
