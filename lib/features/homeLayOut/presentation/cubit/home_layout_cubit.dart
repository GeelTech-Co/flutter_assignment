import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/models/person.dart';
import 'package:assignment_test/features/homeLayOut/data/data%20sources/remote.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:assignment_test/features/homeLayOut/data/repositories/get_items_data_repo.dart';
import 'package:assignment_test/features/homeLayOut/data/repositories/item_data_repo.dart';
import 'package:assignment_test/features/homeLayOut/data/repositories/login_data_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_item_domain_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_items_domain_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/login_domain_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/useCases/get_items.dart';
import 'package:assignment_test/features/homeLayOut/domain/useCases/item_use_case.dart';
import 'package:assignment_test/features/homeLayOut/domain/useCases/login_use_case.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/fix.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/items.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/login.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  bool isObscure = true;

  int counter = 0;
  PersonModel? person;
  List<ItemsData> items = [];
  Item? itemDetails;
  HomeLayoutCubit() : super(HomeLayoutInitial());
  List<Widget> tabs = [const LoginTab(), const ItemsTab(), const FixTab()];
  int tab = 0;
  static HomeLayoutCubit get(context) => BlocProvider.of(context);
  switchTab({int index = 0}) {
    switch (index) {
      case 0:
        tab = index;

        emit(SwitchTabsToLogInState());
        break;
      case 1:
        tab = index;

        emit(SwitchTabsToItemState());
        break;
      case 2:
        tab = index;

        emit(SwitchTabsToFixState());
        break;
    }
  }

  setPerson(PersonModel personModel) {
    person = personModel;
    person?.getIdealWeight();
    emit(CalculateWeight());
  }

  changeObscure() {
    isObscure = !isObscure;
    emit(ChangeObscure());
    emit(SwitchTabsToLogInState());
  }

  logIn(String name, String password) async {
    emit(LoadingState());

    LogInDomainRepo logInDomainRepo = LogInDataRepo(dataSource: RemoteDto());
    LogInUseCase logInUseCase = LogInUseCase(logInDomainRepo: logInDomainRepo);
    var res = await logInUseCase.call(name, password);
    res.fold((l) {
      emit(LogInFailureState(failure: l));
    }, (r) {
      emit(LogInSuccess());
    });
  }

  getItems() async {
    emit(LoadingState());
    GetItemsDomainRepo getItemsDomainRepo =
        GetItemsDataRepo(dataSource: RemoteDto());
    GetItemsUseCase getItemsUseCase =
        GetItemsUseCase(getItemsDomainRepo: getItemsDomainRepo);
    var res = await getItemsUseCase.call();
    res.fold((l) {
      emit(GetItemsFailureState(failure: l));
    }, (r) {
      emit(GetItemsSuccess());
      items.addAll(r);
    });
  }

  getItemDetails(int id) async {
    emit(LoadingState());
    GetItemDetailsDomainRepo getItemsDetailsDomainRepo =
        GetItemDetailsDataRepo(dataSource: RemoteDto());
    GetItemDetailsUseCase getItemDetailsUseCase =
        GetItemDetailsUseCase(getItemsDomainRepo: getItemsDetailsDomainRepo);
    var res = await getItemDetailsUseCase.call(id);
    res.fold((l) {
      emit(GetItemDetailsFailureState(failure: l));
    }, (r) {
      emit(GetItemDetailsSuccess());
      itemDetails = r;
    });
  }

  increment() {
    counter++;
    emit(Counter());
    emit(SwitchTabsToFixState());
  }

  String getPersonsWeight() {
    if (person != null) {
      if (person!.weight != null) {
        return person!.weight.toString();
      } else {
        return '0';
      }
    } else {
      return '0';
    }
  }

  currentTab() {
    return tabs[tab];
  }
}
