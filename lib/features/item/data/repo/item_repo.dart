import 'package:assignment_test/features/item/data/model/item_profile_response.dart';
import 'package:assignment_test/features/item/data/model/items_response.dart';
import 'package:dio/dio.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class ItemRepo {
  final ApiService _apiService;

  ItemRepo(this._apiService);



  Future<ApiResult<ItemsResponse>> getItems() async {
    try {
      final response = await _apiService.items();
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ServerFailure.fromDioError(error));
    }
  }

  Future<ApiResult<ItemProfileResponse>> getItemProfile(int id) async {
    try {
      final response = await _apiService.itemProfile(id);
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ServerFailure.fromDioError(error));
    }
  }
}