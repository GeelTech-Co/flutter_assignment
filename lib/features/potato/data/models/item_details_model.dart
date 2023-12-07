import 'package:assignment_test/features/potato/data/models/body_details_model.dart';
import '../../domain/entities/item_details_entite.dart';

class ItemDetailsModel extends ItemDetails {
const  ItemDetailsModel({required super.statusCode, required super.body});

  factory ItemDetailsModel.fromJson(Map<String, dynamic> json) {
    return ItemDetailsModel(
      statusCode: json['Statuscode'],
      body: BodyDetailsModel.fromJson(json['body']),
    );
  }
}




