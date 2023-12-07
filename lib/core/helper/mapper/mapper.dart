import 'package:assignment_test/core/helper/extensions.dart';

import '../../../features/authentication/login/data/model/authentication_model.dart';
import '../../../features/authentication/login/domain/entities/authentication.dart';
import '../../../features/item/data/model/item_model.dart';
import '../../../features/item/domain/entities/item.dart';

extension AuthenticationResponseMapper on AuthenticationResponse {
  Authentication toDomain() {
    return Authentication(status: status.orZero(), message: message.orEmpty());
  }
}

extension ItemResponseMapper on GetItemResponse {
  Item toDomain() {
    return Item(id: id.orZero(), name: name.orEmpty(), price: price.orZero());
  }
}
