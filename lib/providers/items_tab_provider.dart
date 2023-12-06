
import 'package:assignment_test/models/item_model.dart';
import 'package:flutter/material.dart';


class ItemsProvider extends ChangeNotifier {


  // body: [
  // {"id":1,"name":"item_1", "price":10.99},
  // { "id":2,"name":"item_2","price":5.99 },
  // {"id":3,"name":"item_3","price":1.99}
  // ]

  List<ItemModel> items = [];

  bool isLoading = false;

  Future<void> toggleLoading()async{
    isLoading = !isLoading;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2),() => isLoading = !isLoading,);
  }


  Future<void> loadItems()async{
    // This should work in case the Api is working fine
    // items = await ApiService.getItems();
    await toggleLoading();
    items = [
      ItemModel(id: 1, price: 10.99, name: "item_1"),
      ItemModel(id: 2, price: 5.99, name: "item_2"),
      ItemModel(id: 3, price: 1.99, name: "item_3"),
    ];


    notifyListeners();
  }



}