/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'package:assignment_test/features/items/domain/entities/item_entity.dart';


class ItemModel extends ItemEntity{
  ItemModel({
        required this.itemPrice,
        required this.itemName,
        required this.itemId,
    }) : super(id: itemId,name: itemName, price: itemPrice);

  double itemPrice;
  String itemName;
    int itemId;

    factory ItemModel.fromJson(Map<dynamic, dynamic> json) => ItemModel(
        itemPrice: json["price"]?.toDouble(),
        itemName: json["name"],
        itemId: json["id"],
    );

}
