import '../../domain/entities/item_enite.dart';

class ItemModel extends Item {
  const ItemModel(
      {required super.id, required super.name, required super.price});
  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }
}
