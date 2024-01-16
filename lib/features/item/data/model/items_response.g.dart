// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsResponse _$ItemsResponseFromJson(Map<String, dynamic> json) =>
    ItemsResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      item: (json['data'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemsResponseToJson(ItemsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.item,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as num?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
