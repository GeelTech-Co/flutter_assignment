import 'package:dio/dio.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';
import '../model/login_request_body.dart';
import '../model/login_response.dart';


class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ServerFailure.fromDioError(error));
    }
  }

  Future<ApiResult<LoginResponse>> getUser() async {
    try {
      final response = await _apiService.getUser();
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ServerFailure.fromDioError(error));
    }
  }

  Future<ApiResult<LoginResponse>> logout() async {
    try {
      final response = await _apiService.logout();
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.failure(ServerFailure.fromDioError(error));
    }
  }


}