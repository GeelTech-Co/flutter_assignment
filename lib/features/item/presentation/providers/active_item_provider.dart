import 'package:flutter/material.dart';

import '../../data/datasources/active_item_data_source.dart';
import '../../data/models/item_info_model.dart';

class ActiveItemProvider with ChangeNotifier {
  final ActiveItemDataSourceImpl activeItemDataSourceImpl;

  ActiveItemProvider({required this.activeItemDataSourceImpl});

  ItemInfoDataModel? activeItem;
  bool isLoading = true;

  getActiveItem({required int id}) async {
    try {
      ItemInfoDataModel? activeItemData =
          await activeItemDataSourceImpl.getItem(id: id);
      if (activeItemData != null) {
        activeItem = activeItemData;
        isLoading = false;
        notifyListeners();
      } else {
        isLoading = false;
        notifyListeners();
      }
    } on Exception catch (e) {
      isLoading = false;
      notifyListeners();
    }
  }
}
