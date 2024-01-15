// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemsResImpl _$$ItemsResImplFromJson(Map<String, dynamic> json) =>
    _$ItemsResImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemsResImplToJson(_$ItemsResImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as num,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };

_$ItemDtailsImpl _$$ItemDtailsImplFromJson(Map<String, dynamic> json) =>
    _$ItemDtailsImpl(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      type: json['type'] as String,
      related: (json['related'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemDtailsImplToJson(_$ItemDtailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'related': instance.related,
    };
