import '../Models/Api/items_list.dart';

class ItemDetails {
  int? id;
  String? imageUrl ;
  String? type;
  List<Items>? items;

  ItemDetails({this.id, this.imageUrl, this.type, this.items});

  ItemDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    type = json['type'];
    if (json['related'] != null) {
      items = <Items>[];
      json['related'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['type'] = type;
    if (items != null) {
      data['related'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
