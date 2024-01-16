import 'dart:convert';
import 'package:assignment_test/Utils/constant.dart';
import 'package:dio/dio.dart';
import '../Api/api_client.dart';
import '../Models/Api/user.dart';
import '../Models/Requests/login_request_body.dart';
import '../Models/Responses/ErrorResponse.dart';
import '../Models/Responses/HttpResponse.dart';
import '../Models/Responses/StandardResponse.dart';
class AuthServices {
  Dio? _dio;

  AuthServices() {
    _dio = ApiClient.getDio();
  }

  Future<HttpResponse<User>> login(String userName, String password,
      {String? fcmToken}) async {
    try {
      LoginRequestBody loginRequestBody = LoginRequestBody(
          userName: userName, password: password, fcmToken: fcmToken);

      var loginBody = jsonEncode(loginRequestBody.toJson());
      final response = await _dio!.post(baseUrl+loginApi, data: loginBody);
      if (response.statusCode == 200) {
        User user = User.fromJson(json.decode(response.data)['data']); ///////

        return HttpResponse(
            isSuccess: true,
            data: user,
            message: "Login Successfully",
            responseCode: 200);
      } else {
        StandardResponse standardResponse =
        StandardResponse.fromJson(json.decode(response.data));
        return HttpResponse(
            isSuccess: true,
            message: standardResponse.message,
            responseCode: standardResponse.status);
      }
    } catch (e) {
      if (e is DioError) {
        if (e.message!.contains("SocketException")) {
          return HttpResponse(
              isSuccess: false,
              message: "Connection Failed",
              responseCode: 500);
        } else if (e.response != null) {
          if (e.response!.statusCode == 401) {
            return HttpResponse(
                isSuccess: false,
                message: "Your account has not been verified",
                responseCode: 401);
          } else if (e.response!.statusCode == 402) {
            ErrorResponse errorResponse =
            ErrorResponse.fromJson(json.decode(e.response!.data));

            return HttpResponse(
                isSuccess: false,
                message: errorResponse.error,
                responseCode: errorResponse.status);
          }
          StandardResponse standardResponse =
          StandardResponse.fromJson(json.decode(e.response!.data));

          return HttpResponse(
              isSuccess: false,
              message: standardResponse.message,
              responseCode: e.response!.statusCode);
        } else {
          return HttpResponse(
              isSuccess: false, message: (e.message), responseCode: 500);
        }
      } else {
        return HttpResponse(
            isSuccess: false, message: e.toString(), responseCode: 500);
      }
    }
  }

  Future<HttpResponse<User>> logout() async {
    try {
      final response = await _dio!.get(baseUrl+logoutApi);
      if (response.statusCode == 200) {
        return HttpResponse(
            isSuccess: true, message: "Logout Successfully", responseCode: 200);
      } else {
        StandardResponse standardResponse =
        StandardResponse.fromJson(json.decode(response.data));

        return HttpResponse(
            isSuccess: true,
            message: standardResponse.message,
            responseCode: standardResponse.status);
      }
    } catch (e) {
      if (e is DioError) {
        if (e.message!.contains("SocketException")) {
          return HttpResponse(
              isSuccess: false,
              message: "Connection Failed",
              responseCode: 500);
        } else if (e.response != null) {
          StandardResponse standardResponse =
          StandardResponse.fromJson(json.decode(e.response!.data));

          return HttpResponse(
              isSuccess: false,
              message: standardResponse.message,
              responseCode: 400);
        } else {
          return HttpResponse(
              isSuccess: false, message: (e.message), responseCode: 500);
        }
      } else {
        return HttpResponse(
            isSuccess: false, message: e.toString(), responseCode: 500);
      }
    }
  }

  Future<HttpResponse<User>> getUserData() async {
    try {
      var response = await _dio!.get(baseUrl+userDataApi);

      User? user;
      if (response.statusCode == 200) {
        user = User.fromJson(json.decode(response.data)['data']);

        return HttpResponse(isSuccess: true, data: user, responseCode: 200);
      } else {
        StandardResponse standardResponse =
        StandardResponse.fromJson(json.decode(response.data));

        return HttpResponse(
            isSuccess: false,
            message: standardResponse.message,
            responseCode: standardResponse.status);
      }
    } catch (e) {
      if (e is DioError) {
        if (e.message!.contains("SocketException")) {
          return HttpResponse(
              isSuccess: false,
              message: "Connection Failed",
              responseCode: 500);
        } else if (e.response != null) {
          return HttpResponse(
              isSuccess: false,
              message: "Something Went Wrong",
              responseCode: 400);
        } else {
          return HttpResponse(
              isSuccess: false, message: (e.message), responseCode: 500);
        }
      } else {
        return HttpResponse(
            isSuccess: false, message: e.toString(), responseCode: 500);
      }
    }
  }
}