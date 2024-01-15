import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_res.g.dart';
part 'items_res.freezed.dart';

@freezed
class ItemsRes with _$ItemsRes {
  const factory ItemsRes({
    required int status,
    required String message,
    required List<Item> data,
  }) = _ItemsRes;

  factory ItemsRes.fromJson(Map<String, Object?> json) =>
      _$ItemsResFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required int id,
    required String name,
    required num price,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);
}

@freezed
class ItemDtails with _$ItemDtails {
  const factory ItemDtails({
    required int id,
    required String imageUrl,
    required String type,
    required List<Item> related,
  }) = _ItemDtails;

  factory ItemDtails.fromJson(Map<String, Object?> json) =>
      _$ItemDtailsFromJson(json);
}
