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

extension ItemWithIdResponseMapper on GetItemWithIdResponse {
  ItemWithId toDomain() {
    return ItemWithId(
        id: id.orZero(),
        type: type.orEmpty(),
        imageUrl: imageUrl.orEmpty(),
        related: const Related(id: 1, name: "phone", price: 10));
  }
}

extension RelatedResponseMapper on RelatedRespons {
  Related toDomain() {
    return Related(
        id: id.orZero(), name: name.orEmpty(), price: price.orZero());
  }
}
