import 'package:assignment_test/features/potato/data/models/item_model.dart';
import '../../domain/entities/item_entite.dart';

class ItemDataModel extends ItemData {
const  ItemDataModel({required super.statusCode, required super.body});
  factory ItemDataModel.fromJson(Map<String, dynamic> json) {
    return ItemDataModel(
      statusCode: json['statusCode'],
      body:List.from((json['body']).map((e) => ItemModel.fromJson(e))),
    );
  }
}
