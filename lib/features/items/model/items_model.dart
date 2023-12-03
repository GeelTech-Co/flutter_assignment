class ItemsModel {
  String? statusCode;
  List<ItemsModelData>? itemsModelData;

  ItemsModel({this.statusCode, this.itemsModelData});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    if (json['body'] != null) {
      itemsModelData = <ItemsModelData>[];
      json['body'].forEach((v) {
        itemsModelData!.add(ItemsModelData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StatusCode'] = statusCode;
    if (itemsModelData != null) {
      data['body'] = itemsModelData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemsModelData {
  int? id;
  String? name;
  double? price;

  ItemsModelData({this.id, this.name, this.price});

  ItemsModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}
