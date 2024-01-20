import 'package:assignment_test/core/base_app_client/base_app_client.dart';
import 'package:assignment_test/features/item/data/models/item_info_model.dart';

import '../../../../core/config/endpoint_route.dart';

abstract class ActiveItemDataSource {
  Future<ItemInfoDataModel?> getItem({required int id});
}

class ActiveItemDataSourceImpl implements ActiveItemDataSource {
  final BaseAppClient baseAppClient;

  ActiveItemDataSourceImpl({required this.baseAppClient});

  @override
  Future<ItemInfoDataModel?> getItem({required int id}) async {
    ItemInfoDataModel? itemInfo;
    await baseAppClient.get('${EndPoint.item}?id=$id', type: EndPoint.item,
        onSuccess: (data, int? statusCode) {
      Map<String, dynamic> dataMap = data['data'] as Map<String, dynamic>;
      itemInfo = ItemInfoDataModel.fromJson(dataMap);
    }, onFailure: (dynamic error, int? statusCode) {});
    return itemInfo;
  }
}
