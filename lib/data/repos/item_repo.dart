import 'package:assignment_test/data/modal/item_detail_model.dart';
import 'package:assignment_test/data/modal/item_model.dart';

import '../../core/api/dio_api.dart';
import '../../core/api/api_end_point.dart';
import '../../core/api/exception_error.dart';

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