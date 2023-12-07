import 'dart:convert';

import 'package:assignment_test/models/item_detail.dart';
import 'package:assignment_test/models/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/constans.dart';
import '../models/item.dart';
import '../models/person.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
  int counter = 0;
  double weight = 0;

  static MainCubit get(context) => BlocProvider.of(context);

  incrementCounter() {
    counter++;
    emit(IncrementCounterState());
  }

  getIdealWeight(Person person) {
    if (person.isMale) {
      weight = person.height / person.age * 10;
    } else {
      weight = person.height / person.age * 9;
    }
    emit(IdealWeightState());
  }

  final Dio dio = Dio();
  List<Item> items = [];
  late ItemDetail itemDetail;
  late Login loginResponse;

  Future<void> fetchItems() async {
    try {
      if (kDebugMode) {
        // Load data from the mock file
        String jsonString = await rootBundle.loadString('assets/items.json');
        final List<dynamic> data = json.decode(jsonString);
        items = data.map((itemJson) => Item.fromJson(itemJson)).toList();
        print(items);
        emit(ItemsSuccessState());
      } else {
        // Make a real network request
        final response = await dio.get('$baseUrl/items');
        items = (response.data as List)
            .map((itemJson) => Item.fromJson(itemJson))
            .toList();
        emit(ItemsSuccessState());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      emit(ItemsErrorState());
    }
  }

  Future<void> fetchItemDetail(int itemId) async {
    try {
      if (kDebugMode) {
        // Load data from the mock file
        String jsonString =
            await rootBundle.loadString('assets/item_detail.json');
        final data = json.decode(jsonString);
        itemDetail = ItemDetail.fromJson(data);
        print(itemDetail);
        emit(ItemDetailSuccessState());
      } else {
        // Make a real network request
        final response = await dio.get(
          '$baseUrl/item',
          queryParameters: {'id': itemId},
        );
        itemDetail = ItemDetail.fromJson(response.data);
        emit(ItemDetailSuccessState());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      emit(ItemDetailErrorState());
    }
  }

  Future<void> login(String username, String password) async {
    try {
      if (kDebugMode) {
        // Load data from the mock file
        String jsonString = await rootBundle.loadString('assets/login.json');
        final data = json.decode(jsonString);
        loginResponse = Login.fromJson(data);
        print(loginResponse);
        emit(LoginSuccessState());
      } else {
        // Make a real network request
        final response = await dio.post(
          '$baseUrl/login',
          data: {
            'email': username,
            'password': password,
          },
        );
        loginResponse = Login.fromJson(response.data);
        emit(LoginSuccessState());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      emit(LoginErrorState());
    }
  }
}
