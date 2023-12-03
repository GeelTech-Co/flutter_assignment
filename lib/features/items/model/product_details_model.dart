class ProductDetailsModel {
  String? id;
  String? imageUrl;
  String? type;
  List<Related>? related;

  ProductDetailsModel({this.id, this.imageUrl, this.type, this.related});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    id = '${json['id']}';
    imageUrl = '${json['imageUrl']}';
    type = json['type'];
    if (json['related'] != null) {
      related = <Related>[];
      json['related'].forEach((v) {
        related!.add(Related.fromJson(v));
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

class Related {
  int? id;
  String? name;
  double? price;

  Related({this.id, this.name, this.price});

  Related.fromJson(Map<String, dynamic> json) {
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
