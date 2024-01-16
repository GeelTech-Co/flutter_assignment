import 'package:assignment_test/config/enum/get_data_status.dart';
import 'package:assignment_test/data/local/hive.dart';
import 'package:assignment_test/data/model/item_details.dart';
import 'package:assignment_test/data/model/result_api.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/item_repository.dart';

part 'item_deatlis_state.dart';

class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  final String idItem;
  final BuildContext context;

  ItemDetailsCubit({
    required this.idItem,
    required this.context,
  }) : super(const ItemDetailsState()) {
    getItem();
  }
  Future<void> getItem() async {
    emit(state.copyWith(
      getDataStatus: GetDataStatus.loading,
    ));
    ItemRepository itemRepository = ItemRepository();
    String token = (await context.read<HiveStorg>().getToken())!;
    await Future.delayed(const Duration(seconds: 3));
    ResultApi resultApi =
        await itemRepository.getItemDetails(token: token, itemId: idItem);
    if (resultApi.isDone) {
      ItemDetails itemDetails = resultApi.massage;
      emit(state.copyWith(
        getDataStatus: GetDataStatus.successful,
        itemDetails: itemDetails,
      ));
    } else {
      emit(state.copyWith(
        errorMassage: resultApi.massage,
        getDataStatus: GetDataStatus.field,
      ));
    }
  }
}
