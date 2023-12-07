import 'package:assignment_test/core/network/error_message_model.dart';
import '../../../../core/app_const/app_const.dart';
import '../../../../core/network/mock_apis.dart';
import '../../../../core/server/server.dart';
import '../../domain/usecases/login_use_case.dart';
import '../models/item_data_model.dart';
import '../models/item_details_model.dart';
import '../models/user_model.dart';
import '../../../../core/network/api_constance.dart';

abstract class BasePotatoRemoteDataSource {
  Future<UserModel> login({required UserData userData});
  Future<ItemDataModel> getListItem();
  Future<ItemDetailsModel> getItemDetails();
}

class UserRemoteDataSource extends BasePotatoRemoteDataSource {
  @override
  Future<UserModel> login({required UserData userData}) async {
    final response = await MockApI.getPost(url: ApiConstance.login, data: {
      'username': userData.userName,
      'password': userData.password,
    });
    if (response.statusCode == 200) {
      var data = UserModel.fromJson(response.data as Map<String, dynamic>);
      return data;
    } else {
      throw ServerExtension(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<ItemDetailsModel> getItemDetails() async {
    final response = await MockApI.getData(
        url: ApiConstance.items, data: AppConst.listOfItemsDetails);
    if (response.statusCode == 200) {
      var data =ItemDetailsModel.fromJson(response.data as Map<String, dynamic>);
      return data;
    } else {
      throw ServerExtension(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<ItemDataModel> getListItem() async {
    final response = await MockApI.getData(
        url: ApiConstance.items, data: AppConst.istOfItems);
    if (response.statusCode == 200) {
      var data = ItemDataModel.fromJson(response.data );
      return data;
    } 
    else {
      throw ServerExtension(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
