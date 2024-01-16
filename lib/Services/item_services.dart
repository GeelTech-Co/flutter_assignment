import 'dart:convert';
import 'package:assignment_test/Api/item_details.dart';
import 'package:assignment_test/Utils/constant.dart';
import 'package:dio/dio.dart';
import '../Api/api_client.dart';
import '../Models/Api/items_list.dart';
import '../Models/Api/user.dart';
import '../Models/Requests/login_request_body.dart';
import '../Models/Responses/ErrorResponse.dart';
import '../Models/Responses/HttpResponse.dart';
import '../Models/Responses/StandardResponse.dart';
class ItemServices {
  Dio? _dio;

  ItemServices() {
    _dio = ApiClient.getDio();
  }

  Future<HttpResponse<List<Items>>> getItems() async {
    try {
      final response = await _dio!.get(baseUrl+itemsListApi);

      List<Items> items = [];
      if (response.statusCode == 200) {
        Iterable list = json.decode(response.data)['data'];

        items = list.map((model) => Items.fromJson(model)).toList();

        return HttpResponse(isSuccess: true, data: items, responseCode: 200);
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
        }  else if (e.response != null) {
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

  Future<HttpResponse<ItemDetails>> getItemDetails(int?itemId) async {
    try {
      var response = await _dio!.get('${baseUrl+itemsDetailsApi}/$itemId');

      ItemDetails? itemDetails;
      if (response.statusCode == 200) {
        itemDetails = ItemDetails.fromJson(json.decode(response.data)['data']);

        return HttpResponse(isSuccess: true, data: itemDetails, responseCode: 200);
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