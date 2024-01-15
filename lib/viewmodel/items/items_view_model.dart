import 'package:assignment_test/models/items/items_res.dart';
import 'package:assignment_test/repositories/remote_data/remote_repository.dart';
import 'package:assignment_test/resources/assets_responses.dart';
import 'package:assignment_test/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final selectedItemProvider = StateProvider<int?>((ref) {
  return null;
});

final itemsProvider = ChangeNotifierProvider<ItemsCont>((ref) {
  return ItemsCont(ref);
});

final itemsDetailsProvider = FutureProvider<ItemDtails>((ref) async {
  /// The commented code this how it's will be implemented IRL,
  /// but for now I'll take the res from the JSON file.
  ///
  ///
  // final selectedItem = ref.watch(selectedItemProvider);
  // return Repository.instance.client
  // .geetItemDetails(itemId: selectedItem.toString());
  return ItemDtails.fromJson(AssetsFile.instance.jsonRes['getItem']);
});

class ItemsCont extends ChangeNotifier {
  final Ref _ref;
  ItemsCont(this._ref);

  bool _isLoading = false;
  bool _hasErr = false;

  List<Item> _items = [];

  List<Item> get items => _items;

  bool get isLoading => _isLoading;
  bool get hasError => _hasErr;

  void onItemSelected(int id, BuildContext context) {
    _ref.read(selectedItemProvider.notifier).update((state) => state = id);
    context.push(AppRoutes.itemDetails);
  }

  Future getItems() async {
    try {
      _isLoading = true;
      notifyListeners();
      await Repository.instance.client.getItems();
    } catch (e) {
      /// Will not update the lisner for testing
      // _hasErr = true;

      debugPrint(e.toString());
    }
    _isLoading = false;

    ItemsRes res = ItemsRes.fromJson(AssetsFile.instance.jsonRes['getItems']);
    _items = res.data;
    notifyListeners();
  }
}
