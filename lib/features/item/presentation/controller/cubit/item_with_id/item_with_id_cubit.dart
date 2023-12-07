import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/item.dart';
import '../../../../domain/usecases/item_with_id.dart';

part 'item_with_id_state.dart';

class ItemWithIdCubit extends Cubit<ItemWithIdState> {
  ItemWithIdCubit({required this.itemWithIdUseCase})
      : super(ItemWithIdInitial());
  final ItemWithIdUseCase itemWithIdUseCase;

  Future<void> getItemWithId({required int id}) async {
    emit(ItemWithIdLoading());
    final results = await itemWithIdUseCase.call(id);
    results.fold((failure) {
      emit(ItemWithIdError(message: failure.message));
    }, (data) => emit(ItemWithIdLoaded(itemWithId: data)));
  }
}
