import 'dart:convert';

import 'package:assignment_test/features/items/model/item_model.dart';
import 'package:dio/dio.dart';

class ItemsRepo {
  Future<List<ItemModel>> getItems() async {
    try {
      Response response = await Dio().get('https://potatotech.wiremockapi.cloud/api/items');

      if (response.statusCode == 200) {
        List<ItemModel> itemList =
            (jsonDecode(response.data) as List).map((itemJson) => ItemModel.fromMap(itemJson)).toList();

        return itemList;
      } else {
        return [];
      }
    } catch (error) {
      return [];
    }
  }
}
