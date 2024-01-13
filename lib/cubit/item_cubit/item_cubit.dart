import 'package:assignment_test/data/model/item_detail_model.dart';
import 'package:assignment_test/data/repositories/item_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'item_state.dart';

class ItemScreenCubit extends Cubit<ItemScreenState> {
  ItemScreenCubit(this.itemRepo) : super(ItemScreenInitial());

  static ItemScreenCubit get(context) => BlocProvider.of(context);

  ItemRepo itemRepo;

  Future<void> getItem() {
    emit(GetItemLoading());
    return itemRepo.getItem().then((value) {
      emit(GetItemSuccess());
    }).catchError((error) {
      emit(GetItemError(error: error.toString()));
    });
  }
  ItemDetailModel? itemDetailModel;
  Future<void> getItemDetail({required String itemId}) {

    emit(GetItemDetailLoading());
    return itemRepo.getItemDetail(itemId: itemId).then((value) {
      emit(GetItemDetailSuccess());
    }).catchError((error) {
      emit(GetItemDetailError(error: error.toString()));
    });
  }
}
