import 'package:json_annotation/json_annotation.dart';
part 'item_model.g.dart';

@JsonSerializable()
class BaseResponsesData {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class GetItemResponse extends BaseResponsesData {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "price")
  double? price;
  GetItemResponse({this.id, this.name, this.price});

  factory GetItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetItemResponseToJson(this);
}
