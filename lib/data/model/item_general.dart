class ItemGeneral {
  final String name;
  final double price;
  final int id;
  ItemGeneral({
    required this.id,
    required this.name,
    required this.price,
  });
  ItemGeneral.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        price = json['price'];
}
