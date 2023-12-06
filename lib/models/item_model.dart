class ItemModel {
  int id;
  double price;
  String name;
  String? imageUrl;
  String? type;
  List<ItemModel>? related;

  ItemModel(
      {required this.id,
      required this.price,
      required this.name,
      this.imageUrl,
      this.type,
      this.related});



  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'] ?? 0,
      price: json['price'] ?? 0.0,
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'],
      type: json['type'],
      related: (json['related'] as List<dynamic>?)
          ?.map((item) => ItemModel.fromJson(item))
          .toList(),
    );
  }

}
