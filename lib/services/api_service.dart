import 'package:assignment_test/models/item_model.dart';
import 'package:dio/dio.dart';

class ApiService {

  static final Dio _dio = Dio();


  static Future<void> postLogin(
      {required String username, required String password}) async {
    _dio.interceptors.add(LogInterceptor(request: true, responseBody: true));

    try {
      final response = await _dio.post(
        'https://potatotech.mocklab.io.potato-co.com/api/login',
        data: {
          'username': username,
          'password': password,
        },
        options: Options(
          contentType: 'application/json', // Set content type
        ),
      );

      if (response.statusCode == 200) {
        // print('Response: ${response.data}');
        // Handle the response data here
      } else {
        // print('Error: ${response.statusCode}, ${response.statusMessage}');
        // Handle error
      }
    } catch (e) {
      // print('Error: $e');
      // Handle exception
    }
  }


  static Future<List<ItemModel>> getItems() async {
    try {
      final response =
      await _dio.get('https://potatotech.mocklab.io.potato-co.com/api/items');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((item) => ItemModel.fromJson(item)).toList();
      } else {
        return [];
        // throw Exception('Failed to load items');
      }
    } catch (e) {
      return [];
      // throw Exception('Failed to load items. Error: $e');
    }


  }

  static Future<ItemModel> getItemById(String itemId) async {
    try {
      final response = await _dio.get(
        'https://potatotech.mocklab.io.potato-co.com/api/item',
        queryParameters: {'id': itemId},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        return ItemModel.fromJson(data);
      } else {
        throw Exception('Failed to load item');
      }
    } catch (e) {
      throw Exception('Failed to load item. Error: $e');
    }
  }


}


