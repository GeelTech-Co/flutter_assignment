import 'package:assignment_test/Api/item_details.dart';
import 'package:assignment_test/Services/item_services.dart';
import 'package:flutter/material.dart';
import '../Models/Api/items_list.dart';
import '../Models/Responses/HttpResponse.dart';

class ItemsProvider with ChangeNotifier {
  ItemServices _itemServices = ItemServices();
  List<Items> items = [];
  List<Items> items1 = [
    Items(id: 1,name: 'item_1',price: 10.5),
    Items(id: 2,name: 'item_2',price: 9.75),
    Items(id: 3,name: 'item_3',price: 17.1),
    Items(id: 4,name: 'item_4',price: 10),
    Items(id: 5,name: 'item_5',price: 5.5),
    Items(id: 6,name: 'item_6',price: 3.39),
    Items(id: 7,name: 'item_7',price: 12),
  ];
  ItemDetails? itemDetails;

  Future<void> getItems() async {
    _itemServices = ItemServices();
    HttpResponse response = await _itemServices.getItems();

    if (response.responseCode == 200) {
      setStatusesList(response.data);
    }
  }

  void setStatusesList(List<Items> items) {
    this.items = items;

    notifyListeners();
  }

  Future<HttpResponse> getItemDetails(int? itemId) async {
    _itemServices = ItemServices();
    HttpResponse response = await _itemServices.getItemDetails(itemId);
    if (response.isSuccess!) {
      itemDetails = response.data;

      notifyListeners();
    }

    return response;
  }
}
