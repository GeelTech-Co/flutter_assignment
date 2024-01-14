// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemProfileResponse _$ItemProfileResponseFromJson(Map<String, dynamic> json) =>
    ItemProfileResponse(
      id: json['id'] as int?,
      type: json['type'] as String?,
      imageUrl: json['imageUrl'] as String?,
      itemsRelated: (json['related'] as List<dynamic>?)
          ?.map((e) => ItemRelated.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemProfileResponseToJson(
        ItemProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'related': instance.itemsRelated,
    };

ItemRelated _$ItemRelatedFromJson(Map<String, dynamic> json) => ItemRelated(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as num?,
    );

Map<String, dynamic> _$ItemRelatedToJson(ItemRelated instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
