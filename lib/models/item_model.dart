class ItemModel {
  final int? id;
  final String? name;
  final num? price;
  ItemModel({
    required this.id,
    required this.name,
    required this.price,
  });

  factory ItemModel.fromJson(dynamic json) => ItemModel(
        id: json['id'],
        name: json['name'],
        price: json['price'],
      );
}
