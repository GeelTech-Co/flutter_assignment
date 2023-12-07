import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';

class Item {
  int? id;
  String? imageUrl;
  String? type;
  List<ItemsData>? related;

  Item({this.id, this.imageUrl, this.type, this.related});

  Item.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["imageUrl"] is String) {
      imageUrl = json["imageUrl"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["related"] is List) {
      related = json["related"] == null
          ? null
          : (json["related"] as List)
              .map((e) => ItemsData.fromJson(e))
              .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["imageUrl"] = imageUrl;
    _data["type"] = type;
    if (related != null) {
      _data["related"] = related?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}
