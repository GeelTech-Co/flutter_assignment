class UserDataModel {
  int? id;
  String? name;

  UserDataModel({this.id, this.name});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    name = json['name']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
