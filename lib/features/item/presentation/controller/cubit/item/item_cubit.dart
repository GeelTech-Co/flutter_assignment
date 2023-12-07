import 'package:assignment_test/core/helper/constance.dart';
import 'package:assignment_test/features/item/domain/usecases/item.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/item.dart';

part 'item_state.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit({required this.itemUseCase}) : super(ItemInitial());
  final ItemUseCase itemUseCase;

  Future<void> getItem() async {
    emit(ItemLoading());
    //final results = await itemUseCase.call(const NoParams());
    emit(ItemLoaded(item: Constance.listOfItems));
    // results.fold((failure) {
    //   emit(ItemError(message: failure.message));
    // }, (data) => emit(ItemLoaded(item: Constance.listOfItems)));
  }
}
