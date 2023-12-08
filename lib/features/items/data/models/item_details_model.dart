import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:assignment_test/features/items/domain/entities/item_entity.dart';

class ItemDetailsModel extends ItemDetailsEntity{
    ItemDetailsModel({
        required this.related,
        required this.imageUrl,
        required this.id,
        required this.type,
    }) : super(imageUrl: imageUrl, type: type, related: related);

    @override
  List<Related> related;
    @override
  String imageUrl;
    int id;
    @override
  String type;

    factory ItemDetailsModel.fromJson(Map<dynamic, dynamic> json) => ItemDetailsModel(
        related: List<Related>.from(json["related"].map((x) => Related.fromJson(x))),
        imageUrl: json["imageUrl"],
        id: json["id"],
        type: json["type"],
    );
}

class Related extends ItemEntity{
    Related({
        required this.price,
        required this.name,
        required this.id,
    }) : super(id:id,name: name, price: price);

    @override
  double price;
    @override
  String name;
    int id;

    factory Related.fromJson(Map<dynamic, dynamic> json) => Related(
        price: json["price"]?.toDouble(),
        name: json["name"],
        id: json["id"],
    );

}
