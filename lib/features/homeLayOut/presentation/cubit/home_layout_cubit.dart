import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/models/person.dart';
import 'package:assignment_test/features/homeLayOut/data/datasources/remot.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:assignment_test/features/homeLayOut/data/repositories/get_items_data_repo.dart';
import 'package:assignment_test/features/homeLayOut/data/repositories/login_data_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_items_domain_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/login_domain_repo.dart';
import 'package:assignment_test/features/homeLayOut/domain/usecases/get_items.dart';
import 'package:assignment_test/features/homeLayOut/domain/usecases/login_use_case.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/fix.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/items.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/login.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  int counter = 0;
  PersonModel? person;
  List<ItemsData> item = [];
  HomeLayoutCubit() : super(HomeLayoutInitial());
  List<Widget> tabs = [LoginTab(), ItemsTab(), FixTab()];
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
    emit(SwitchTabsToFixState());
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
      //print(l.message);
    }, (r) {
      emit(GetItemsSuccess());
      item.addAll(r);
    });
  }

  increment() {
    counter++;
    emit(Counter());
    emit(SwitchTabsToFixState());
  }

  currentTab() {
    return tabs[tab];
  }
}
