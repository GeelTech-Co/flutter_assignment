class Item {
  final int id;
  final String name;
  final double price;

  Item({
    required this.id,
    required this.name,
    required this.price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }
}