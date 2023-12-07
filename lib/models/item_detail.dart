class ItemDetail {
  final int id;
  final String imageUrl;
  final String type;
  final List<RelatedItem> related;

  ItemDetail({
    required this.id,
    required this.imageUrl,
    required this.type,
    required this.related,
  });

  factory ItemDetail.fromJson(Map<String, dynamic> json) {
    return ItemDetail(
      id: json['id'],
      imageUrl: json['imageUrl'],
      type: json['type'],
      related: (json['related'] as List<dynamic>)
          .map((relatedItem) => RelatedItem.fromJson(relatedItem))
          .toList(),
    );
  }
}

class RelatedItem {
  final int id;
  final String name;
  final double price;

  RelatedItem({
    required this.id,
    required this.name,
    required this.price,
  });

  factory RelatedItem.fromJson(Map<String, dynamic> json) {
    return RelatedItem(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }
}