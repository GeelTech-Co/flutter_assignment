import 'package:assignment_test/data/model/item_general.dart';

class ItemDetails {
  final int id;
  final String imageUrl;
  final String type;
  final List<ItemGeneral> itemsRelated;
  ItemDetails({
    required this.id,
    required this.imageUrl,
    required this.itemsRelated,
    required this.type,
  });
  factory ItemDetails.fromJson(Map<String, dynamic> json) => ItemDetails(
        id: json['id'],
        imageUrl: json['imageUrl'],
        itemsRelated: List.generate(
          json['related'].length,
          (index) => ItemGeneral.fromJson(json['related'].elementAt(index)),
        ),
        type: json['type'],
      );
}
