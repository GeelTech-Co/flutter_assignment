import 'package:assignment_test/features/potato/data/models/related_item_model.dart';

import '../../domain/entities/body_details.dart';

class BodyDetailsModel extends BodyDetails {
 const BodyDetailsModel(
      {required super.id,
      required super.imageUrl,
      required super.type,
      required super.related});
  factory BodyDetailsModel.fromJson(Map<String, dynamic> json) {
    var relatedList = json['related'] as List<dynamic>;
    List<RelatedItemModel> relatedItems =
        relatedList.map((item) => RelatedItemModel.fromJson(item)).toList();
    return BodyDetailsModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      type: json['type'],
      related: relatedItems,
    );
  }
}
