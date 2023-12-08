

import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/item_details_use_case.dart';

part 'get_item_details_state.dart';

class GetItemDetailsCubit extends Cubit<GetItemDetailsState> {
  GetItemDetailsCubit(this.itemDetailsUseCase) : super(GetItemDetailsInitial());

  final ItemDetailsUseCase  itemDetailsUseCase;
  Future<void> getItemDetails({required int id})async {
    if(!isClosed)emit(GetItemDetailsLoading());
    final result = await itemDetailsUseCase.call(id);
    result.fold((l) {
      if(!isClosed)emit(GetItemDetailsFailure(message: l.message));

    }, (r) {
      if(!isClosed) emit(GetItemDetailsSuccess(itemDetailsEntity: r));

    });
  }
}
