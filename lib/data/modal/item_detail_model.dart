import 'package:equatable/equatable.dart';

class ItemDetailModel extends Equatable {
  const ItemDetailModel({
    required this.id,
    required this.imageUrl,
    required this.type,
    required this.related,
  });

  final int? id;
  final String? imageUrl;
  final String? type;
  final List<Related> related;

  factory ItemDetailModel.fromJson(Map<String, dynamic> json) {
    return ItemDetailModel(
      id: json["id"],
      imageUrl: json["imageUrl"],
      type: json["type"],
      related: json["related"] == null
          ? []
          : List<Related>.from(
              json["related"]!.map((x) => Related.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
        id,
        imageUrl,
        type,
        related,
      ];
}

class Related extends Equatable {
  const Related({
    required this.id,
    required this.name,
    required this.price,
  });

  final int? id;
  final String? name;
  final double? price;

  factory Related.fromJson(Map<String, dynamic> json) {
    return Related(
      id: json["id"],
      name: json["name"],
      price: json["price"],
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        price,
      ];
}