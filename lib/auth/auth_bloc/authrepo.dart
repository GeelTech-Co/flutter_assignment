// auth_repo.dart

import 'package:assignment_test/core/api/api_end_point.dart';
import 'package:dio/dio.dart';
import 'package:assignment_test/core/api/dio_api.dart';
import 'package:assignment_test/core/cache_helper.dart';

class AuthRepo {
  Future<Map<String, dynamic>> login({required String username, required String password}) async {
    try {
      // Make the login API request
      Response response = await DioHelper.postData(
        url: EndPoints.login,
        data: {"username": username, "password": password},
      );

      // Extract token from the response
      String token = response.data['data']['token'];

      // Save the token to cache
      CacheHelper.save(key: 'token', value: token);

      // Return the response data
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        // The request was made, but the server responded with an error
        throw {'message': 'Server error', 'statusCode': e.response!.statusCode};
      } else {
        // Something went wrong in setting up or sending the request
        throw {'message': 'Network error'};
      }
    } catch (e) {
      // Handle other exceptions
      throw {'message': 'Unknown error occurred.'};
    }
  }

  Future<Map<String, dynamic>> getUser() async {
    try {
      // Make the getUser API request
      Response response = await DioHelper.getData(url: EndPoints.getUser);

      // Return the response data
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        // The request was made, but the server responded with an error
        throw {'message': 'Server error', 'statusCode': e.response!.statusCode};
      } else {
        // Something went wrong in setting up or sending the request
        throw {'message': 'Network error'};
      }
    } catch (e) {
      // Handle other exceptions
      throw {'message': 'Unknown error occurred.'};
    }
  }

  Future<Map<String, dynamic>> logout() async {
    try {
      // Make the logout API request
      Response response = await DioHelper.getData(url: EndPoints.logout);

      // Clear the saved token from cache
      CacheHelper.remove(key: 'token');

      // Return the response data
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        // The request was made, but the server responded with an error
        throw {'message': 'Server error', 'statusCode': e.response!.statusCode};
      } else {
        // Something went wrong in setting up or sending the request
        throw {'message': 'Network error'};
      }
    } catch (e) {
      // Handle other exceptions
      throw {'message': 'Unknown error occurred.'};
    }
  }
}
