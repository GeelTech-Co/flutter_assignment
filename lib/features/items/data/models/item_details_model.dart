import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:assignment_test/features/items/domain/entities/item_entity.dart';

class ItemDetailsModel extends ItemDetailsEntity{
    ItemDetailsModel({
        required this.itemRelated,
        required this.itemImageUrl,
        required this.itemId,
        required this.itemType,
    }) : super(imageUrl: itemImageUrl, type: itemType, related: itemRelated);

  List<Related> itemRelated;
  String itemImageUrl;
    int itemId;
  String itemType;

    factory ItemDetailsModel.fromJson(Map<dynamic, dynamic> json) => ItemDetailsModel(
        itemRelated: List<Related>.from(json["related"].map((x) => Related.fromJson(x))),
        itemImageUrl: json["imageUrl"],
        itemId: json["id"],
        itemType: json["type"],
    );
}

class Related extends ItemEntity{
    Related({
        required this.relatedPrice,
        required this.relatedName,
        required this.relatedId,
    }) : super(id:relatedId,name: relatedName, price: relatedPrice);

  double relatedPrice;
  String relatedName;
  int relatedId;

    factory Related.fromJson(Map<dynamic, dynamic> json) => Related(
        relatedPrice: json["price"]?.toDouble(),
        relatedName: json["name"],
        relatedId: json["id"],
    );

}
