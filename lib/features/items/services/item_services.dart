// https://potatotech.wiremockapi.cloud/api/items   work

// https://potatotech.wiremockapi.cloud/apiitems

// https://potatotech.wiremockapi.cloud/api/login

import 'package:assignment_test/features/items/model/item_model.dart';
import 'package:dio/dio.dart';

class ItemsServices {
  Future<List<ItemModel>> getItems() async {
    Response response =
        await Dio().get('https://potatotech.mocklab.io.potato-co.com/api/items');
    print(response.data[0]);
    print('*********response.data*******');
  
    List<ItemModel> articalList = [];

    // for (var item in response.data) {
    //   print(item);
    //   // ItemModel articleModel = ItemModel(

    //   //     );
    //   // articalList.add(articleModel);
    // }

    return articalList;
  }
}
