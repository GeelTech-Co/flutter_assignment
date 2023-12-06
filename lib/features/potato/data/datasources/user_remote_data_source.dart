

import 'package:assignment_test/core/network/error_message_model.dart';

import '../../../../core/server/server.dart';
import '../../domain/usecases/litem_details_use_case.dart';
import '../../domain/usecases/login_use_case.dart';
import '../models/item_details_model.dart';
import '../models/item_model.dart';
import '../models/user_model.dart';
import 'package:dio/dio.dart';
import '../../../../core/network/api_constance.dart';

abstract class BasePotatoRemoteDataSource {
  Future<UserModel> login({required UserData userData});
  Future<ItemModel> getListItem();
  Future<ItemDetailsModel> getItemDetails({required ParameterId parameter});
}

class UserRemoteDataSource extends BasePotatoRemoteDataSource {
  @override
  Future<UserModel> login({required UserData userData}) async {
    final response = await Dio().post(ApiConstance.baseUrl, data: {
      'email': userData.userName,
      'password': userData.password,
    });

    if (response.statusCode == 200) {
      var data = UserModel.fromJson(response.data as Map<String, dynamic>);
      print('Data Is ${response.data}');
      return data;
    } else  {
      throw ServerExtension(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
      
    }
  }
  
  @override
  Future<ItemDetailsModel> getItemDetails({required ParameterId parameter}) {
    // TODO: implement getItemDetails
    throw UnimplementedError();
  }
  
  @override
  Future<ItemModel> getListItem() {
    // TODO: implement getListItem
    throw UnimplementedError();
  }
}
