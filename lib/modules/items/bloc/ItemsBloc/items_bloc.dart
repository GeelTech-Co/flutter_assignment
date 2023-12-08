import 'dart:async';

import 'package:assignment_test/modules/items/models/item_model.dart';
import 'package:assignment_test/modules/items/models/single_item_model.dart';
import 'package:assignment_test/modules/items/repository/items_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'items_event.dart';
part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsRepository itemsRepository;
  ItemsBloc(this.itemsRepository) : super(ItemsInitial()) {
    on<GetAllItemsEvent>(_getAllItems);
    on<GetItemDetailsEvent>(_getItemDetails);
  }
  FutureOr<void> _getAllItems(GetAllItemsEvent event, Emitter<ItemsState> emit) async{
    emit(GetAllItemsLoading());
    await itemsRepository.getItemsList()
        .then((result) => result.fold((error) {
      emit(GetAllItemsError(error.message));
    }, (response) {
      emit(GetAllItemsSuccess(response));
    }));
  }

  FutureOr<void> _getItemDetails(GetItemDetailsEvent event, Emitter<ItemsState> emit) async{
    emit(GetItemDetailsLoading());
    await itemsRepository.getItemDetails(id: event.id).then((result) => result.fold((error) {
      emit(GetItemDetailsError(error.message));
    }, (response) {
      emit(GetItemDetailsSuccess(response));
    }));
  }
}
