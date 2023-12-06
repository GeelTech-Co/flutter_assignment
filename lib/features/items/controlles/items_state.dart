import 'package:assignment_test/features/items/model/item_model.dart';

abstract class ItemsState {}

class ItemsInitialState extends ItemsState {}

class ItemsLoadingState extends ItemsState {}

class ItemsLoadedState extends ItemsState {
  final List<ItemModel> items;

  ItemsLoadedState(this.items);
}

class ItemsErrorState extends ItemsState {
  final String errorMessage;

  ItemsErrorState(this.errorMessage);
}
