class ItemDataModel {
  int? id;
  String? name;
  double? price;

  ItemDataModel({this.id, this.name, this.price});

  ItemDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    name = json['name']??'';
    price = json['price']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}
