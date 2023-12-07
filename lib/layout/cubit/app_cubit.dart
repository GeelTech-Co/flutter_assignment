import 'package:assignment_test/models/item_model.dart';
import 'package:assignment_test/models/item_screen_model.dart';
import 'package:assignment_test/models/user_response_model.dart';
import 'package:assignment_test/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/model.dart';
import '../../shared/network/dio_helper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  late UserResponse userResponse;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void userLogin({
    required String username,
    required String password,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      emit(UserLoginLoadingState());
      DioHelper.postData(
        endPoint: AppConstants.loginEndpoint,
        data: {
          'username': username,
          'password': password,
        },
      ).then((value) {
        userResponse = UserResponse.fromJson(value.data);
        if (userResponse.status == 1 && value.statusCode == 200) {
          emit(UserLoginSuccessState(userResponse: userResponse));
        } else {
          emit(UserLoginFailedState(error: value.statusMessage.toString()));
        }
      }).catchError((error) {
        emit(UserLoginFailedState(error: error.toString()));
      });
    } else {
      emit(NotConnectedState());
    }
  }

  List<ItemModel> itemsList = [
    ItemModel(id: 1, name: 'item_1', price: 10.99),
    ItemModel(id: 2, name: 'item_2', price: 5.99),
    ItemModel(id: 3, name: 'item_3', price: 1.99),
  ];
  void getItems() {
    emit(ItemsLoadingState());
    DioHelper.getData(endPoint: AppConstants.itemsEndpoint).then((value) {
      //itemsList = (value.data as List).map((x) => ItemModel.fromJson(x)).toList(); //TODO uncomment after put real api
      emit(ItemsSuccessState());
    }).catchError((error) {
      emit(ItemsFailedState(error: error.toString()));
    });
  }

  ItemScreenModel itemScreenModel = ItemScreenModel(
    id: 1,
    imageUrl:
        'https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pass/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg',
    type: 'phone',
    related: [
      ItemModel(id: 2, name: 'item_2', price: 5.99),
      ItemModel(id: 3, name: 'item_3', price: 1.99),
      ItemModel(id: 3, name: 'item_3', price: 1.99),
      ItemModel(id: 3, name: 'item_3', price: 1.99),
      ItemModel(id: 3, name: 'item_3', price: 1.99),
      ItemModel(id: 3, name: 'item_3', price: 1.99),
    ],
  );
  void getItem(int itemId) {
    emit(ItemLoadingState());
    DioHelper.getData(
      endPoint: AppConstants.itemEndpoint,
      query: {'id': itemId.toString()},
    ).then((value) {
      emit(ItemSuccessState(itemScreenModel: ItemScreenModel.fromJson(value.data)));
    }).catchError((error) {
      emit(ItemFailedState(error: error.toString()));
    });
  }

  int counter = 0;
  void increaseCounter() {
    counter++;
    emit(CounterPlus());
  }

  Person? person = Human(25, 180);
  void getWeight() {
    person?.getIdealWeight();
    emit(CalculateWeight());
  }
}
