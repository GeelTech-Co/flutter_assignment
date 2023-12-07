import 'dart:convert';
import 'dart:io';

import 'package:assignment_test/features/items/model/item_model.dart';
import 'package:dio/dio.dart';

class NoInternetConnectionException implements Exception {
  final String message;

  NoInternetConnectionException(this.message);
}

class ItemsRepo {
  Future<List<ItemModel>> getItems() async {
    try {
      Response response =
          await Dio().get('https://potatotech.wiremockapi.cloud/api/items');

      if (response.statusCode == 200) {
        List<ItemModel> itemList = (jsonDecode(response.data) as List)
            .map((itemJson) => ItemModel.fromMap(itemJson))
            .toList();

        return itemList;
      } else {
        return [];
      }
    } catch (error) {
      // ignore: deprecated_member_use
      if (error is DioError &&
          error.message != null &&
          error.message!.contains('No address associated with hostname')) {
        throw NoInternetConnectionException(
            'No address associated with hostname');
      }
      rethrow;
    }
  }
}
