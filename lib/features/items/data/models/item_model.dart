/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'package:assignment_test/features/items/domain/entities/item_entity.dart';


class ItemModel extends ItemEntity{
  ItemModel({
        required this.price,
        required this.name,
        required this.id,
    }) : super(id: id,name: name, price: price);

    @override
  double price;
    @override
  String name;
    int id;

    factory ItemModel.fromJson(Map<dynamic, dynamic> json) => ItemModel(
        price: json["price"]?.toDouble(),
        name: json["name"],
        id: json["id"],
    );

}
