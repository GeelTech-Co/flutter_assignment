


import 'package:assignment_test/Features/itemspage/data/items_models.dart';
import 'package:assignment_test/core/utils/api.dart';

import 'package:bloc/bloc.dart';
part 'items_event.dart';
part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  AppApi appApi = AppApi();
  Item item = Item();
  ItemsBloc() : super(ItemsInitial()) {
    on<ItemsEvent>((event, emit) async {
      emit(ItemsLoding());
      try {
        // var response = await appApi.get("url");
        // item = Item.fromJson(response["body"]);
        // Future.delayed(
        //   Duration(seconds: 5), 
        //   (){
            
        // });
        emit(ItemsSuccess(item));
      } catch (e) {
        print(e.toString());
      }
    });
  }
}