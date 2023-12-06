import 'package:assignment_test/features/potato/data/models/related_item_model.dart';

import '../../domain/entities/item_details_entite.dart';

class ItemDetailsModel extends ItemDetails {
  const ItemDetailsModel(
      {required super.id,
      required super.imageUrl,
      required super.type,
      required super.related});
  factory ItemDetailsModel.fromJson(Map<String, dynamic> json) {
    var relatedList = json['related'];
    List<RelatedItemModel> relatedItems =
        relatedList.map((item) => RelatedItemModel.fromJson(item)).toList();

    return ItemDetailsModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      type: json['type'],
      related: relatedItems,
    );
  }
}
