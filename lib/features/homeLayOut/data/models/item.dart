
class Item {
  int? id;
  String? imageUrl;
  String? type;
  List<Related>? related;

  Item({this.id, this.imageUrl, this.type, this.related});

  Item.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["imageUrl"] is String) {
      imageUrl = json["imageUrl"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["related"] is List) {
      related = json["related"] == null ? null : (json["related"] as List).map((e) => Related.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["imageUrl"] = imageUrl;
    _data["type"] = type;
    if(related != null) {
      _data["related"] = related?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Related {
  int? id;
  String? name;
  double? price;

  Related({this.id, this.name, this.price});

  Related.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["price"] is double) {
      price = json["price"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["price"] = price;
    return _data;
  }
}