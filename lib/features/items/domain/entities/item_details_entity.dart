import 'item_entity.dart';

class ItemDetailsEntity{
  final String imageUrl;
  final String type;

  final List<ItemEntity> related;

  ItemDetailsEntity({required this.imageUrl,required this.type,required this.related});
}