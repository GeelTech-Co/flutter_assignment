import 'package:assignment_test/features/item/data/models/item_info_model.dart';
import 'package:assignment_test/features/item/data/models/item_model.dart';

import '../../../../core/base_app_client/base_app_client.dart';
import '../../../../core/config/endpoint_route.dart';

abstract class ItemDataSource {
  Future<List<ItemDataModel?>?> getItems();

}

class ItemDataSourceImpl implements ItemDataSource {
  final BaseAppClient baseAppClient;

  ItemDataSourceImpl({required this.baseAppClient});


  @override
  Future<List<ItemDataModel?>?> getItems() async {
    List<ItemDataModel?> items = [];

    await baseAppClient.get(EndPoint.items, type: EndPoint.items,
        onSuccess: (data, int? statusCode) {
      List<dynamic> dataMap = data['data'] as List<dynamic>;
      for (int i = 0; i < dataMap.length; i++) {
        items.add(ItemDataModel.fromJson(dataMap[i]));
      }
    }, onFailure: (dynamic error, int? statusCode) {});

    return items;
  }
}
