
//item_cubit.dart

import 'package:assignment_test/data/modal/item_detail_model.dart';
import 'package:assignment_test/data/repos/item_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'itemstate.dart';

class ItemScreenCubit extends Cubit<ItemScreenState> {
  ItemScreenCubit(this.itemRepo) : super(ItemScreenInitial());

  static ItemScreenCubit get(context) => BlocProvider.of(context);

  final ItemRepo itemRepo;

  Future<void> getItem() async {
    emit(GetItemLoading());
    try {
      await itemRepo.getItem();
      emit(GetItemSuccess());
    } catch (error) {
      emit(GetItemError(error: error.toString()));
    }
  }

  Future<void> getItemDetail({required String itemId}) async {
    emit(GetItemDetailLoading());
    try {
      await itemRepo.getItemDetail(itemId: itemId);
      emit(GetItemDetailSuccess());
    } catch (error) {
      emit(GetItemDetailError(error: error.toString()));
    }
  }
}
