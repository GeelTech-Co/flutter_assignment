import 'package:assignment_test/features/items/domain/use_cases/items_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/item_entity.dart';

part 'get_items_state.dart';

class GetItemsCubit extends Cubit<GetItemsState> {
  GetItemsCubit(this.itemsUseCase) : super(GetItemsInitial());

  final ItemsUseCase itemsUseCase;

  Future<void> getItems() async {
    emit(GetItemsLoading());
    final result = await itemsUseCase.call();
    result.fold((l) {

      emit(GetItemsFailure(message: l.message));

    }, (r) {

      emit(GetItemsSuccess(list: r));

    });
  }
}
