import 'package:assignment_test/features/item/data/datasources/item_data_source.dart';
import 'package:assignment_test/features/item/data/models/item_info_model.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/item_model.dart';

class ItemProvider with ChangeNotifier {
  final ItemDataSourceImpl itemDataSourceImpl;

  ItemProvider({required this.itemDataSourceImpl});

  List<ItemDataModel?> items = [];
  bool isLoading = false;
  bool loadData = false;

  getAllItems() async {
    isLoading = true;
    notifyListeners();
    try {
      List<ItemDataModel?>? itemsData = await itemDataSourceImpl.getItems();
      if (itemsData != null) {
        items = itemsData;
        isLoading = false;
        loadData = true;
        notifyListeners();
      } else {
        isLoading = false;
        loadData = true;
        notifyListeners();
      }
    } on Exception catch (e) {
      isLoading = false;
      notifyListeners();
    }
  }
}
