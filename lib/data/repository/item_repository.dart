import 'package:assignment_test/config/constant/api_end_point.dart';
import 'package:assignment_test/data/api/api_methods.dart';
import 'package:assignment_test/data/helper/api_configration.dart';
import 'package:assignment_test/data/model/item_details.dart';
import 'package:assignment_test/data/model/item_general.dart';
import 'package:assignment_test/data/model/result_api.dart';
import 'package:dio/dio.dart';

class ItemRepository with BaseApi, ApiConfiguration {
  Future<ResultApi> getItems({
    required String token,
  }) async =>
      await baseRequest(
        method: () async {
          Response response = await getMethod(
            url: ApiEndPoint.items,
            token: token,
          );
          if (response.statusCode == 200) {
            List<Map<String, dynamic>> dataResult = response.data['data'];
            List<ItemGeneral> itemsGeneral = [];
            for (var dataJson in dataResult) {
              ItemGeneral itemGeneral = ItemGeneral.fromJson(dataJson);
              itemsGeneral.add(itemGeneral);
            }

            return ResultApi<List<ItemGeneral>>(
                isDone: true, massage: itemsGeneral);
          }
          return ResultApi<String>(
              isDone: false, massage: 'some error accrues');
        },
      );
  Future<ResultApi> getItemDetails({
    required String token,
    required String itemId,
  }) async {
    Map<String, dynamic> params = {'id': itemId};
    return await baseRequest(
      method: () async {
        Response response = await getMethod(
          url: ApiEndPoint.items,
          token: token,
          params: params,
        );
        if (response.statusCode == 200) {
          Map<String, dynamic> result = response.data;
          ItemDetails itemDetails = ItemDetails.fromJson(result);
          return ResultApi<ItemDetails>(isDone: true, massage: itemDetails);
        }
        return ResultApi<String>(isDone: false, massage: 'some error accrues');
      },
    );
  }
}
