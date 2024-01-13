import 'package:assignment_test/data/model/item_detail_model.dart';
import 'package:assignment_test/data/model/item_model.dart';

import '../../core/api/dio.dart';
import '../../core/api/end_point.dart';
import '../../core/api/exception.dart';

abstract class ItemRepo {
  Future<ItemModel> getItem();

  Future<ItemDetailModel> getItemDetail({required String itemId});
}

class ItemRepoImpl implements ItemRepo {
  @override
  Future<ItemModel> getItem() async {
    // TODO: implement getItem
    try {
      final response = await DioHelper.getData(url: EndPoints.items);
      ItemModel item = ItemModel.fromJson(response.data);
      return item;
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<ItemDetailModel> getItemDetail({required String itemId}) async {
    // TODO: implement getItemDetail
    try {
      final response = await DioHelper.getData(
          url: EndPoints.items, queryParameters: {'id': itemId});
      ItemDetailModel item = ItemDetailModel.fromJson(response.data);
      return item;
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}
