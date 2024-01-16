// ignore_for_file: use_build_context_synchronously

import 'package:assignment_test/config/enum/get_data_status.dart';
import 'package:assignment_test/data/local/hive.dart';
import 'package:assignment_test/data/model/item_general.dart';
import 'package:assignment_test/data/model/result_api.dart';
import 'package:assignment_test/data/repository/item_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  final BuildContext context;
  ItemsCubit({
    required this.context,
  }) : super(const ItemsState()) {
    getItems();
  }
  Future<void> getItems() async {
    emit(state.copyWith(
      getDataStatus: GetDataStatus.loading,
    ));
    ItemRepository itemRepository = ItemRepository();
    String? token = await context.read<HiveStorg>().getToken();
    if (token != null) {
      ResultApi resultApi = await itemRepository.getItems(token: token);
      if (resultApi.isDone) {
        List<ItemGeneral> items = List.from(resultApi.massage);
        emit(state.copyWith(
          getDataStatus: GetDataStatus.successful,
          items: items,
        ));
      } else {
        emit(state.copyWith(
          getDataStatus: GetDataStatus.field,
          errorMassage: resultApi.massage,
        ));
      }
    } else {
      emit(state.copyWith(
        errorMassage: 'Please login to get item',
        getDataStatus: GetDataStatus.field,
      ));
    }
  }
}
