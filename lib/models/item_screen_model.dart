import 'item_model.dart';

class ItemScreenModel {
  final num? id;
  final String? imageUrl;
  final String? type;
  final List<ItemModel>? related;

  ItemScreenModel({
    required this.id,
    required this.imageUrl,
    required this.type,
    required this.related,
  });

  factory ItemScreenModel.fromJson(dynamic json) => ItemScreenModel(
        id: json['id'],
        imageUrl: json['imageUrl'],
        type: json['type'],
        related: List<ItemModel>.from(json["related"].map((x) => x)),
      );
}
