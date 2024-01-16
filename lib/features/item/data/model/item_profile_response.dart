import 'package:json_annotation/json_annotation.dart';
part 'item_profile_response.g.dart';

@JsonSerializable()
class ItemProfileResponse {
  int? id;
  String? imageUrl;
  String? type;
  @JsonKey(name: 'related')
  List<ItemRelated>? itemsRelated;


  ItemProfileResponse({this.id,this.type,this.imageUrl,this.itemsRelated});

  factory ItemProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemProfileResponseFromJson(json);
}


@JsonSerializable()
class ItemRelated {
  int? id;
  String? name;
  num? price;
  ItemRelated({this.id,this.name,this.price});

  factory ItemRelated.fromJson(Map<String, dynamic> json) =>
      _$ItemRelatedFromJson(json);
}