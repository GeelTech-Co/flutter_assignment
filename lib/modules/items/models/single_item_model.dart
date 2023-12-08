import 'package:assignment_test/modules/items/models/item_model.dart';

class SingleItemModel {
  int? id;
  String? imageUrl;
  String? type;
  List<ItemModel>? itemModel;

  SingleItemModel({this.id, this.imageUrl, this.type, this.itemModel});

  SingleItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    type = json['type'];
    if (json['related'] != null) {
      itemModel = <ItemModel>[];
      json['related'].forEach((v) {
        itemModel!.add(ItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['type'] = type;
    if (itemModel != null) {
      data['related'] = itemModel!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

