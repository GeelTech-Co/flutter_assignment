import 'package:assignment_test/features/item/data/model/item_profile_response.dart';
import 'package:assignment_test/features/item/data/model/items_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/repo/item_repo.dart';

part 'item_event.dart';

part 'item_state.dart';

part 'item_bloc.freezed.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final ItemRepo _itemRepo;

  ItemBloc(this._itemRepo) : super(const ItemState.initial()) {
    on<ItemEvent>((event, emit) {});
    on<GetItems>((event, emit) => emitGetItems(event, emit));
    on<GetItemProfile>((event, emit) => emitGetItemProfile(event, emit));
  }

  List<Items> items = [];

  emitGetItems(GetItems event, Emitter<ItemState> emit) async {
    items = [];
    emit(const ItemState.loadingGetItems());
    final response = await _itemRepo.getItems();
    response.when(
      success: (itemsResponse) {
        items = itemsResponse.item ?? [];
        emit(ItemState.successGetItems(itemsResponse));
      },
      failure: (errorHandler) {
        emit(
          ItemState.errorGetItems(error: errorHandler.errMessage),
        );
      },
    );
  }

  ItemProfileResponse itemProfile = ItemProfileResponse();

  emitGetItemProfile(GetItemProfile event, Emitter<ItemState> emit) async {
    itemProfile.itemsRelated = [];
    emit(const ItemState.loadingGetItemProfile());
    final response = await _itemRepo.getItemProfile(event.id);
    response.when(
      success: (itemProfileResponse) {
        itemProfile = itemProfileResponse;
        emit(ItemState.successGetItemProfile(itemProfileResponse));
      },
      failure: (errorHandler) {
        emit(
          ItemState.errorGetItemProfile(error: errorHandler.errMessage),
        );
      },
    );
  }
}
