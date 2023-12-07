import '../../domain/entities/related_item.dart';

class RelatedItemModel extends RelatedItem {
  const RelatedItemModel(
      {required super.id, required super.name, required super.price});
  factory RelatedItemModel.fromJson(Map<String, dynamic> json) {
    return RelatedItemModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }
}

