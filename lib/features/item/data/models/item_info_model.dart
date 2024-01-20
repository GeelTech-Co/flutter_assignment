
import 'item_model.dart';

class ItemInfoDataModel {
  int? id;
  String? imageUrl;
  String? type;
  List<ItemDataModel>? related;

  ItemInfoDataModel({this.id, this.imageUrl, this.type, this.related});

  ItemInfoDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    type = json['type'];
    if (json['related'] != null) {
      related = <ItemDataModel>[];
      json['related'].forEach((v) {
        related!.add(ItemDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['type'] = type;
    if (related != null) {
      data['related'] = related!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

