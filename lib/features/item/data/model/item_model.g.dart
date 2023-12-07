// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponsesData _$BaseResponsesDataFromJson(Map<String, dynamic> json) =>
    BaseResponsesData()
      ..status = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponsesDataToJson(BaseResponsesData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

GetItemResponse _$GetItemResponseFromJson(Map<String, dynamic> json) =>
    GetItemResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    )
      ..status = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetItemResponseToJson(GetItemResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
