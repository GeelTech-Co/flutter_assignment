class ItemModel {
  final int id;
  final String name;
  final num price;

  ItemModel({
    required this.id,
    required this.name,
    required this.price,
  });

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'],
      name: map['name'],
      price: map['price'],
    );
  }
}
