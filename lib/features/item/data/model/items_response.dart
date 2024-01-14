import 'package:json_annotation/json_annotation.dart';
part 'items_response.g.dart';

@JsonSerializable()
class ItemsResponse {
  int? status;
  String? message;
  @JsonKey(name: 'data')
  List<Items>? item;


  ItemsResponse({this.status, this.message, this.item});

  factory ItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemsResponseFromJson(json);
}

@JsonSerializable()
class Items {
  int? id;
  String? name;
  num? price;

  Items({this.id,this.name,this.price});

  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);
}