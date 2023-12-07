import 'package:assignment_test/features/items/controlles/items_state.dart';
import 'package:assignment_test/features/items/model/item_model.dart';
import 'package:assignment_test/features/items/services/items_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsCubit extends Cubit<ItemsState> {
  final ItemsRepo itemsRepo = ItemsRepo();

  ItemsCubit() : super(ItemsInitialState());

  void fetchItems() async {
    emit(ItemsLoadingState());

    try {
      List<ItemModel> items = await itemsRepo.getItems();
      emit(ItemsLoadedState(items));
    } catch (error) {
      if (error is NoInternetConnectionException) {
        emit(ItemsErrorState('No internet connection'));
      } else {
        emit(ItemsErrorState('Error fetching items: $error'));
      }
    }
  }
}