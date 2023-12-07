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

GetItemWithIdResponse _$GetItemWithIdResponseFromJson(
        Map<String, dynamic> json) =>
    GetItemWithIdResponse(
      id: json['id'] as int?,
      imageUrl: json['imageUrl'] as String?,
      type: json['type'] as String?,
      relatedRespons: json['related'] == null
          ? null
          : RelatedRespons.fromJson(json['related'] as Map<String, dynamic>),
    )
      ..status = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetItemWithIdResponseToJson(
        GetItemWithIdResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'related': instance.relatedRespons,
    };

RelatedRespons _$RelatedResponsFromJson(Map<String, dynamic> json) =>
    RelatedRespons(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RelatedResponsToJson(RelatedRespons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
